#include <YSI\y_hooks>

#define POS_CHEBIENHAISAN 				154.1955,-1946.6185,5.3877
#define POS_GIAODICHHAISAN			 	1832.3156,-1621.5427,13.5469

//Job Variables
new 
	FishermenVehicles[10];

enum JobPosArray
{
	Float:PosX,
	Float:PosY,
	Float:PosZ,
	Type
}

new FishermenDropoffs[][JobPosArray] =
{
	{28.8772,-1855.7550,-0.4053},
	{-44.7036,-1937.2915,-0.5557},
	{-0.9730,-2095.4785,-0.4533},
	{93.3674,-2247.4373,-0.3838},
	{236.8307,-2189.3369,-0.5284},
	{291.9400,-2077.4048,-0.3439}
};


stock IsAFishermenBoat(carid)
{
	for(new v = 0; v < sizeof(FishermenVehicles); v++) {
	    if(carid == FishermenVehicles[v]) return 1;
	}
	return 0;
}

forward LoadFishing(playerid);
public LoadFishing(playerid)
{
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Quay tro lai ngon hai dang de kiem tra", "OK", "");
	gPlayerCheckpointStatus[playerid] = CHECKPOINT_RETURNFISHING;
	TogglePlayerControllable(playerid, 1);
	DeletePVar(playerid, "IsFrozen");
	SetPlayerCheckpoint(playerid, 151.9271,-1976.3397,-0.5249, 5);
	//Anti Teleport Fishermen
	SetPVarInt(playerid, "tpFishermenTimer", 10);
	SetTimerEx("AntiTeleportTimer", 1000, false, "ii", playerid, TYPE_TPFISHERMENTIMER);		
}

forward SeafoodProcessing(playerid);
public SeafoodProcessing(playerid)
{
	new string[128];
	TogglePlayerControllable(playerid, true);
	DeletePVar(playerid, "CheBienHaiSan");
	if(GetPVarInt(playerid, "ShrimpProcessing") >= 1)
	{
		new HaiSan = PlayerInfo[playerid][pShrimp];
		format(string, sizeof string, "Ban nhan duoc %d con tom", HaiSan);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", string, "OK", "");
		DeletePVar(playerid, "ShrimpProcessing");
		PlayerInfo[playerid][pShrimpProcessed] = HaiSan;
		PlayerInfo[playerid][pShrimp] = 0;
	}
	if(GetPVarInt(playerid, "SalmonProcessing") >= 1)
	{
		new HaiSan = PlayerInfo[playerid][pSalmon];
		format(string, sizeof string, "Ban nhan duoc %d ca hoi", HaiSan);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", string, "OK", "");
		DeletePVar(playerid, "SalmonProcessing");
		PlayerInfo[playerid][pSalmonProcessed] = HaiSan;
		PlayerInfo[playerid][pSalmon] = 0;
	}
	if(GetPVarInt(playerid, "TunaProcessing") >= 1)
	{
		new HaiSan = PlayerInfo[playerid][pTuna];
		format(string, sizeof string, "Ban nhan duoc %d ca ngu", HaiSan);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", string, "OK", "");
		DeletePVar(playerid, "TunaProcessing");
		PlayerInfo[playerid][pTunaProcessed] = HaiSan;
		PlayerInfo[playerid][pTuna] = 0;
	}
	if(GetPVarInt(playerid, "CrabProcessing") >= 1)
	{
		new HaiSan = PlayerInfo[playerid][pCrab];
		format(string, sizeof string, "Ban nhan duoc %d con cua", HaiSan);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", string, "OK", "");
		DeletePVar(playerid, "CrabProcessing");
		PlayerInfo[playerid][pCrabProcessed] = HaiSan;
		PlayerInfo[playerid][pCrab] = 0;
	}
	if(GetPVarInt(playerid, "LobsterProcessing") >= 1)
	{
		new HaiSan = PlayerInfo[playerid][pLobster];
		format(string, sizeof string, "Ban nhan duoc %d con tom hum", HaiSan);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", string, "OK", "");
		DeletePVar(playerid, "LobsterProcessing");
		PlayerInfo[playerid][pLobsterProcessed] = HaiSan;
		PlayerInfo[playerid][pLobster] = 0;
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	new string[512];
	if(response)
	{
		if(dialogid == DIALOG_CHEBIENHAISAN)
		{
			switch(listitem)
			{
				case 0: //Shrimp
				{
					if(PlayerInfo[playerid][pShrimp] <= 0) return SendClientMessage(playerid, -1, "Ban lam gi co hai san ma che bien!");
					SendClientMessage(playerid, -1, "Ban dang che bien Tom.");
					SetPVarInt(playerid, "ShrimpProcessing", 1);
					SetPVarInt(playerid, "CheBienHaiSan", 1);
					SetTimerEx("SeafoodProcessing", 10000, false, "i", playerid);
					GameTextForPlayer(playerid, "~g~~h~~h~~h~~h~Dang che bien", 10000, 3);
					TogglePlayerControllable(playerid, false);
					ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
				}
				case 1: //Salmon
				{
					if(PlayerInfo[playerid][pSalmon] <= 0) return SendClientMessage(playerid, -1, "Ban lam gi co hai san ma che bien!");
					SendClientMessage(playerid, -1, "Ban dang che bien Ca hoi.");
					SetPVarInt(playerid, "SalmonProcessing", 1);
					SetPVarInt(playerid, "CheBienHaiSan", 1);
					SetTimerEx("SeafoodProcessing", 10000, false, "i", playerid);
					GameTextForPlayer(playerid, "~g~~h~~h~~h~~h~Dang che bien", 10000, 3);
					TogglePlayerControllable(playerid, false);
					ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
				}
				case 2: //Tuna
				{
					if(PlayerInfo[playerid][pTuna] <= 0) return SendClientMessage(playerid, -1, "Ban lam gi co hai san ma che bien!");
					SendClientMessage(playerid, -1, "Ban dang che bien Ca ngu.");
					SetPVarInt(playerid, "TunaProcessing", 1);
					SetPVarInt(playerid, "CheBienHaiSan", 1);
					SetTimerEx("SeafoodProcessing", 10000, false, "i", playerid);
					GameTextForPlayer(playerid, "~g~~h~~h~~h~~h~Dang che bien", 10000, 3);
					TogglePlayerControllable(playerid, false);
					ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
				}
				case 3: //Crab
				{
					if(PlayerInfo[playerid][pCrab] <= 0) return SendClientMessage(playerid, -1, "Ban lam gi co hai san ma che bien!");
					SendClientMessage(playerid, -1, "Ban dang che bien Cua.");
					SetPVarInt(playerid, "CrabProcessing", 1);
					SetPVarInt(playerid, "CheBienHaiSan", 1);
					SetTimerEx("SeafoodProcessing", 10000, false, "i", playerid);
					GameTextForPlayer(playerid, "~g~~h~~h~~h~~h~Dang che bien", 10000, 3);
					TogglePlayerControllable(playerid, false);
					ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
				}
				case 4: //Lobster
				{
					if(PlayerInfo[playerid][pLobster] <= 0) return SendClientMessage(playerid, -1, "Ban lam gi co hai san ma che bien!");
					SendClientMessage(playerid, -1, "Ban dang che bien Tom hum.");
					SetPVarInt(playerid, "LobsterProcessing", 1);
					SetPVarInt(playerid, "CheBienHaiSan", 1);
					SetTimerEx("SeafoodProcessing", 10000, false, "i", playerid);
					GameTextForPlayer(playerid, "~g~~h~~h~~h~~h~Dang che bien", 10000, 3);
					TogglePlayerControllable(playerid, false);
					ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
				}
			}
		}
		if(dialogid == DIALOG_GIAODICHHAISAN)
		{
			switch(listitem)
			{
				case 0: //Shrimp
				{
					new Shrimp = PlayerInfo[playerid][pShrimpProcessed];
					if(Shrimp >= 1)
					{
						format(string, sizeof string, "Ban da ban %d Shrimp va nhan duoc $%d", Shrimp, Shrimp * 15000);
						ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen - Giao dich", string, "OK", "");
						GivePlayerCash(playerid, Shrimp * 15000);
						PlayerInfo[playerid][pShrimpProcessed] = 0;
					}
				}
				case 1: //Salmon
				{
					new Salmon = PlayerInfo[playerid][pSalmonProcessed];
					if(Salmon >= 1)
					{
						format(string, sizeof string, "Ban da ban %d Salmon va nhan duoc $%d", Salmon, Salmon * 15000);
						ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen - Giao dich", string, "OK", "");
						GivePlayerCash(playerid, Salmon * 15000);
						PlayerInfo[playerid][pSalmonProcessed] = 0;
					}
				}
				case 2: //Tuna
				{
					new Tuna = PlayerInfo[playerid][pTunaProcessed];
					if(Tuna >= 1)
					{
						format(string, sizeof string, "Ban da ban %d Tuna va nhan duoc $%d", Tuna, Tuna * 15000);
						ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen - Giao dich", string, "OK", "");
						GivePlayerCash(playerid, Tuna * 15000);
						PlayerInfo[playerid][pTunaProcessed] = 0;
					}
				}
				case 3: //Crab
				{
					new Crab = PlayerInfo[playerid][pCrabProcessed];
					if(Crab >= 1)
					{
						format(string, sizeof string, "Ban da ban %d Crab va nhan duoc $%d", Crab, Crab * 15000);
						ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen - Giao dich", string, "OK", "");
						GivePlayerCash(playerid, Crab * 15000);
						PlayerInfo[playerid][pCrabProcessed] = 0;
					}
				}
				case 4: //Lobster
				{
					new Lobster = PlayerInfo[playerid][pLobsterProcessed];
					if(Lobster >= 1)
					{
						format(string, sizeof string, "Ban da ban %d Lobster va nhan duoc $%d", Lobster, Lobster * 15000);
						ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen - Giao dich", string, "OK", "");
						GivePlayerCash(playerid, Lobster * 15000);
						PlayerInfo[playerid][pLobsterProcessed] = 0;
					}
				}
			}
		}
	}
	return 1;
}



hook OnGameModeInit()
{

	FishermenVehicles[0] =  AddStaticVehicleEx(453,140.9720,-1810.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[1] =  AddStaticVehicleEx(453,140.9720,-1830.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[2] =  AddStaticVehicleEx(453,140.9720,-1850.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[3] =  AddStaticVehicleEx(453,140.9720,-1870.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[4] =  AddStaticVehicleEx(453,140.9720,-1890.0840,-0.2200,180.0559,1,1,300); //Reefer

	FishermenVehicles[5] =  AddStaticVehicleEx(453,140.9720,-1910.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[6] =  AddStaticVehicleEx(453,140.9720,-1930.0840,-0.2200,180.0559,1,1,300); //Reefer
	FishermenVehicles[7] =  AddStaticVehicleEx(453,166.9218,-1900.1563,-0.3895,181.4977,1,1,300); //Reefer
	FishermenVehicles[8] =  AddStaticVehicleEx(453,166.9218,-1920.1563,-0.3895,181.4977,1,1,300); //Reefer

	CreateDynamic3DTextLabel("Fishermen Job\n{0796EA}/nhanviec{d31b15}\n/thuethuyen{ed8406}\n/nghiviec", -1, POS_FISHERMEN+0.5, 20.0);// Fishermen Job
	CreateActor(299, POS_FISHERMEN,119.7352);// Fishermen Job

	CreateDynamic3DTextLabel("Fishermen Job\n{0796EA}/giaodichhaisan{d31b15}", -1, POS_GIAODICHHAISAN+0.5, 20.0);// Fishermen Job
	CreateActor(299, POS_GIAODICHHAISAN,54.6809);// Fishermen Job

	CreateDynamic3DTextLabel("Fishermen Job\n{0796EA}/batca hoac /thaluoi{FFFFFF}", -1, 151.9271,-1976.3397,-0.5249+2, 20.0);// Fishermen Job
    CreateDynamicPickup(1239, 23, 151.9271,-1976.3397,-0.5249+2); // Fishermen Job

	CreateDynamic3DTextLabel("Fishermen Job\n{0796EA}/chebienhaisan{FFFFFF}", -1, POS_CHEBIENHAISAN, 20.0);// Fishermen Job
    CreateDynamicPickup(1239, 23, POS_CHEBIENHAISAN); // Fishermen Job
    return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
	if(gPlayerCheckpointStatus[playerid] != CHECKPOINT_NONE)
	{
		switch(gPlayerCheckpointStatus[playerid])
		{
			case CHECKPOINT_FISHING:
			{
				if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
				{
					SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec thuyen!");
					return 1;
				}
				new vehicleid = GetPlayerVehicleID(playerid);				
				if(!IsAFishermenBoat(vehicleid))
				{
					SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec thuyen danh bat hai san!");
					return 1;
				}				

				PlayerPlaySound(playerid, 1058, 0.0, 0.0, 0.0);
				DisablePlayerCheckpoint(playerid);
				gPlayerCheckpointStatus[playerid] = CHECKPOINT_NONE;
				TogglePlayerControllable(playerid, 0);
				SetPVarInt(playerid, "IsFrozen", 1);
				SetTimerEx("LoadFishing", 30000, 0, "d", playerid); // 30s
				GameTextForPlayer(playerid, "Dang danh bat hai san...", 30000, 5);
			}
			case CHECKPOINT_RETURNFISHING:
			{
				new string[512];
				new vehicleid = GetPlayerVehicleID(playerid);				
				if(!IsAFishermenBoat(vehicleid))
				{
					SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec thuyen danh bat hai san!");
					return 1;
				}			
				if(!IsPlayerInRangeOfPoint(playerid, 6, 151.9271,-1976.3397,-0.5249))
				{ // Check Bug
					DisableCheckPoint(playerid);
					gPlayerCheckpointStatus[playerid] = CHECKPOINT_NONE;
					SendClientMessageEx(playerid, COLOR_REALRED, "Da co loi xay ra, ban khong den dung checkpoint.");
					return 1;
				}
				
				if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
				{
					SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec thuyen!");
					return 1;
				}

				if(camfam == 0)
				{
					PlayerInfo[playerid][pKimCuong] += 1;
					format(string, sizeof(string), "{ff5b4f}[SU KIEN KIM CUONG]{efe4dc} Ban nhan duoc 1 {ff5b4f}KIM CUONG{efe4dc} - hien tai: {ff5b4f}%d{efe4dc} ", PlayerInfo[playerid][pKimCuong]);
					SendClientMessageEx(playerid, COLOR_WHITE, string);
				}

				new rand = Random(1, 5);
				if(rand == 1)
				{
					PlayerInfo[playerid][pShrimp]++;
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Ban nhan duoc Tom.", "OK", "");
				}
				if(rand == 2)
				{
					PlayerInfo[playerid][pSalmon]++;
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Ban nhan duoc Ca hoi.", "OK", "");
				}
				if(rand == 3)
				{
					PlayerInfo[playerid][pTuna]++;
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Ban nhan duoc Ca ngu.", "OK", "");	
				}
				if(rand == 4)
				{
					PlayerInfo[playerid][pCrab]++;
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Ban nhan duoc Cua.", "OK", "");
				}
				if(rand == 5)
				{
					PlayerInfo[playerid][pLobster]++;	
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Ban nhan duoc Tom hum.", "OK", "");	
				}


				//new vehicleid = GetPlayerVehicleID(playerid);
				//SetVehicleToRespawn(vehicleid);
				PlayerPlaySound(playerid, 1058, 0.0, 0.0, 0.0);
				DisablePlayerCheckpoint(playerid);
				gPlayerCheckpointStatus[playerid] = CHECKPOINT_NONE;	

				SetPVarInt(playerid, "FishermenLoad", 0);
	
				if(DoubleXP) {
					SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da duoc 2 diem ky nang Fishermen thay vi 1 diem. (Nhan doi XP)");
					PlayerInfo[playerid][pFishermenSkill] += 2;			
					//PlayerInfo[playerid][pXP] += PlayerInfo[playerid][pLevel] * XP_RATE * 2;
				}
				else if(PlayerInfo[playerid][pDoubleEXP] > 0 && !DoubleXP)
				{
					format(string, sizeof(string), "Ban da duoc 2 ky nang Fishermen thay vi 1 diem. Ban co %d gio con lai de nhan doi EXP token.", PlayerInfo[playerid][pDoubleEXP]);
					SendClientMessageEx(playerid, COLOR_YELLOW, string);
					PlayerInfo[playerid][pFishermenSkill] += 2;
					PlayerInfo[playerid][pXP] += PlayerInfo[playerid][pLevel] * XP_RATE * 2;
				}
				else
				{
					PlayerInfo[playerid][pFishermenSkill] += 1;
					PlayerInfo[playerid][pXP] += PlayerInfo[playerid][pLevel] * XP_RATE;
				}
			}
		}
	}
	return 1;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(!ispassenger)
	{
		if(IsAFishermenBoat(vehicleid))
		{
			if(PlayerInfo[playerid][pRentBoat] >= 1)
			{
				if(PlayerInfo[playerid][pJob] != 31 && PlayerInfo[playerid][pJob2] != 31)
				{
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz+1.3);
					PlayerPlaySound(playerid, 1130, slx, sly, slz+1.3);
					RemovePlayerFromVehicle(playerid);
					defer NOPCheck(playerid);
					SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong phai la {FFFF11}Fishermen (ngu dan)");
				}
				else 
				{
					// ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Ngu dan", "Su dung lenh [{085AD9}/batca{FFFFFF}] hoac [{085AD9}/thaluoi{FFFFFF}] de lam viec nhe", "OK", "");
					SendClientMessage(playerid, -1, "Su dung lenh [{085AD9}/batca{FFFFFF}] hoac [{085AD9}/thaluoi{FFFFFF}] de lam viec nhe");
				}
			}
			else 
			{
				new Float:slx, Float:sly, Float:slz;
				GetPlayerPos(playerid, slx, sly, slz);
				SetPlayerPos(playerid, slx, sly, slz+1.3);
				PlayerPlaySound(playerid, 1130, slx, sly, slz+1.3);
				RemovePlayerFromVehicle(playerid);
				defer NOPCheck(playerid);
				SendClientMessageEx(playerid, COLOR_GRAD2, "Ban chua co {FFFF11}giay phep thue thuyen ngu dan");
			}
		}		
	}
}




CMD:thaluoi(playerid, params[]) return cmd_fishing(playerid, params);
CMD:batca(playerid, params[]) return cmd_fishing(playerid, params);
CMD:fishing(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 31 || PlayerInfo[playerid][pJob2] == 31)
	{
		if(GetPVarInt(playerid, "FishermenLoad") >= 1) return SendClientMessage(playerid, -1, "Ban da nhan vi tri danh ca roi");
	    new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAFishermenBoat(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
			if(!IsPlayerInRangeOfPoint(playerid, 10, 151.9271,-1976.3397,-0.5249))
			{
				SendClientMessageEx(playerid, -1, "Vi tri danh bat ca nam sau lung ngon hai dang - phia bien");
			}
			else 
			{
				if(!CheckPointCheck(playerid))
				{
					SetPVarInt(playerid, "FishermenLoad", 1);							
					gPlayerCheckpointStatus[playerid] = CHECKPOINT_FISHING;
					new rand = random(sizeof(FishermenDropoffs));
					SetPlayerCheckpoint(playerid, FishermenDropoffs[rand][PosX], FishermenDropoffs[rand][PosY], FishermenDropoffs[rand][PosZ], 5);
					GameTextForPlayer(playerid, "~w~Checkpoint ~r~Set", 5000, 5);
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Checkpoint da duoc danh dau tren mini map");
				}
				else return SendClientMessageEx(playerid, COLOR_WHITE, "ERROR: /xoamuctieu hoac /xmt de thiet lap lai cac checkpoint");
			}
	    }
	    else return SendClientMessageEx(playerid, COLOR_GREY, "Ban phai o trong mot chiec thuyen ngu dan");
	}
	else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong phai {FFFF00}Fishermen");
	return 1;
}



CMD:thuethuyen(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 31 || PlayerInfo[playerid][pJob2] == 31)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_FISHERMEN))
		{
			ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban da thue thuyen danh bat ca trong 1 tieng\nKiem tra thoi gian con lai: /giayphep", "OK", "");
			PlayerInfo[playerid][pRentBoat]+= 60;
			// printf("RentBoat: %d", PlayerInfo[playerid][pRentBoat]);
		}
		else 
		{
			ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong dung o NPC ngu dan", "OK", "");
		}
	}
	else 
	{
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong phai la {FFFF00}Fishermen (ngu dan)", "OK", "");
	}
	return 1;
}



CMD:chebienhaisan(playerid, params[])
{
	if(GetPVarInt(playerid, "CheBienHaiSan") >= 1) return SendClientMessage(playerid, -1, "Ban dang che bien hai san khac roi");
	if(PlayerInfo[playerid][pJob] == 31 || PlayerInfo[playerid][pJob2] == 31)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_CHEBIENHAISAN))
		{
			new string[512];
			format(string, sizeof string, "Tom tuoi song: %d\nCa hoi tuoi song: %d\nCa ngu tuoi song: %d\nCua tuoi song: %d\nTom hum tuoi song: %d", PlayerInfo[playerid][pShrimp], 
			PlayerInfo[playerid][pSalmon],
			PlayerInfo[playerid][pTuna],
			PlayerInfo[playerid][pCrab],
			PlayerInfo[playerid][pLobster]);
			ShowPlayerDialog(playerid, DIALOG_CHEBIENHAISAN, DIALOG_STYLE_LIST, "Chon hai san ma ban muon che bien", string, "Che bien", "Huy bo");
		}
		else 
		{
			ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong dung o noi che bien", "OK", "");
		}
	}
	else 
	{
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong phai la {FFFF00}Fishermen (ngu dan)", "OK", "");
	}
	return 1;
}

CMD:xemca(playerid, params[])
{
	if(IsPlayerConnected(playerid))
	{
		new string[512];
		format(string, sizeof string, "Tom tuoi song: %d\nCa hoi tuoi song: %d\nCa ngu tuoi song: %d\nCua tuoi song: %d\nTom hum tuoi song: %d", 
		PlayerInfo[playerid][pShrimp], 
		PlayerInfo[playerid][pSalmon],
		PlayerInfo[playerid][pTuna],
		PlayerInfo[playerid][pCrab],
		PlayerInfo[playerid][pLobster]);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "{FFFFFF}Job - Fishermen - So luong hai san", string, "OK", "");
	}
	return 1;
}


CMD:giaodichhaisan(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 31 || PlayerInfo[playerid][pJob2] == 31)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_GIAODICHHAISAN))
		{
			new string[512];
			format(string, sizeof string, "Tom da che bien: %d\nCa hoi da che bien: %d\nCa ngu da che bien: %d\nCua da che bien: %d\nTom hum da che bien: %d", 
			PlayerInfo[playerid][pShrimpProcessed], 
			PlayerInfo[playerid][pSalmonProcessed],
			PlayerInfo[playerid][pTunaProcessed],
			PlayerInfo[playerid][pCrabProcessed],
			PlayerInfo[playerid][pLobsterProcessed]);
			ShowPlayerDialog(playerid, DIALOG_GIAODICHHAISAN, DIALOG_STYLE_LIST, "{FFFFFF}Job - Fishermen - Giao dich", string, "Ban", "Huy bo");
		}
		else 
		{
			ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong dung o noi giao dich hai san", "OK", "");
		}
	}
	else 
	{
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFFFF}Job - Fishermen", "Ban khong phai la {FFFF00}Fishermen (ngu dan)", "OK", "");
	}
	return 1;
}

task RentBoatTimer[60000]() // 1 minute 
{
	foreach(new i: Player)
	{
		if(PlayerInfo[i][pRentBoat] > 0)
		{
			PlayerInfo[i][pRentBoat]--;
			// printf("RentBoat: %d", PlayerInfo[i][pRentBoat]);
		}
		else if(PlayerInfo[i][pRentBoat] < 0)
		{
			PlayerInfo[i][pRentBoat] = 0;
			// printf("RentBoat: %d", PlayerInfo[i][pRentBoat]);
		}
	}
}
