#include <a_samp>
#include <YSI\y_hooks>


new DCC_Channel:Administrator;

hook OnGameModeInit() {
    Administrator = DCC_FindChannelById("1137803779660591264");
    return 1;
}

DCMD:dsadmin(user, channel, params[])
{
    if(channel != Administrator) return DCC_SendChannelMessage(channel, "[ERROR] Ban khong o khu vuc quan ly server , khong the dung lenh nay!");

	new Cache:Result,LastLogin[255],pNameget[60],vzstr[15000];
	new count,NameAdmin[500];
	Result = mysql_query(MainPipeline, "SELECT `LastLogin`, `Username`, `AdminLevel` FROM `accounts` WHERE `AdminLevel` >= 2");
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows(); i++)
		{
			cache_get_field_content(i, "Username", pNameget);
			cache_get_field_content(i, "LastLogin", LastLogin);
			count = cache_get_field_content_int(i, "AdminLevel");
			if(count == 2) format(NameAdmin, 500, "Admin 2");
			else if(count == 3) format(NameAdmin, 500, "Admin 3");
			else if(count == 4) format(NameAdmin, 500, "Admin 4");
			else if(count == 1337) format(NameAdmin, 500, "Admin 1337");
			else if(count == 1338) format(NameAdmin, 500, "Admin 1338");
			else if(count == 1339) format(NameAdmin, 500, "Admin 1339");
			else if(count == 9999) format(NameAdmin, 500, "Admin 9999");
			else if(count == 99999) format(NameAdmin, 500, "BOSS");
			format(vzstr, 15000, "```%s\n%d. Name: %s, Administrator: %s, Lan dang nhap: %s```", vzstr, i, pNameget, NameAdmin, LastLogin);
		}
	}
	else
	{
		return DCC_SendChannelMessage(channel, "Khong xu ly duoc du lieu");
	}
	cache_delete(Result);
 	new string[1280];
	format(string,sizeof(string), vzstr);
    DCC_SendChannelMessage(channel, string);
	return 1;
}
