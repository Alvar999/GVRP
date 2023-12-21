#include <a_samp>
#include <YSI\y_hooks>
#include <discord-connector>

new DCC_Channel:bangrell;
new DCC_Guild:guildName;
new DCC_Role:verifyRole;

hook OnGameModeInit()
{
    bangrell = DCC_FindChannelById("1138076935642169384");
    guildName = DCC_FindGuildById("1087917827454935152");
    verifyRole = DCC_FindRoleById("1138510927109574697");
    return 1;
}

hook OnPlayerSpawn(playerid) {
	ThongBaoKichHoat(playerid);
	return 1;
}

stock ThongBaoKichHoat(playerid) {
    if(PlayerInfo[playerid][pVerified] == 0) {
        new str[2460], str1[1280], str3[1280], sss[1280];
        format(str1, sizeof(str), "{ff0000}Ban chua xac minh vui long truy cap discord de xac minh.");
	    format(str3, sizeof(str), "{0099ff}Discord : {00ff00}https://discord.gg/BengBCRYyW{ff0000} de xac minh tai khoan.");
	    format(str, sizeof(str), "%s\n%s", str1,str3);
	    format(sss, sizeof(sss), "Verify - Discord");
		Dialog_Show(playerid, DIALOG_KICHHOAT, DIALOG_STYLE_MSGBOX, sss, str, "Yes", "");
	}
	return 1;
}

CMD:setkichhoat(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], playername[MAX_PLAYER_NAME];
		if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /setkichhoat [Player Name]");

	    new giveplayerid = ReturnUser(playername);
		if(IsPlayerConnected(giveplayerid))
		{
		    new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "[ACTIVE EMAIL]: %s da kich hoat tai khoan cho %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			Log("logs/kichhoattaikhoan.log", string);
			
			format(string, sizeof(string), "[ACTIVE EMAIL]: %s da kich hoat tai khoan cho %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			PlayerInfo[giveplayerid][pVerified] = 1;
		}
		else
		{
			new query[128], tmpName[24];
			mysql_escape_string(playername, tmpName);
			format(query, sizeof(query), "UPDATE `accounts` SET `Verified`=1 WHERE `Username`='%s'", tmpName);
			mysql_function_query(MainPipeline, query, false, "OfflineTake", "i", playerid);

	        SetPVarString(playerid, "OfflineTake", tmpName);

			format(string,sizeof(string),"He Thong Dang Tai Du Lieu Account %s...", tmpName);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
		}
	}
	return 1;
}


Dialog:DIALOG_KICHHOAT(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		Kick(playerid);
	}
	else
	{
		Kick(playerid);
	}
	return 1;
}



DCMD:verify(user, channel, params[])
{
	if(channel != bangrell) return DCC_SendChannelMessage(channel, "```[ERROR] Vui long truy cap dung kenh de su dung lenh nay.```");

	new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, verifyRole, hasRole);

   	if(hasRole){
        DCC_SendChannelMessage(channel, "```Tai khoan #Discord nay da duoc xac minh.```");
        return 1;
    }
	else {
		new name[MAX_PLAYER_NAME];
		if(sscanf(params, "s[124]", name)) return DCC_SendChannelMessage(channel, "```SU DUNG: !verify [ingame]```");
		new giveplayerid = ReturnUser(name);

		if(IsPlayerConnected(giveplayerid)) {
			new string[128];
		    format(string,sizeof(string),"```Tai khoan %s hien dang hoat dong, vui long dang xuat de xac minh.```", name);
	    	DCC_SendChannelMessage(channel, string);
	    	return 1;
		}
		else {
			new tmpName[24], query[512];
			mysql_escape_string(name, tmpName);

			new userid[21];
			DCC_GetUserId(user, userid, DCC_ID_SIZE);

			format(query,sizeof(query),"UPDATE `accounts` SET `Verified`=1 WHERE `Username` = '%s'", tmpName);
			mysql_function_query(MainPipeline, query, false, "OnVerifyAccountDiscord", "ss", userid, tmpName);
		}
	}
	return 1;
}

forward OnVerifyAccountDiscord(index[],name[]);
public OnVerifyAccountDiscord(index[],name[])
{
	new string[256];
	new DCC_User:userVerify;
	new namedis[DCC_USERNAME_SIZE];

	userVerify = DCC_FindUserById(index);
	DCC_GetUserName(userVerify, namedis, sizeof namedis);

	if(mysql_affected_rows(MainPipeline)) {
		format(string, sizeof(string), "```Ban da verify tai khoan %s thanh cong.```", name);
		DCC_SendChannelMessage(bangrell, string);

		DCC_AddGuildMemberRole(guildName, userVerify, verifyRole);
		
		format(string, sizeof(string), "Verify: Account Discord %s da kich hoat tai khoan %s thanh cong!", namedis, name);
		Log("logs/verify.log", string);
	}
	else {
		format(string, sizeof(string), "```Ten nhan vat %s khong ton tai hoac da duoc xac minh.```", name);
		DCC_SendChannelMessage(bangrell, string);
	}
	return 1;
}

