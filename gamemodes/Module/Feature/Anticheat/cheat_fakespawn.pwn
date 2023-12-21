#include <a_samp>
#include <YSI\y_hooks>

new BugAttempt[MAX_PLAYERS];



CMD:bugattempt(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1338) {
		if(BugAttempt[playerid] == 0) {
            BugAttempt[playerid] = 1;
            SendClientMessageEx(playerid, -1, "Ban da bat anti bugger thanh cong");
		}
		else {
		    BugAttempt[playerid] = 0;
		    SendClientMessageEx(playerid, -1, "Ban da tat anti bugger thanh cong");
		}
	}else SendClientMessageEx(playerid, -1, "Ban khong the su dung lenh nay!");
	return 1;
}


public OnPlayerBugAttempt(playerid, bugcode)
{
	if(gPlayerLogged{playerid} != 0) {
		if(GetPVarInt(playerid, "spam8") == 0) {
			SetTimerEx("spam7", 5000, 0, "d", playerid);
			SetPVarInt( playerid, "spam8", 1);

			new cheatname[1280];
			switch(bugcode) {
				case 0: cheatname = "AFK Ghost";
				case 2: cheatname = "Fake Spawn";
				case 1: cheatname = "NPC spoof";
				case 3: cheatname = "Fake connect";
				case 4: cheatname = "CJ Run";
			}
			if(bugcode == 0 || bugcode == 3) {
                if(PlayerInfo[playerid][pAdmin] == 0) {
				    new string[256];
				    format(string, sizeof(string), "[GVRP-AC] %s (ID: %d) da bi kick | Reason: AFk-Ghost", GetPlayerNameEx(playerid), playerid);
				    ABroadCast(COLOR_LIGHTRED, string);
				    print(string);
				    KickEx(playerid);
				}
			}
		}
	}
	return 1;
}