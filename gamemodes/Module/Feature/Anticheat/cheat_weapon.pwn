#include "ysi\y_hooks"
#include <a_samp>

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid)
{
	if(PlayerInfo[playerid][pConnectHours] < 2 && GetPVarInt(playerid, "IsInArena") == -1 && GetPVarInt( playerid, "EventToken" ) != 1 && GetPlayerSQLId(playerid) - 1)
	{
		if(weaponid == 1 || weaponid == 2 || weaponid == 3 || weaponid == 4 || weaponid == 5 || weaponid == 6 || weaponid == 7 || weaponid == 8 || weaponid == 8 || weaponid == 9 || weaponid == 16  ||  weaponid == 17  ||  weaponid == 18 || weaponid == 22 || weaponid == 23 || weaponid == 24 || weaponid == 25 || weaponid == 26 || weaponid == 27 || weaponid == 28 || weaponid == 29 || weaponid == 30 || weaponid == 31 || weaponid == 32 || weaponid == 33 || weaponid == 34 || weaponid == 35 || weaponid == 36 || weaponid == 37 || weaponid == 38 || weaponid == 39 || weaponid == 40 || weaponid == 41 || weaponid == 42)
		{
            	new string[1280];
            	format(string, sizeof(string), "[GVRP-AC]: %s (ID: %d) da bi kick vi hack weapon (%s).", GetPlayerNameEx(playerid), playerid, GetWeaponNameEx(weaponid));
            	ABroadCast(COLOR_LIGHTRED, string, 2);
            	SetPlayerHealth(damagedid, 100); 
            	KickEx(playerid);
            	return 0;
		}
	}

	if(GetPlayerWeapon(playerid) < 10 && GetPlayerWeapon(playerid) >= 0 && !ProxDetectorS(20.0, playerid, damagedid))
	{
		new string[128];
		SetPlayerHealth(damagedid, 100);
		format(string, sizeof(string), "[GVRP-AC] %s (ID %d) co the dang su dung hacking kill all .", GetPlayerNameEx(playerid), playerid);
		ABroadCast( COLOR_LIGHTRED, string, 2 );
		return 1;
	}


	if(PlayerInfo[playerid][pAdmin] == 0)
	{
		if(PlayerInfo[playerid][pLevel] <= 1 && GetPlayerSQLId(playerid) - 1 && PlayerInfo[playerid][pConnectHours] < 2)
		{
			if(weaponid >= 22 && weaponid <= 34)
			{
				new playerip[32], string[1240];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format(string, sizeof(string), "AdmCmd: %s(IP:%s) was banned by HACK VU KHI.", GetPlayerNameEx(playerid), playerip);
				Log("logs/ban.log", string);
				SendClientMessageEx(playerid, COLOR_WHITE, "The person is online and has been banned!");
				format(string, sizeof(string), "AdmCmd: %s da bi banned vi su dung HACK VU KHI", GetPlayerNameEx(playerid));
				SendClientMessageToAllEx(COLOR_LIGHTRED, string);
				PlayerInfo[playerid][pBanned] = 1;
				new ip[32];
				GetPlayerIp(playerid,ip,sizeof(ip));
				AddBan(playerid, playerid, "Hack vu khi");
				MySQLBan(GetPlayerSQLId(playerid),ip,"Hack vu khi",1,GetPlayerNameEx(playerid));
				format(string, sizeof(string), "Banned account (%s)", GetPlayerNameEx(playerid));
				SystemBan(playerid, string);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
		}
		if(weaponid == 38)
		{
			new playerip[32], string [1240];
			GetPlayerIp(playerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "AdmCmd: %s(IP:%s) was banned by HACK VU KHI.", GetPlayerNameEx(playerid), playerip);
			Log("logs/ban.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "The person is online and has been banned!");
			format(string, sizeof(string), "AdmCmd: %s da bi banned vi su dung HACK VU KHI", GetPlayerNameEx(playerid));
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			PlayerInfo[playerid][pBanned] = 1;
			new ip[32];
			GetPlayerIp(playerid,ip,sizeof(ip));
			AddBan(playerid, playerid, "Hack vu khi");
			MySQLBan(GetPlayerSQLId(playerid),ip,"Hack vu khi",1,GetPlayerNameEx(playerid));
			format(string, sizeof(string), "Banned account (%s)", GetPlayerNameEx(playerid));
			SystemBan(playerid, string);
			SetTimerEx("KickEx", 1000, 0, "i", playerid);
		}
	}	
	return 1;
}