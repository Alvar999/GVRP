#include <YSI\y_hooks>

new CuaSat;
new bool:Bank_Lock = false;

forward RespawnNG();
public RespawnNG()
{
	NHStatus[pNganHang] = 0;
	NHStatus[pLayTien] = 0;
	CuaSat = CreateObject(19799, 2311.1433, -1.6951, 27.1777, 0.0000, 0.0000, -88.0000);
	SendClientMessageToAll(-1, "{FF0000}[!] {FFFFFF}Ngan hang da co tien tro lai hay cuop di nao cac chang trai");
	return 1;
}

stock CloseBank()
{
    Bank_Lock = False;
}


stock OpenBank()
{
    Bank_Lock = True;
}

CMD:khoacuopbank(playerid, params[]) // Lenh khoa ngan hang
{
    if(PlayerInfo[playerid][pAdmin] >= 1338)
    {
        if(!Bank_Lock)
        {
            new string[128];
            Bank_Lock = true;
            format(string, sizeof(string), "Ban da khoa cuop ngan hang.");
            SendClientMessageEx(playerid, COLOR_YELLOW2,string);
        }
        else
        {
            new string[128];
            Bank_Lock = false;            
            format(string, sizeof(string), "Ban da mo cuop ngan hang.");
            SendClientMessageEx(playerid, COLOR_YELLOW2,string);
        }
    }
    return 1;
}

hook OnPlayerConnect(playerid)	{
	showpartytd(playerid);
	return 1;
}

stock showpartytd(playerid)	{
	TVParty[playerid][0] = CreatePlayerTextDraw(playerid, 8.000, 186.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TVParty[playerid][0], 103.000, 62.000);
	PlayerTextDrawAlignment(playerid, TVParty[playerid][0], 1);
	PlayerTextDrawColor(playerid, TVParty[playerid][0], -626712321);
	PlayerTextDrawSetShadow(playerid, TVParty[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TVParty[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TVParty[playerid][0], 255);
	PlayerTextDrawFont(playerid, TVParty[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TVParty[playerid][0], 1);

	TVParty[playerid][1] = CreatePlayerTextDraw(playerid, 23.000, 178.000, "Party Robbank");
	PlayerTextDrawLetterSize(playerid, TVParty[playerid][1], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, TVParty[playerid][1], 1);
	PlayerTextDrawColor(playerid, TVParty[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, TVParty[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, TVParty[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, TVParty[playerid][1], 150);
	PlayerTextDrawFont(playerid, TVParty[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TVParty[playerid][1], 1);

	TVParty[playerid][2] = CreatePlayerTextDraw(playerid, 7.000, 193.000, "HUD:radar_gangY");
	PlayerTextDrawTextSize(playerid, TVParty[playerid][2], 16.000, 15.000);
	PlayerTextDrawAlignment(playerid, TVParty[playerid][2], 1);
	PlayerTextDrawColor(playerid, TVParty[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, TVParty[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TVParty[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TVParty[playerid][2], 255);
	PlayerTextDrawFont(playerid, TVParty[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TVParty[playerid][2], 1);

	TVParty[playerid][3] = CreatePlayerTextDraw(playerid, 23.000, 185.000, "eqweqweqw eqweqwqw qwe qw qweqweq qwe qw eqw eq qweqwe");
	PlayerTextDrawLetterSize(playerid, TVParty[playerid][3], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, TVParty[playerid][3], 1);
	PlayerTextDrawColor(playerid, TVParty[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, TVParty[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TVParty[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, TVParty[playerid][3], 255);
	PlayerTextDrawFont(playerid,TVParty[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TVParty[playerid][3], 1);
	return 1;
}


stock ShowTVParty(playerid)
{
	new Cache:Result, TenPlayer[MAX_PLAYER_NAME + 1], playername[(MAX_PLAYER_NAME + 1) * 6], TVCuopNG, XepTVCuopNG[5000];
	for (new i = 0; i < 4; i++)
	{
		PlayerTextDrawShow(playerid, TVParty[playerid][i]);
	}
	Result = mysql_query(MainPipeline, "SELECT `TVCuopNG`, `Username` FROM `accounts` ORDER BY `TVCuopNG` DESC LIMIT 3");
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows(); i++)
		{
			cache_get_field_content(i, "Username", TenPlayer);
			TVCuopNG = cache_get_field_content_int(i, "TVCuopNG");

			format(playername,sizeof(playername),"%s~n~%s", playername, TenPlayer);
			format(XepTVCuopNG,sizeof(XepTVCuopNG),"%s~n~%i", XepTVCuopNG, TVCuopNG);
		}
		PlayerTextDrawSetString(playerid, TVParty[playerid][3], playername);
		cache_delete(Result);
	}
}

stock HideTVParty(playerid)
{
	for(new i = 0; i < 4; i++)
	{
		PlayerTextDrawHide(playerid, TVParty[playerid][i]);
	}
}

forward DatBomPhaCua(playerid);
public DatBomPhaCua(playerid)
{
	new string[32];
	DatBom[playerid] ++;
	format(string, sizeof(string), "Thoi gian phat no: %d giay", DatBom[playerid]);
	SendClientMessageEx(playerid, COLOR_YELLOW, string);
	if(DatBom[playerid] == 40)
	{
		foreach(Player, c)
        {
            if(IsACop(c))
            {
                SendClientMessageEx(c, COLOR_YELLOW, "CAMERA GIAM SAT: Phat hien co cac doi tuong dang cuop ngan hang vui long den ngay.");
            }
        }
	}
	else if(DatBom[playerid] == 60)
	{
		DestroyObject(CuaSat);
		SendClientMessageEx(playerid, COLOR_LIGHTRED, "Cua sat da bi pha huy hay vao trong lay tien nhan phim N de lay tien");
		DatBom[playerid] = 0;
		CreateExplosion(2311.8069, -0.7215, 26.7422, 11, 3.0);
		KillTimer(DatBomTimer[playerid]);
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_NO)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 2306.5222,-3.7796,26.7422))
		{
			if(PlayerInfo[playerid][pLDParty] == 1)
			{
				if(GetPVarInt(playerid, "HanhDongLayTien") == 0)
				{
					if(NHStatus[pLayTien] < 10)
					{
						NHStatus[pLayTien] += 1;
						SendClientMessageEx(playerid, COLOR_YELLOW, "Ban dang lay bich tien");
						ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
						SetPVarInt(playerid, "HanhDongLayTien", 1);
						SetTimerEx("ThoiGianLayTien", 2000, false, "i", playerid);
					}
					else
					{
						SetPlayerAttachedObject(playerid, 9, 1550, 1, 0.0000, -0.2569, 0.0000, -0.6000, 85.7999, 144.7000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
						SetPVarInt(playerid, "DaLayTienXong", 1);
						SetPlayerCheckpoint(playerid, 342.5758, 62.7510, 3.8622, 3.0);
						CP[playerid] = 191919;
						SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da lay du tien roi");
					}
				}
				else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong the hanh dong lien tuc duoc");
			}
			else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong co phai LD Party CUOP NGAN HANG");
		}
    }
    return 1;
}

forward ThoiGianLayTien(playerid);
public ThoiGianLayTien(playerid)
{
	ClearAnimations(playerid);
	DeletePVar(playerid, "HanhDongLayTien");
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
    if(CP[playerid] == 191919)
    {
    	DisablePlayerCheckpoint(playerid);
    	SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da den noi Rua tien ngan hang su dung lenh /ruatiennganhang");
    }
    return 1;
}

hook OnGameModeInit()
{
	CuaSat = CreateObject(19799, 2311.1433, -1.6951, 27.1777, 0.0000, 0.0000, -88.0000);
	return 1;
}

CMD:taoparty(playerid, params[])
{
	if(Bank_Lock == true) return SendClientMessageEx(playerid, COLOR_YELLOW2, "Cuop ngan hang da bi khoa boi admin.");
	if(checkcops >= 2)
	{
		if(PlayerInfo[playerid][pLDParty] == 0)
		{
			if(NHStatus[pNganHang] == 0)
			{
				CuopNHTimer[playerid] = SetTimerEx("ThoiGianCuopNganHang", 1800000, false, "i", playerid); // 1800000
				NHStatus[pNganHang] = 1;
				PlayerInfo[playerid][pLDParty] = 1;
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da tao Party CUOP NGAN HANG su dung /moicuop [playerid] de moi 2 thanh vien nua");
				return 1;
			}
			else SendClientMessageEx(playerid, COLOR_YELLOW, "Ngan hang chua co tien nen khong the tao party");
		}
		else SendClientMessageEx(playerid, COLOR_YELLOW, "Da co nguoi tao Party");
	} else SendClientMessage(playerid, COLOR_YELLOW2, "Khong du Police de thuc hien vu cuop");
	return 1;
}

forward ThoiGianCuopNganHang(playerid);
public ThoiGianCuopNganHang(playerid)
{
	DeletePVar(playerid, "DaLayTienXong");
	NHStatus[pNganHang] = 0;
	PlayerInfo[playerid][pLDParty] = 0;
	DeletePVar(playerid, "DangDatBom");
	KillTimer(DatBomTimer[playerid]);
	DatBom[playerid] = 0;
	KillTimer(CuopNHTimer[playerid]);
	PlayerInfo[playerid][pTVCuopNG] = 0;
	HideTVParty(playerid);
	NHStatus[pLayTien] = 0;
	SendClientMessageEx(playerid, COLOR_YELLOW, "Het thoi gian cuop ngan hang toan bo se bi huy");
	SetPlayerColor(playerid, COLOR_WHITE);
	g_mysql_SaveAccount(playerid);
	foreach(new i: Player)
	{
		if(PlayerInfo[i][pTVCuopNG] == 1)
		{
			PlayerInfo[i][pTVCuopNG] = 0;
		    g_mysql_SaveAccount(i);
			SendClientMessageEx(i, COLOR_YELLOW, "Het Thoi gian cuop ngan hang toan bo se bi huy");
			SetPlayerColor(i, COLOR_WHITE);
			HideTVParty(i);
		}
	}
}

CMD:moicuop(playerid, params[])
{
	new
		iTargetID,
		string[128];

	if(sscanf(params, "u", iTargetID)) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "SU DUNG: /moicuop [Nguoi choi]");
	}
	else if(IsPlayerConnected(iTargetID)) {
	    if (iTargetID != playerid) {
			if(PlayerInfo[playerid][pLDParty] == 1)
			{
				if(PlayerInfo[playerid][pTVCuopNG] <= 1)
				{
					SetPVarInt(iTargetID, "MoiCUOPNH", playerid);
					SetPlayerColor(playerid, COLOR_ORANGE);
					format(string, sizeof(string), "Ban da moi %s tham gia mot vu CUOP NGAN HANG", GetPlayerNameEx(iTargetID));
					SendClientMessageEx(playerid, COLOR_RED, string);
					format(string, sizeof(string), "Lanh dao Party %s da de nghi ban tham gia mot vu CUOP NGAN HANG su dung /chapnhan cuopnganhang", GetPlayerNameEx(playerid));
					SendClientMessageEx(iTargetID, COLOR_RED, string);
				}
				else SendClientMessageEx(playerid, COLOR_YELLOW, "Thanh vien da day khong the moi them nua!");
			}
			else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban chua tao Party nen khong the moi nguoi choi khac.");
		}
		else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong the moi chinh minh.");
	}
	else SendClientMessageEx(playerid, COLOR_YELLOW, "Nguoi choi khong hop le.");
	return 1;
}

CMD:datbom(playerid, params[])
{
	if(IsPlayerInRangeOfPoint(playerid, 3.0, 2311.8069, -0.7215, 26.7422))
	{
		if(PlayerInfo[playerid][pLDParty] == 1)
		{
			if(PlayerInfo[playerid][pBombs] >= 1)
			{
				if(PlayerInfo[playerid][pTVCuopNG] == 2)
				{
					if(GetPVarInt(playerid, "DangDatBom") == 0)
					{
						ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 1, 1, 0, 0, 1);
						DatBomTimer[playerid] = SetTimerEx("DatBomPhaCua", 1000, true, "i", playerid);
						SetTimer("RespawnNG", 3600000, false);
						PlayerInfo[playerid][pBombs] -= 1;
						PlayerInfo[playerid][pWantedLevel] += 5;
						SetPVarInt(playerid, "DangDatBom", 1);
					}
				}
				else SendClientMessageEx(playerid, COLOR_YELLOW, "Khong co du thanh vien de tao ra mot vu CUOP NGAN HANG");
			}
			else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong co bom de dat bom pha cua cuop ngan hang");
		}
		else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong phai la Leader Party nen khong the dat bom");
	}
	else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong dung gan cua NGAN HANG de dat bom");
	return 1;
}

CMD:ruatiennganhang(playerid, params[])
{
	if(IsPlayerInRangeOfPoint(playerid, 3.0, 342.5758,62.7510,3.8622))
	{
		if(GetPVarInt(playerid, "DaLayTienXong") == 1)
		{
			SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da rua tien cua NGAN HANG va nhan duoc so tien ban $10,000,000");
			PlayerInfo[playerid][pCash] += 10000000;
			RemovePlayerAttachedObject(playerid, 9);
			PlayerInfo[playerid][pLDParty] = 0;
			PlayerInfo[playerid][pTVCuopNG] = 0;
			DatBom[playerid] = 0;
		    g_mysql_SaveAccount(playerid);
			foreach(new i: Player)
			{
				if(PlayerInfo[i][pTVCuopNG] == 1)
				{
					PlayerInfo[i][pTVCuopNG] = 0;
					SendClientMessageEx(i, COLOR_YELLOW, "Lanh dao cua ban da rua tien thanh cong");
					SetPlayerColor(i, COLOR_WHITE);
		          	g_mysql_SaveAccount(i);
				}
			}
			DeletePVar(playerid, "DaLayTienXong");
			DeletePVar(playerid, "DangDatBom");
			KillTimer(CuopNHTimer[playerid]);
			SetPlayerColor(playerid, COLOR_WHITE);
		}
		else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban chua lay tien xong nen khong the rua tien cua NGAN HANG");
	}
	else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban chua den vi tri rua tien");
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	if(PlayerInfo[playerid][pLDParty] == 1)
	{
		DeletePVar(playerid, "DaLayTienXong");
		NHStatus[pNganHang] = 0;
		PlayerInfo[playerid][pLDParty] = 0;
		PlayerInfo[playerid][pTVCuopNG] = 0;
		DeletePVar(playerid, "DangDatBom");
		KillTimer(DatBomTimer[playerid]);
		HideTVParty(playerid);
		DatBom[playerid] = 0;
		g_mysql_SaveAccount(playerid);
		KillTimer(CuopNHTimer[playerid]);
		NHStatus[pLayTien] = 0;
		strcpy(PlayerInfo[playerid][pPrisonReason], "[OOC] Roi khoi khi dang cuop ngan hang [Timeout]", 128);
		strcpy(PlayerInfo[playerid][pPrisonedBy], "System", 128);
		PlayerInfo[playerid][pJailTime] += 15*60;
		foreach(new i: Player)
		{
			if(PlayerInfo[i][pTVCuopNG] == 1)
			{
				PlayerInfo[i][pTVCuopNG] = 0;
	          	g_mysql_SaveAccount(i);
			}
		}
	}
	if(PlayerInfo[playerid][pTVCuopNG] == 1)
	{
		PlayerInfo[playerid][pTVCuopNG] = 0;
		HideTVParty(playerid);
		strcpy(PlayerInfo[playerid][pPrisonReason], "[OOC] Roi khoi khi dang cuop ngan hang [Timeout]", 128);
		strcpy(PlayerInfo[playerid][pPrisonedBy], "System", 128);
		PlayerInfo[playerid][pJailTime] += 15*60;
		g_mysql_SaveAccount(playerid);
	}
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
	if(PlayerInfo[playerid][pLDParty] == 1)
	{
		DeletePVar(playerid, "DaLayTienXong");
		NHStatus[pNganHang] = 0;
		PlayerInfo[playerid][pLDParty] = 0;
		DeletePVar(playerid, "DangDatBom");
		PlayerInfo[playerid][pTVCuopNG] = 0;
		DatBom[playerid] = 0;
		KillTimer(CuopNHTimer[playerid]);
		KillTimer(DatBomTimer[playerid]);
		HideTVParty(playerid);
		g_mysql_SaveAccount(playerid);
		SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da tu vong nen toan bo vu cuop ngan hang se bi huy bo");
		foreach(new i: Player)
		{
			if(PlayerInfo[i][pTVCuopNG] == 1)
			{
				PlayerInfo[i][pTVCuopNG] = 0;
				HideTVParty(i);
				SetPlayerColor(i, COLOR_WHITE);
		        g_mysql_SaveAccount(i);
				SendClientMessageEx(i, COLOR_YELLOW, "Lanh dao cua ban da tu vong, toan bo vu cuop ngan hang se bi huy");
			}
		}
		NHStatus[pLayTien] = 0;
		SetPlayerColor(playerid, COLOR_WHITE);
	}
	return 1;
}

CMD:chetaobom(playerid, params[])
{
	if(PlayerInfo[playerid][pLDParty] == 1)
	{
		if(PlayerInfo[playerid][pMats] >= 30000)
		{
			PlayerInfo[playerid][pMats] -= 30000;
			PlayerInfo[playerid][pBombs] += 1;
			SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da che tao thanh cong bom va ton 30k vat lieu");
		}
		else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong co du vat lieu de che tao C4");
	}
	else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban phai la LD Party moi co the che tao bom c4");
	return 1;
}