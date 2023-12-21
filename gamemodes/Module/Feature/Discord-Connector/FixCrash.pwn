#include <a_samp>
#include <YSI\y_hooks>
#include <discord-connector>



new DCC_Channel:crashgame;
new TimeFix;


hook OnGameModeInit()
{
    crashgame = DCC_FindChannelById("1139860050739998770");
    return 1;
}

DCMD:crash(user, channel, params[])
{
    if(channel != crashgame) return DCC_SendChannelMessage(channel, "```Vui long truy cap dung kenh de su dung lenh```");

    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, verifyRole, hasRole);

   	if(!hasRole)
   	{
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }

	else 
	{
		new string[128], name[MAX_PLAYER_NAME];
		if(sscanf(params, "s[124]", name)) return DCC_SendChannelMessage(channel, "```crash [ingame]```"); 
        new giveplayerid = ReturnUser(name);


        if(IsPlayerConnected(giveplayerid)) 
        {
		    format(string,sizeof(string),"```Tai khoan %s dang hoat dong vui long thoat.```", name);
	    	DCC_SendChannelMessage(channel, string);
	    	return 1;
		}

		else if(cache_num_rows(MainPipeline))
		{
			new query[128], tmpName[24];
			mysql_escape_string(name, tmpName);

			new stringz[1280];
			format(stringz, sizeof(stringz),"Tai khoan %s khong ton tai.", name);
			DCC_SendChannelMessage(channel, stringz);

			format(query,sizeof(query),"SELECT * FROM `accounts` WHERE `Username` = '%s'", tmpName);
			mysql_function_query(MainPipeline, query, false, "OnPlayerAccount", "%s", name);
		}

		else if(gettime() < TimeFix)
		{
			new strc[1280];
	        format(strc,sizeof(strc),"```Ban phai doi %d giay sau moi duoc su dung lenh tiep tuc.```", TimeFix - gettime());
	        DCC_SendChannelMessage(channel, strc);
		}

		else 
		{
			new tmpName[24], query[512];
			mysql_escape_string(name, tmpName);


			format(string, sizeof(string), "```Tai khoan %s da fix bug thanh cong```", tmpName);
			DCC_SendChannelMessage(channel, string);

			format(query,sizeof(query),"UPDATE `accounts` SET `SPos_x` = '%0.2f', `SPos_y` = '%0.2f', `SPos_z` = '%0.2f', `SPos_r` = '%0.2f' WHERE `Username` = '%s'", 1810.39, -1601.15, 13.54, 0, tmpName);
			mysql_function_query(MainPipeline, query, false, "OnCrashZoneAccountDiscord", "s", tmpName);
			TimeFix = gettime() + (60 * 300); // bat dau tu luc fix bug
			return 1;
		}
	}
}

