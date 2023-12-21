#include <a_samp>
#include <YSI\y_hooks>

#define             DIALOG_BANNED               	(9335)
#define             DIALOG_BANNED_TIME          	(9336)
#define             DIALOG_BANNED_LYDO              (9337)
#define             DIALOG_XACNHAN_BANNED           (9338)


new BannedTimer[MAX_PLAYERS];


CMD:ban(playerid, params[]) {
    if(gettime() < BannedTimer[playerid])
	{
	    SendClientMessageEx(playerid, COLOR_WHITE, "Spam");
		return 1;
	}
	if(PlayerInfo[playerid][pAdmin] >= 2) {
	    new string[1280], playername[MAX_PLAYER_NAME];
		if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /ban [Player Name]");
		new giveplayerid = ReturnUser(playername);
		if(IsPlayerConnected(giveplayerid)) {
			if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
			{
				format(string, sizeof(string), "AdmCmd: %s da bi kick ra khoi may chu, ly do: Co danh /ban mot Admin cap cao.", GetPlayerNameEx(playerid));
				ABroadCast(COLOR_YELLOW,string,2);
				Kick(playerid);
				return 1;
			}else {
			    new name[128];
				GetPlayerName(giveplayerid, name, sizeof(name));
				format(PlayerInfo[playerid][pNamePlayerBanned], 128, "%s", name);
                ShowPlayerDialog(playerid, DIALOG_BANNED, DIALOG_STYLE_LIST, "Vui long chon Form Banned", "Banned thoi gian\nBanned vinh vien", "Dong y", "");
                return 1;
			}
		}else {
		    if(strlen(playername) > 3) {
				format(PlayerInfo[playerid][pNamePlayerBanned], 128, "%s", playername);
	            ShowPlayerDialog(playerid, DIALOG_BANNED, DIALOG_STYLE_LIST, "Vui long chon Form Baned", "Banned thoi gian\nBanned vinh vien", "Dong y", "");
	            return 1;
            }else SendClientMessageEx(playerid, COLOR_GREY, "Ten nhan vat ban muon banned khong hop le!");
		}
	}else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the su dung lenh nay.");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DIALOG_BANNED && response == 1) {
		if(listitem == 0) { // BANNED TIME     
            new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
		    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str3, sizeof(str), "    {ff0000}>{FFFFFF} IC Banned : {ff0000}%s.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str4, sizeof(str), "    {ff0000}>{FFFFFF} Hinh thuc banned : {ff0000}%s", "Banned time");
		    format(str5, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str6, sizeof(str), "{ff0000}(*){FFFFFF} Neu da chac chan banned nguoi choi {ff0000}%s{FFFFFF} ban vui long nhap {ff0000}so gio{FFFFFF} banned vao ben duoi.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6);
		    format(name, sizeof(name), "{00ff00}Banned Time{FFFFFF}");
			ShowPlayerDialog(playerid, DIALOG_BANNED_TIME, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
            
            return 1;
		}
		
		if(listitem == 1) { // BANNED FOREVER
            new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
		    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str3, sizeof(str), "    {ff0000}>{FFFFFF} IC Banned : {ff0000}%s.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str4, sizeof(str), "    {ff0000}>{FFFFFF} Hinh thuc banned : {ff0000}%s", "Banned vinh vien");
		    format(str5, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str6, sizeof(str), "{ff0000}(*){FFFFFF} Neu da chac chan banned nguoi choi {ff0000}%s{FFFFFF} ban vui long nhap {ff00ff}ly do{FFFFFF} banned vao ben duoi.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6);
		    format(name, sizeof(name), "{00ff00}Banned V.v{FFFFFF}");
			ShowPlayerDialog(playerid, DIALOG_BANNED_LYDO, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
            return 1;
		}
	}
	
	if(dialogid == DIALOG_BANNED_TIME && response == 1) {
		new time = strval(inputtext);
		if(time > 0 && time < 999) {
		    PlayerInfo[playerid][pTimeBannedPlayer] = time;
		    new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], name[1280];
		    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str3, sizeof(str), "    {ff0000}>{FFFFFF} IC Banned : {ff0000}%s.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str4, sizeof(str), "    {ff0000}>{FFFFFF} Hinh thuc banned : {ff0000}%s", "Banned time");
		    format(str5, sizeof(str), "    {ff0000}>{FFFFFF} So gio banned : {ff0000}%s gio", number_format(time));
		    format(str6, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str7, sizeof(str), "{ff0000}(*){FFFFFF} Neu da chac chan banned nguoi choi {ff0000}%s{FFFFFF} ban vui long nhap {ff00ff}ly do{FFFFFF} banned vao ben duoi.", PlayerInfo[playerid][pNamePlayerBanned]);
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6,str7);
		    format(name, sizeof(name), "{00ff00}Banned Time{FFFFFF}");
			ShowPlayerDialog(playerid, DIALOG_BANNED_LYDO, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
            return 1;
		}else SendClientMessageEx(playerid, COLOR_GRAD1, "[!] Time banned ban nhap khong hop le, vui long thu lai.");
	}
	
	if(dialogid == DIALOG_BANNED_LYDO && response == 1) {
	    if(response == 1) {
			format(PlayerInfo[playerid][pLyDoBannedPlayer], 128, "%s", inputtext);
			ShowXacNhanBanned(playerid);
		}
		else {
		    SendClientMessageEx(playerid, COLOR_GRAD1, "Ban da huy bo viec banned.");
		    PlayerInfo[playerid][pTimeBannedPlayer] = 0;
		}
	}
	
	if(dialogid == DIALOG_XACNHAN_BANNED) {
	    if(response == 1)
        	Banned(playerid);
        else {
		    SendClientMessageEx(playerid, COLOR_GRAD1, "Ban da huy bo viec banned.");
		    PlayerInfo[playerid][pTimeBannedPlayer] = 0;
		}
	}
	return 1;
}

stock ShowXacNhanBanned(playerid) {
	if(PlayerInfo[playerid][pTimeBannedPlayer] > 0) {
		new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], name[1280];
	    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
	    format(str3, sizeof(str), "    {ff0000}>{FFFFFF} IC Banned : {ff0000}%s.", PlayerInfo[playerid][pNamePlayerBanned]);
	    format(str4, sizeof(str), "    {ff0000}>{FFFFFF} Hinh thuc banned : {ff0000}%s", "Banned time");
	    format(str5, sizeof(str), "    {ff0000}>{FFFFFF} So gio banned : {ff0000}%s gio", number_format(PlayerInfo[playerid][pTimeBannedPlayer]));
	    format(str6, sizeof(str), "    {ff0000}>{FFFFFF} Ly do banned : {ff0000}%s", PlayerInfo[playerid][pLyDoBannedPlayer]);
	    format(str7, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
	    format(str8, sizeof(str), "{ff0000}(*){FFFFFF} Luu y:\n   + Neu nguoi choi {ff0000}%s{FFFFFF} co thoat, may chu se tu dong banned nguoi choi nay\n   + De tranh xay ra su nham lan, ban se co them mot lan xac nhan banned nua!\n   + Vi mot may chu chat luong, ae Administrator han che sai lam!", PlayerInfo[playerid][pNamePlayerBanned]);
	    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6,str7,str8);
	    format(name, sizeof(name), "{00ff00}Banned Time{FFFFFF}");
		ShowPlayerDialog(playerid, DIALOG_XACNHAN_BANNED, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	}
	else {
		new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], name[1280];
	    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
	    format(str3, sizeof(str), "    {ff0000}>{FFFFFF} IC Banned : {ff0000}%s.", PlayerInfo[playerid][pNamePlayerBanned]);
	    format(str4, sizeof(str), "    {ff0000}>{FFFFFF} Hinh thuc banned : {ff0000}%s", "Banned vinh vien");
	    format(str5, sizeof(str), "    {ff0000}>{FFFFFF} So gio banned : {ff0000}%s gio", number_format(999999));
	    format(str6, sizeof(str), "    {ff0000}>{FFFFFF} Ly do banned : {ff0000}%s", PlayerInfo[playerid][pLyDoBannedPlayer]);
	    format(str7, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
	    format(str8, sizeof(str), "{ff0000}(*){FFFFFF} Luu y:\n   + Neu nguoi choi {ff0000}%s{FFFFFF} co thoat, may chu se tu dong banned nguoi choi nay\n   + De tranh xay ra su nham lan, ban se co them mot lan xac nhan banned nua!\n   + Vi mot may chu chat luong, ae Administrator han che sai lam!", PlayerInfo[playerid][pNamePlayerBanned]);
	    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6,str7,str8);
	    format(name, sizeof(name), "{00ff00}Banned V.v{FFFFFF}");
		ShowPlayerDialog(playerid, DIALOG_XACNHAN_BANNED, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	}
	return 1;
}

stock Banned(playerid) {
    new giveplayerid = ReturnUser(PlayerInfo[playerid][pNamePlayerBanned]);
    new string[5000];
    if(PlayerInfo[playerid][pTimeBannedPlayer] != 0) {
		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
			{
				format(string, sizeof(string), "AdmCmd: %s has been auto-banned, reason: Trying to /ban a higher admin.", GetPlayerNameEx(playerid));
				ABroadCast(COLOR_YELLOW,string,2);
				SystemBan(playerid, "[System] (Attempting to ban a higher admin)");
				Kick(giveplayerid);
			}
			else
			{
		        new playerip[32];
				GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
				format(string, sizeof(string), "AdmCmd: %s (IP:%s) da bi khoa tai khoan (%s gio) boi %s, ly do: %s", PlayerInfo[playerid][pNamePlayerBanned], playerip, number_format(PlayerInfo[playerid][pTimeBannedPlayer]), GetPlayerNameEx(playerid), PlayerInfo[playerid][pLyDoBannedPlayer]);
				Log("logs/ban.log", string);

				Log("Banned.log", string);
				format(string, sizeof(string), "AdmCmd: %s da bi khoa tai khoan (%s gio) boi %s, ly do: %s", PlayerInfo[playerid][pNamePlayerBanned], number_format(PlayerInfo[playerid][pTimeBannedPlayer]), GetPlayerNameEx(playerid), PlayerInfo[playerid][pLyDoBannedPlayer]);
				SendClientMessageToAllEx(COLOR_LIGHTRED, string);

	            PlayerInfo[giveplayerid][pTimeBanned] = gettime();
				PlayerInfo[giveplayerid][pBanTime] = gettime()+3600*PlayerInfo[playerid][pTimeBannedPlayer];

				PlayerInfo[giveplayerid][pBanned] = 1;
				strcpy(PlayerInfo[giveplayerid][pBannedBy], GetPlayerNameEx(playerid), MAX_PLAYER_NAME);
				format(PlayerInfo[giveplayerid][pReasonBanned], 128, "%s", PlayerInfo[playerid][pLyDoBannedPlayer]);

                new ip[32];
				GetPlayerIp(giveplayerid,ip,sizeof(ip));
				AddBan(playerid, giveplayerid, PlayerInfo[playerid][pLyDoBannedPlayer]);
				MySQLBan(GetPlayerSQLId(giveplayerid),ip,PlayerInfo[playerid][pLyDoBannedPlayer],1,GetPlayerNameEx(playerid));
				SystemBan(giveplayerid, GetPlayerNameEx(giveplayerid));

				if(PlayerInfo[playerid][pAdmin] < 99999) {
					BannedTimer[playerid] = gettime()+15;
				}
				
				new dialogstring[512];
		        format(dialogstring, sizeof(dialogstring), "Ban da bi khoa tai khoan %s gio - Ly do: {00ffff}%s", number_format(PlayerInfo[playerid][pTimeBannedPlayer]), PlayerInfo[playerid][pLyDoBannedPlayer]);
		        ShowPlayerDialog(giveplayerid, 1, DIALOG_STYLE_MSGBOX, "Banned - Timer", dialogstring, "OK", "");

				SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);
				
				PlayerInfo[playerid][pTimeBannedPlayer] = 0;
			}
		}
		else
		{
			new query[15000], tmpName[24];
			new szMessage[1280], szMessage1[1280];

	        new Bantime, Timebanned;
	        Timebanned = gettime();
			Bantime = gettime()+3600*PlayerInfo[playerid][pTimeBannedPlayer];

			mysql_escape_string(PlayerInfo[playerid][pNamePlayerBanned], tmpName);

			format(query, sizeof(query), "UPDATE `accounts` SET `Band`=1 WHERE `Username`='%s' AND `AdminLevel` < 2 AND `PermBand` < 3", tmpName);
			mysql_function_query(MainPipeline, query, false, "OnBanPlayer", "i", playerid);

	        format(szMessage, sizeof(szMessage), "UPDATE `accounts` SET `BanTime` = %d, `TimeBanned` = %d, `GioBanned` = %d WHERE `Username`='%s'", Bantime, Timebanned, PlayerInfo[playerid][pTimeBannedPlayer], tmpName);
			mysql_function_query(MainPipeline, szMessage, false, "OnQueryFinish", "ii", SENDDATA_THREAD, tmpName);

			format(szMessage, sizeof(szMessage), "UPDATE `accounts` SET `BannedBy`='%s' WHERE `Username`='%s'", GetPlayerNameEx(playerid), tmpName);
			mysql_function_query(MainPipeline, szMessage, false, "OnQueryFinish", "ii", SENDDATA_THREAD, tmpName);

			format(szMessage1, sizeof(szMessage1), "UPDATE `accounts` SET `ReasonBanned`='%s' WHERE `Username`='%s'", PlayerInfo[playerid][pLyDoBannedPlayer], tmpName);
			mysql_function_query(MainPipeline, szMessage1, false, "OnQueryFinish", "ii", SENDDATA_THREAD, tmpName);

			SetPVarString(playerid, "OnBanPlayer", tmpName);
			SetPVarString(playerid, "OnBanPlayerReason", PlayerInfo[playerid][pLyDoBannedPlayer]);
			
			new ip[32];
			GetPlayerIp(giveplayerid,ip,sizeof(ip));
			AddBan(playerid, giveplayerid, PlayerInfo[playerid][pLyDoBannedPlayer]);
			MySQLBan(GetPlayerSQLId(giveplayerid),ip,PlayerInfo[playerid][pLyDoBannedPlayer],1,GetPlayerNameEx(playerid));
			SystemBan(giveplayerid, GetPlayerNameEx(giveplayerid));

			format(string,sizeof(string),"Attempting to ban %s...", tmpName);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);

			if(PlayerInfo[playerid][pAdmin] < 99999) {
				BannedTimer[playerid] = gettime()+15;
			}
			
            PlayerInfo[playerid][pTimeBannedPlayer] = 0;
		}
	}
	else {
	    new playerip[32];
		GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
		format(string, sizeof(string), "AdmCmd: %s(IP:%s) da bi khoa tai khoan vinh vien boi %s, ly do: %s", PlayerInfo[playerid][pNamePlayerBanned], playerip, GetPlayerNameEx(playerid), PlayerInfo[playerid][pLyDoBannedPlayer]);
		Log("logs/ban.log", string);

		Log("Banned.log", string);
		format(string, sizeof(string), "AdmCmd: %s da bi khoa tai khoan vinh vien boi %s, ly do: %s", PlayerInfo[playerid][pNamePlayerBanned], GetPlayerNameEx(playerid), PlayerInfo[playerid][pLyDoBannedPlayer]);
		SendClientMessageToAllEx(COLOR_LIGHTRED, string);

		PlayerInfo[giveplayerid][pBanned] = 1;
		strcpy(PlayerInfo[giveplayerid][pBannedBy], GetPlayerNameEx(playerid), MAX_PLAYER_NAME);
		format(PlayerInfo[giveplayerid][pReasonBanned], 128, "%s", PlayerInfo[playerid][pLyDoBannedPlayer]);

		StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
		
		new ip[32];
		GetPlayerIp(giveplayerid,ip,sizeof(ip));
		AddBan(playerid, giveplayerid, PlayerInfo[playerid][pLyDoBannedPlayer]);
		MySQLBan(GetPlayerSQLId(giveplayerid),ip,PlayerInfo[playerid][pLyDoBannedPlayer],1,GetPlayerNameEx(playerid));
		SystemBan(giveplayerid, GetPlayerNameEx(giveplayerid));

		SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);

		if(PlayerInfo[playerid][pAdmin] < 99999) {
			BannedTimer[playerid] = gettime()+15;
		}

		new dialogstring[512];
        format(dialogstring, sizeof(dialogstring), "Ban da bi khoa tai khoan vinh vien | Ly do: {00ffff}%s", PlayerInfo[playerid][pLyDoBannedPlayer]);
        ShowPlayerDialog(giveplayerid, 1, DIALOG_STYLE_MSGBOX, "Banned - Forever", dialogstring, "OK", "");
        
        PlayerInfo[playerid][pTimeBannedPlayer] = 0;
	}
}


stock ShowBanned(playerid){
    if(PlayerInfo[playerid][pBanTime] > 1 && PlayerInfo[playerid][pBanned] == 1 && (PlayerInfo[playerid][pBanTime] < gettime()) ) {
		SendClientMessage(playerid, COLOR_GREEN, "Tai khoan da duoc kich hoat mo khoa thanh cong" );
        PlayerInfo[playerid][pBanned] = 0;
        PlayerInfo[playerid][pBanTime] = 0;
        PlayerInfo[playerid][pTimeBanned] = 0;
	}
	if(PlayerInfo[playerid][pBanned] != 0 ){
	    if(PlayerInfo[playerid][pBanTime] == 0 && PlayerInfo[playerid][pTimeBanned] == 0) {
	        if(PlayerInfo[playerid][pReasonBanned] != 0 && PlayerInfo[playerid][pBannedBy] != 0){
			    new str[2460], str1[1280], name[1280];
				format(str1, sizeof(str), "{FF1818}Tai khoan da bi khoa !\n{4ED7FF}Ten nhan vat: {FFFFFF}%s\n{4ED7FF}Ly do Banned: {FFFFFF}%s\n{4ED7FF}Bi banned boi: {FFFFFF}%s\n{4ED7FF}Thoi gian Banned: {FF1818}999 Ngay \n\
				{4ED7FF}Neu ban nghi day la mot truong hop nham lan , hay nop don tai {00ff00}Forum.Gvrp.vn{4ED7FF} de duoc ho tro.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pReasonBanned], PlayerInfo[playerid][pBannedBy]);
			    format(str, sizeof(str), "%s", str1);
			    format(name, sizeof(name), "Banned");
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "SAMPVN", "");
				SetTimerEx("KickEx", 2000, 0, "i", playerid);
				return 1;
			}
			else{
			    new str[2460], str1[1280], name[1280];
				format(str1, sizeof(str), "{FF1818}Dia chi IP cua ban tam thoi da bi khoa'\n{4ED7FF}Ten nhan vat: {FFFFFF}%s\nIP: %s \n\
				{4ED7FF}Neu ban nghi day la mot truong hop nham lan , hay nop don tai {00ff00}Forum.Gvrp.vn{4ED7FF} de duoc ho tro.", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid));
			    format(str, sizeof(str), "%s", str1);
			    format(name, sizeof(name), "Banned");
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "SAMPVN", "");
				SetTimerEx("KickEx", 2000, 0, "i", playerid);
				return 1;
			}
		}else {
		    if(PlayerInfo[playerid][pReasonBanned] != 0 && PlayerInfo[playerid][pBannedBy] != 0){
			    new str[2460], str1[1280], name[1280];
			    
			    new datestring[32];
	        	datestring = date(PlayerInfo[playerid][pBanTime], 1);
			    
				format(str1, sizeof(str), "{FF1818}Tai khoan da bi khoa !\n{4ED7FF}Ten nhan vat: {FFFFFF}%s\n{4ED7FF}Ly do Banned: {FFFFFF}%s\n{4ED7FF}Bi banned boi: {FFFFFF}%s\n{4ED7FF}Thoi gian Banned: {FF1818}%s (%s gio)\n{4ED7FF}Thoi gian Unbanned: {FF1818}%s \n\
				{4ED7FF}Neu ban nghi day la mot truong hop nham lan , hay nop don tai {00ff00}Forum.Gvrp.vn{4ED7FF} de duoc ho tro.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pReasonBanned], PlayerInfo[playerid][pBannedBy], date(PlayerInfo[playerid][pTimeBanned], 1), number_format(PlayerInfo[playerid][pGioBanned]), datestring);
			    format(str, sizeof(str), "%s", str1);
			    format(name, sizeof(name), "Banned");
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "SAMPVN", "");
				SetTimerEx("KickEx", 2000, 0, "i", playerid);
				return 1;
			}
			else{
			    new str[2460], str1[1280], name[1280];
				format(str1, sizeof(str), "{FF1818}Dia chi IP cua ban tam thoi da bi khoa'\n{4ED7FF}Ten nhan vat: {FFFFFF}%s\nIP: %s \n\
				{4ED7FF}Neu ban nghi day la mot truong hop nham lan , hay nop don tai {00ff00}Forum.Gvrp.vn{4ED7FF} de duoc ho tro.", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid));
			    format(str, sizeof(str), "%s", str1);
			    format(name, sizeof(name), "Banned");
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "SAMPVN", "");
				SetTimerEx("KickEx", 2000, 0, "i", playerid);
				return 1;
			}
		}
	}
	return 1;
}