#include <a_samp>
#include <YSI\y_hooks>

new ActorTienBan;

hook OnGameModeInit()
{
	ActorTienBan = CreateActor(23,-2072.3179,-2499.2393,30.6250,56.2775);
	ApplyActorAnimation(ActorTienBan, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	CreateDynamic3DTextLabel("{ffff00}<TRAO DOI TIEN BAN>{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de trao doi---",COLOR_YELLOW, -2072.3179,-2499.2393,30.6250+0.6,25.0);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, -2072.3179,-2499.2393,30.6250))
		{
			return Dialog_Show(playerid, DIALOG_DIRTYMONEY, DIALOG_STYLE_INPUT, "> Exchange Dirty Money", "Nhap so tien muon quy doi vao day:", "Select", "Cancel");
		}
	}
	return 1;
}

Dialog:DIALOG_DIRTYMONEY(playerid, response, listitem, inputtext[]) {
	if(response)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return Dialog_Show(playerid, DIALOG_DIRTYMONEY, DIALOG_STYLE_INPUT, "> Exchange Dirty Money", "Nhap so tien muon quy doi vao day:", "Select", "Cancel");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Dialog_Show(playerid, DIALOG_DIRTYMONEY, DIALOG_STYLE_INPUT, "> Exchange Dirty Money", "Nhap so tien muon quy doi vao day:", "Select", "Cancel");
		}
		new amount = strval(inputtext);
		if (amount > PlayerInfo[playerid][pDirtyMoney] || amount < 1)
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong du tien ban");
			return 1;
		}
		if(amount < 0 || amount > 1000000000) {
		    SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong du tien ban");
			return 1;
		}
		else {
			new tiennhan = amount * 10000;
			PlayerInfo[playerid][pDirtyMoney] -= amount;
			PlayerInfo[playerid][pCash] += tiennhan;

			new string[1280];
			format(string, sizeof(string), "Ban da doi %d tien ban thanh %d tien sach", amount, tiennhan);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			new stringlog[1280], ip[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			format(stringlog, sizeof(stringlog), "Player: %s [ID: %d] [IP: %s] da doi %d tien ban thanh %d tien sach", GetPlayerNameEx(playerid), playerid, ip,amount, tiennhan);
			Log("logs/dirtymoney.log", stringlog);
		}
    }
    return 1;
}