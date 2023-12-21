#include <a_samp>
#include <YSI\y_hooks>

hook OnPlayerUpdate(playerid)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
 	{
 	    if(zombieevent == 0)
		{
	  		if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
	  		{
				if(EnterSafeZones[playerid] < 0)
	            {
	            	if(!IsACop(playerid) || PlayerInfo[playerid][pAdmin] >= 2)
					{
						if(IsPlayerMobile(playerid))
		                {
		                	SendClientMessage(playerid, COLOR_WHITE, "{00ff00}Ban da vao ben trong khu vuc an toan.");
		                }
		                else
		                {
							SetTimerEx("loadsz", 100,0,"i",playerid);
							SetPVarInt(playerid, "entersz", 1);
						}
						SetPlayerArmedWeapon(playerid,0);
						EnterSafeZones[playerid] = Sz;
					}
					else
					{
						SetPlayerArmedWeapon(playerid,1);
					} 
	                break;
	            }
	            else SetPlayerArmedWeapon(playerid, 0);
	  		}
	  		if(Sz == EnterSafeZones[playerid] && EnterSafeZones[playerid] >= 0)
	        {
	            if(!IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
	            {
	            	if(IsPlayerMobile(playerid))
	                {
	                	SendClientMessage(playerid, COLOR_WHITE, "{ffff00}Ban da ra khoi khuc vuc an toan.");
						EnterSafeZones[playerid] = -1;
		                SetPlayerArmedWeapon(playerid,1);
	            	}
	            	else
	            	{
		                EnterSafeZones[playerid] = -1;
		                SetPlayerArmedWeapon(playerid,1);
						SetPVarInt(playerid, "exitsz", 1);
						SetTimerEx("exitsz", 100,0,"i",playerid);
	            	}
	            }
	            break;
	        }
        }
 	}
	return 1;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
{
    if(issuerid != INVALID_PLAYER_ID)
	{
	    if(zombieevent == 0)
		{
		    for(new Sz; Sz < MAX_SZ; Sz++)
			{
				if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
				{
					if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
					{
				        if(GetPlayerState(issuerid) == PLAYER_STATE_DRIVER)
				        {
				            if(weaponid == 49 || weaponid == 50)
				            {
				                new Float:x, Float:y, Float:z, string[128];
				                GetPlayerPos(issuerid, x, y, z);
				                SetPlayerPos(issuerid, x, y, z + 5);
								SendClientMessage(issuerid, COLOR_YELLOW, "Khong duoc tan cong trong khu an toan,.");
								GameTextForPlayer(issuerid, "~r~KHONG CR NGUOI KHAC", 5000, 3);
					            ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
								return 1;
							}
						}
					}
				}
			}
		}
	}
	return 1;
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
    {
    	new Float:php;
		if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
		{
		    if(weaponid != 0)
	        {
	     		GameTextForPlayer(playerid, "~r~SAFEZONE", 2000, 3);
	      		TogglePlayerControllable(playerid, 0);
	      		SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
				GetPlayerHealth(playerid,php);
				SetPlayerHealth(playerid, php-amount*2);

				GetPlayerHealth(damagedid,php);
				SetPlayerHealth(damagedid, php);

				AntiSafeZone[playerid] += 1;
				SendClientMessage(playerid, COLOR_GRAD2, "{00ffff}Ban dang no sung trong khu an toan , ban bi 1 lan canh cao'");
				SendClientMessage(playerid, COLOR_GRAD2, "{00ffff}Neu ban no sung them lan nua , ban se bi chet!");

				if(AntiSafeZone[playerid] == 3)
				{
					new attackercc[MAX_PLAYER_NAME];
					GetPlayerName(damagedid, attackercc, sizeof (attackercc));
				    new safe[1280];
				    format(safe, sizeof(safe), "[SAFEZONE] Ban da chet khi co gang gay sat thuong cho %s.", attackercc);
				    SendClientMessage(playerid, COLOR_LIGHTRED, safe);

                    AntiSafeZone[playerid] = 0;
                    SetPlayerHealth(playerid, 0);
			    }
			}
			else {
			    GameTextForPlayer(playerid, "~r~SAFEZONE", 2000, 3);
	      		TogglePlayerControllable(playerid, 0);
	      		SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
				GetPlayerHealth(playerid,php);
				SetPlayerHealth(playerid, php-amount*2);

				GetPlayerHealth(damagedid,php);
				SetPlayerHealth(damagedid, php);
			}
  		}
  		if(!IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
		{
  			if(IsPlayerInRangeOfPoint(damagedid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
  			{
  			    if(!IsACop(playerid) && pTazer{playerid} == 0 || !IsAMedic(playerid))
  			    {
	       			GameTextForPlayer(playerid, "~r~SAFEZONE - GVRP", 2000, 3);
			       	TogglePlayerControllable(playerid, 0);
			       	SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
				    GetPlayerHealth(playerid,php);
				    SetPlayerHealth(playerid,php-70);

				    GetPlayerHealth(damagedid,php);
					SetPlayerHealth(damagedid, php);
					if(SafeZoneInfo[Sz][szSize] > 50) {
						AntiSafeZone[playerid] += 1;
						SendClientMessage(playerid, COLOR_GRAD2, "{00ffff}Ban dang no sung trong khu an toan , ban bi 1 lan canh cao'");
						SendClientMessage(playerid, COLOR_GRAD2, "{00ffff}Neu ban no sung them lan nua , ban se bi chet!");

						if(AntiSafeZone[playerid] == 3)
						{
							new attackercc[MAX_PLAYER_NAME];
							GetPlayerName(damagedid, attackercc, sizeof (attackercc));
						    new safe[1280];
						    format(safe, sizeof(safe), "[SAFEZONE] Ban da chet khi co gang gay sat thuong cho %s.", attackercc);
						    SendClientMessage(playerid, COLOR_LIGHTRED, safe);

		                    AntiSafeZone[playerid] = 0;
                            SetPlayerHealth(playerid, 0);
					    }
				    }
				}
 			}
  		}
 	}
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
    {
        if(zombieevent == 0)
		{
			if(IsPlayerInRangeOfPoint(killerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
   			{
			    if(IsPlayerConnected(killerid) && PlayerInfo[killerid][pAdmin] < 2 && GetPlayerState(killerid) == PLAYER_STATE_DRIVER)
				{
					switch(reason)
					{
						case 50:{
							if(IsAHelicopter(GetPlayerVehicleID(killerid)))
							{
							    SetPlayerHealth(killerid, 0);
							    SoLanBK[killerid]++;
							    new thongbao[1280];
							    format(thongbao, sizeof(thongbao), "[SAFE-ZONE] Ban vua moi BK chet (%s) trong khu an toan [%d/2]", GetPlayerNameEx(playerid), SoLanBK[playerid]);
							    SendClientMessage(killerid, COLOR_LIGHTBLUE, thongbao);
							    SendClientMessage(killerid, COLOR_LIGHTBLUE, "[SAFE-ZONE] Neu ban con BK tiep tuc , se di tu 30 phut");
							    if(SoLanBK[killerid] == 2)
							    {
								    new minutes = 30;
								    new string[1280];
								    ResetPlayerWeaponsEx(killerid);
									format(string, sizeof(string), "[SAFE-ZONE] Nguoi choi %s (ID %d) , da bi dua vao tu boi System , Ly do : BK Safezone", GetPlayerNameEx(killerid), killerid);
									SendClientMessageToAllEx(COLOR_LIGHTRED, string);
									StaffAccountCheck(killerid, GetPlayerIpEx(killerid));
									PhoneOnline[killerid] = 1;
									PlayerInfo[killerid][pJailTime] = minutes*5;
									SetPlayerInterior(killerid, 1);
									SetPlayerHealth(killerid, 0x7FB00000);
									SetPlayerFacingAngle(killerid, 0);
									new rand = random(sizeof(OOCPrisonSpawns));
									SetPlayerPos(killerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
									PlayerInfo[killerid][pVW] = 0;
									SetPlayerVirtualWorld(killerid, 0);
									format(string, sizeof(string), "Ban da bi dua vao tu %d phut voi , Ly do : BK Safezone [2/2]", minutes);
									SendClientMessage(killerid, COLOR_LIGHTBLUE, string);
									format(PlayerInfo[killerid][pPrisonedBy], 24, "SYSTEM SAFEZONE");
									format(PlayerInfo[killerid][pPrisonReason], 128, "[OOC][SJAIL] BK Safezone");
									SetPlayerColor(killerid, TEAM_APRISON_COLOR);
								}
							}
						}
					}
				}
			}
		}
	}
	return 1;
}
