#include <a_samp>
#include <YSI\y_hooks>


new ActorBuySkin;


hook OnGameModeInit()
{
	ActorBuySkin = CreateActor(189, 1850.0396,-1583.1266,13.6417,191.0977);
	CreateDynamic3DTextLabel("{ffff00}<BUY SKIN>{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de mua trang phuc---",COLOR_YELLOW, 1850.0396,-1583.1266,13.6417, 10.0);
	ApplyActorAnimation(ActorBuySkin, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if(IsPlayerInRangeOfActor(playerid, ActorBuySkin, 2.0))
		{
			Dialog_Show(playerid, DIALOG_BUYSKIN, DIALOG_STYLE_INPUT, "> Buy Skin", "Vui long nhap ID skin cua ban: ", "Select", "Cancel");
		}
	}
	return 1;
}

Dialog:DIALOG_BUYSKIN(playerid, response, listitem, inputtext[]) 
{
	if(response)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return Dialog_Show(playerid, DIALOG_BUYSKIN, DIALOG_STYLE_INPUT, "> Buy Skin", "Vui long nhap ID skin cua ban: ", "Select", "Cancel");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Dialog_Show(playerid, DIALOG_BUYSKIN, DIALOG_STYLE_INPUT, "> Buy Skin", "Vui long nhap ID skin cua ban: ", "Select", "Cancel");
		}
		new chooseskin = strval(inputtext);
		if(chooseskin < 1 || chooseskin > 300) {
		    SendClientMessageEx(playerid, COLOR_GRAD2, "Skin khong lon hon 1 va be hon 300");
			return 1;
		}
		PlayerInfo[playerid][pModel] = chooseskin;
		SetPlayerSkin(playerid, PlayerInfo[playerid][pModel]);
		PlayerInfo[playerid][pCash] -= 80000;
		new string[1280];
		format(string, sizeof(string),"Ban da mua skin ID: %d voi gia 80,000$.", PlayerInfo[playerid][pModel]);
		SendClientMessageEx(playerid, COLOR_WHITE,string);
		new stringlog[1280], ip[32];
		GetPlayerIp(playerid, ip, sizeof(ip));
		format(stringlog, sizeof(stringlog), "Player: %s [ID: %d] [IP: %s] da mua ID SKin: %d voi gia 80,000$", GetPlayerNameEx(playerid), playerid, ip,PlayerInfo[playerid][pModel]);
		Log("logs/buyskin.log", stringlog);
	}
	return 1;
}
