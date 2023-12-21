#include <YSI\y_hooks>

#define     POS_THUHOACH       2351.6477,-649.7277,128.0547
#define     POS_SANXUAT        972.8367,-1253.5245,16.9422
#define     POS_RUATIEN        952.5919,-909.1068,45.7656
#define     POS_BLACKMARKET     2188.6938,-1081.6199,43.8349
#define     HAICANSA            (3421)
#define     POS_DRUGDEALER      979.5504,-1253.5205,16.9422


//Trao doi vu khi
#define 	WEAPON_COLT45_EXCHANGE			    (3)
#define 	WEAPON_SILENCED_EXCHANGE			(4)
#define 	WEAPON_DEAGLE_EXCHANGE			    (5)
#define 	WEAPON_SHOTGUN_EXCHANGE			    (5)
#define 	WEAPON_MP5_EXCHANGE			    	(7)
#define     WEAPON_AK47_EXCHANGE                (10)

#define MAX_CANSA (11) // so luong can sa

enum CANSA_ENUM
{
    CanSaID, // id can sa
    TrangThaiCanSa, 
    CanSaObject, // object can sa
    Timer:cTime,
    cTimeReset, 
    Text3D:CanSaText, 
    Float:CanSaPosition[3], 
}

static g_cInfo[MAX_CANSA][CANSA_ENUM];
static Timer:ccHarvesting[MAX_PLAYERS];

// Timer 
timer HarvestDone[10000](playerid, i)
{
    new string[129],
        rand = 1 + random(4);

    TogglePlayerControllable(playerid, true);
    ClearAnimations(playerid);
    
    
    g_cInfo[i][TrangThaiCanSa] = 2;
    g_cInfo[i][CanSaID] = 0;
    DestroyDynamicObject(g_cInfo[i][CanSaObject]);
    DestroyDynamic3DTextLabel(g_cInfo[i][CanSaText]);

    PlayerInfo[playerid][pWSeeds] += rand;
    format(string, sizeof(string), "Ban da hai cay can sa thanh cong va nhan duoc %d cay can sa (tho).", rand);
    SendClientMessage(playerid, COLOR_WHITE, string);

    g_cInfo[i][cTimeReset] = 1;
    g_cInfo[i][cTime] = defer cRespawn(i);
    SetPVarInt(playerid, "Harvesting", 0);
}

timer cRespawn[60000 * 45](i)
{
    g_cInfo[i][cTimeReset] = 0;

    if(g_cInfo[i][cTimeReset] == 0) 
    {
        new string[129];

        g_cInfo[i][CanSaID] = i;
        g_cInfo[i][TrangThaiCanSa] = 1;
        g_cInfo[i][CanSaObject] = CreateDynamicObject(19473, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2], 0,0,0);
        format(string, sizeof(string), "Marijuana %i\n(Y)", i);
        g_cInfo[i][CanSaText] = CreateDynamic3DTextLabel(string, -1, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]+1, 27.0);
        stop g_cInfo[i][cTime];
    }
}

CMD:rscansa(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 99999) {
        for(new i = 1; i < MAX_CANSA; i++)
        {
            g_cInfo[i][cTimeReset] = 0;
            if(g_cInfo[i][cTimeReset] == 0) 
            {
                new string[129];
                g_cInfo[i][CanSaID] = i;
                g_cInfo[i][TrangThaiCanSa] = 1;
                g_cInfo[i][CanSaObject] = CreateDynamicObject(19473, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2], 0,0,0);
                format(string, sizeof(string), "Marijuana %i\n(Y)", i);
                g_cInfo[i][CanSaText] = CreateDynamic3DTextLabel(string, -1, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]+1, 27.0);
                stop g_cInfo[i][cTime];
                printf("[MARIJUANA] Marijuana %d | X%f | Y%f | Z%f", i, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]);
            }
        }
        SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"Ban da reset tat ca can sa.");
    }
    return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES)
    {
        for(new i = 1; i < MAX_CANSA; i++)
        {
            if(IsPlayerInRangeOfPoint(playerid, 2, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]))
            {
                return cmd_thuhoachcansa(playerid, "");
            }
        }
    }
    return 1;
}

hook OnGameModeInit()
{

    CreateDynamic3DTextLabel("/sanxuatcansa",COLOR_YELLOW, POS_SANXUAT, 10.0);//San xuat
    CreateDynamicPickup(1239, 23, POS_SANXUAT, -1);

    CreateDynamic3DTextLabel("/ruatien",COLOR_YELLOW, POS_RUATIEN, 10.0);//Rua tien
    CreateDynamicPickup(1239, 23, POS_RUATIEN, -1);

    CreateDynamic3DTextLabel("/traodoithuoc",COLOR_YELLOW, POS_DRUGDEALER, 10.0);//Drug dealer
    CreateDynamicPickup(1239, 23, POS_DRUGDEALER, -1);



    new string[128];

    g_cInfo[0][CanSaPosition][0]  = 2374.30273, g_cInfo[0][CanSaPosition][1] = -668.35852,g_cInfo[0][CanSaPosition][2] = 127.30390; // 0
    g_cInfo[1][CanSaPosition][0] = 2319.34961, g_cInfo[1][CanSaPosition][1] = -735.72479,g_cInfo[1][CanSaPosition][2] = 129.93410; // 1
    g_cInfo[2][CanSaPosition][0]  = 2327.78638, g_cInfo[2][CanSaPosition][1] = -742.43237,g_cInfo[2][CanSaPosition][2] = 129.93410; // 2
    g_cInfo[3][CanSaPosition][0]  = 2326.91602, g_cInfo[3][CanSaPosition][1] = -727.64380,g_cInfo[3][CanSaPosition][2] = 129.43410; // 3
    g_cInfo[4][CanSaPosition][0]  = 2352.79272, g_cInfo[4][CanSaPosition][1] = -611.94751,g_cInfo[4][CanSaPosition][2] = 125.35460; // 4
    g_cInfo[5][CanSaPosition][0]  = 2363.78320, g_cInfo[5][CanSaPosition][1] = -611.49792,g_cInfo[5][CanSaPosition][2] = 124.35460; // 5
    g_cInfo[6][CanSaPosition][0]  = 2360.08301, g_cInfo[6][CanSaPosition][1] = -623.05823,g_cInfo[6][CanSaPosition][2] = 125.35460; // 6
    g_cInfo[7][CanSaPosition][0]  = 2382.54297, g_cInfo[7][CanSaPosition][1] = -717.28265,g_cInfo[7][CanSaPosition][2] = 124.80390; // 7
    g_cInfo[8][CanSaPosition][0]  = 2388.09741, g_cInfo[8][CanSaPosition][1] = -725.18903,g_cInfo[8][CanSaPosition][2] = 123.30390; // 8
    g_cInfo[9][CanSaPosition][0]  = 2389.94727, g_cInfo[9][CanSaPosition][1] = -717.56958,g_cInfo[9][CanSaPosition][2] = 123.30390; // 9
    g_cInfo[10][CanSaPosition][0] = 2350.92139, g_cInfo[10][CanSaPosition][1] = -683.69757,g_cInfo[10][CanSaPosition][2] = 131.80389; // 10




    for(new i=1;i<MAX_CANSA;i++)
    {
        g_cInfo[i][CanSaID] = i;
        g_cInfo[i][TrangThaiCanSa] = 1;
        g_cInfo[i][CanSaObject] = CreateDynamicObject(19473, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2], 0,0,0);
        format(string, sizeof(string), "Marijuana %i\n(Y)", i);
        g_cInfo[i][CanSaText] = CreateDynamic3DTextLabel(string, -1, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]+1, 27.0);
        printf("[MARIJUANA] Marijuana %d | X%f | Y%f | Z%f", i, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]);
    }


    return 1;
}


CMD:thuhoachcansa(playerid, params[])
{
    if(camfam == 1)
	{
		SendClientMessage(playerid,COLOR_GREY, "Dang trong khung gio cam , khong the fam");
		return 1;
	}
    new check = 0;
    if(GetPVarInt(playerid, "Harvesting") == 1) return SendClientMessage(playerid, -1, "Ban dang thu hoach.");
    for(new i=1;i<MAX_CANSA;i++)
    {
        if(g_cInfo[i][TrangThaiCanSa] == 1)
        {
            if(IsPlayerInRangeOfPoint(playerid, 2, g_cInfo[i][CanSaPosition][0] ,g_cInfo[i][CanSaPosition][1] ,g_cInfo[i][CanSaPosition][2]))
            {
                foreach(Player, c)
                {
                    if(IsACop(c))
                    {
                        SendClientMessageEx(c, COLOR_WHITE, "CAMERA GIAM SAT: Phat hien doi tuong hai can sa.");
                    }
                }                       
                new string[129];  
                TogglePlayerControllable(playerid, false);
                SetPVarInt(playerid, "Harvesting", 1);
                ApplyAnimation(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                ccHarvesting[playerid] = defer HarvestDone(playerid, i);
                g_cInfo[i][TrangThaiCanSa] = 0;
                LoaderStarting(playerid, HAICANSA,"DANG HAI CAN SA", 0.5, random(6));
                format(string, sizeof(string),  "Marijuana %i\n(Y)", i);
                UpdateDynamic3DTextLabelText(g_cInfo[i][CanSaText], -1, string);
                SetPVarInt(playerid, "mHarvesting", i);
                check = 0;
                break;
            }
            else {
                check = 2;
            }
        }
    }
    if(check == 2)
    {
        SendClientMessage(playerid, COLOR_GREY, "Ban khong o gan cay can sa nao.");
    }
    return 1;
}



CMD:buonlauhelp(playerid, params[])
{
	if(CheckPointCheck(playerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "ERROR: /xoamuctieu hoac /xmt de fix loi va thu lai");
    ShowPlayerDialog(playerid, DIALOG_BUONLAUCANSA, DIALOG_STYLE_LIST, "Buon lau - Cong viec pham phap", "Vi tri cong viec\nLenh cua cong viec", "Chon", "Huy");
    return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
    if(gPlayerCheckpointStatus[playerid] == CHECKPOINT_MAP)
    {
        DisableCheckPoint(playerid);
        SendClientMessage(playerid, -1, "Da den noi");
        gPlayerCheckpointStatus[playerid] = CHECKPOINT_NONE;
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_BUONLAUCANSA)
    {
        if(response)
        {
            new string[128];
            switch(listitem)
            {
                case 0: // Vi tri cua cong viec 
                {
                    format(string, sizeof string, 
                    "Thu hoach\n\
                    San xuat\n\
                    Rua tien\n\
                    Cho den - Black Market");
                    ShowPlayerDialog(playerid, DIALOG_VITRIBUONLAUCANSA, DIALOG_STYLE_LIST, "Buon lau can sa", string, "Chon", "Huy");
                }
                case 1: // Cac lenh cua cong viec
                {
                    format(string, sizeof string, 
                    "/thuhoachcansa - /sanxuatcansa ");
                    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Buon lau can sa", string, "Ok", "");
                }
            }
        }
    }
    if(dialogid == DIALOG_VITRIBUONLAUCANSA)
    {
        if(response)
        {
            switch(listitem)
            {
                case 0: 
                {
                    SetPlayerCheckpoint(playerid, POS_THUHOACH, 5.0);
                    gPlayerCheckpointStatus[playerid] = CHECKPOINT_MAP;
                    GameTextForPlayer(playerid, "~r~Checkpoint Set", 2000, 1);
                    PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
                }
                case 1: 
                {
                    SetPlayerCheckpoint(playerid, POS_SANXUAT, 5.0);
                    gPlayerCheckpointStatus[playerid] = CHECKPOINT_MAP;
                    GameTextForPlayer(playerid, "~r~Checkpoint Set", 2000, 1);
                    PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
                }
                case 2:
                {
                    SetPlayerCheckpoint(playerid, POS_RUATIEN, 5.0);
                    gPlayerCheckpointStatus[playerid] = CHECKPOINT_MAP;
                    GameTextForPlayer(playerid, "~r~Checkpoint Set", 2000, 1);
                    PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
                }
                case 3:
                {
                    SetPlayerCheckpoint(playerid, POS_BLACKMARKET, 5.0);
                    gPlayerCheckpointStatus[playerid] = CHECKPOINT_MAP;
                    GameTextForPlayer(playerid, "~r~Checkpoint Set", 2000, 1);
                    PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
                }
            }
        }
    }
    if(dialogid == DIALOG_TRAODOITHUOC)
    {
        if(response)
        {
            new string[128];
            new amount = strval(inputtext);
            if(amount <= 0) return ShowPlayerDialog(playerid, DIALOG_TRAODOITHUOC, DIALOG_STYLE_INPUT, "Trao doi thuoc",
            "Vui long nhap dung so luong\n\
            Ti gia: 1 Crack = $100000 tien ban", "Chon", "Huy");
            if(amount > PlayerInfo[playerid][pWeed]) return ShowPlayerDialog(playerid, DIALOG_TRAODOITHUOC, DIALOG_STYLE_INPUT, "Trao doi thuoc", 
            "Ban khong co du so luong ma ban da nhap\n\
            Ti gia: 1 Crack = $100000 tien ban", "Chon", "Huy");
            PlayerInfo[playerid][pWeed] -= amount;
            format(string, sizeof(string), "Ban da ban %d can sa nguyen chat va nhan duoc $%d tien ban", amount, amount*100000);
            SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
            PlayerInfo[playerid][pDirtyMoney] += amount*20000;
        }
    }
 

    if(dialogid == DIALOG_TRAODOIVUKHI)
    {
        if(response)
        {   
            new amount = PlayerInfo[playerid][pWeed];
            switch(listitem)
            {              
                case 0: //9mm
                {
                    if(amount < WEAPON_COLT45_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 22, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc 9mm");
                    PlayerInfo[playerid][pWeed] -= WEAPON_COLT45_EXCHANGE;
                }
                case 1: //sdpistol
                {
                    if(amount < WEAPON_SILENCED_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 23, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc sdpistol");
                    PlayerInfo[playerid][pWeed] -= WEAPON_SILENCED_EXCHANGE;
                }
                case 2: //deagle
                {
                    if(amount < WEAPON_DEAGLE_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 24, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc deagle");
                    PlayerInfo[playerid][pWeed] -= WEAPON_DEAGLE_EXCHANGE;
                }
                case 3: //shotgun
                {
                    if(amount < WEAPON_SHOTGUN_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 25, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc shotgun");
                    PlayerInfo[playerid][pWeed] -= WEAPON_SHOTGUN_EXCHANGE;
                }
                case 4: //mp5
                {
                    if(amount < WEAPON_MP5_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 29, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc mp5");
                    PlayerInfo[playerid][pWeed] -= WEAPON_MP5_EXCHANGE;
                }
                case 5: //ak47
                {
                    if(amount < WEAPON_AK47_EXCHANGE) return SendClientMessage(playerid, -1, "Ban khong co du can sa");
                    GivePlayerValidWeapon(playerid, 30, 50000);
                    SendClientMessage(playerid, -1, "Ban da nhan duoc ak47");
                    PlayerInfo[playerid][pWeed] -= WEAPON_AK47_EXCHANGE;
                }
            }
        }
    }
    if(dialogid == DIALOG_TRAODOIVATLIEU)
    {
        if(response)
        {
            new string[128];
            new amount = strval(inputtext);
            if(amount <= 0) return ShowPlayerDialog(playerid, DIALOG_TRAODOIVATLIEU, DIALOG_STYLE_INPUT, "Trao doi vat lieu",
            "Vui long nhap dung so luong\n\
            Ti gia: 1 Crack = 10 vat lieu", "Chon", "Huy");
            if(amount > PlayerInfo[playerid][pWeed]) return ShowPlayerDialog(playerid, DIALOG_TRAODOIVATLIEU, DIALOG_STYLE_INPUT, "Trao doi vat lieu", 
            "Ban khong co du so luong ma ban da nhap\n\
            Ti gia: 1 Crack = 10 vat lieu", "Chon", "Huy");
            PlayerInfo[playerid][pWeed] -= amount;
            format(string, sizeof(string), "Ban da ban %d can sa nguyen chat va nhan duoc %d vat lieu", amount, amount*5);
            SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
            PlayerInfo[playerid][pMats] += amount*5;            
        }
    }    

    return 1;
}

CMD:buonlau(playerid, params[])
{
	if(gPlayerLogged{playerid} != 1) return SendClientMessageEx(playerid, COLOR_WHITE, "You are not logged in!");

	new string[128];
	SendClientMessageEx(playerid, COLOR_GREEN, "__________ Tui do __________");

	format(string, sizeof(string), "Tien ngan hang: ($%d) - Tien trong tui: ($%d) - Tien ban: ($%d)",
		PlayerInfo[playerid][pAccount],
        PlayerInfo[playerid][pCash],
        PlayerInfo[playerid][pDirtyMoney]
	);
	SendClientMessageEx(playerid, COLOR_WHITE, string);

    format(string, sizeof(string), "Can sa (nguyen chat): (%d) - Cay can sa (tho): (%d)",
        PlayerInfo[playerid][pWeed],
        PlayerInfo[playerid][pWSeeds]
    );
    SendClientMessageEx(playerid, COLOR_WHITE, string);

	SendClientMessageEx(playerid, COLOR_GREEN, "______________________________");
	return 1;
}

CMD:traodoithuoc(playerid, params[])
{
	if(IsPlayerInRangeOfPoint(playerid, 5.0, POS_DRUGDEALER))
	{
        ShowPlayerDialog(playerid, DIALOG_TRAODOITHUOC, DIALOG_STYLE_INPUT, "Trao doi thuoc", 
        "Nhap so thuoc (goi can sa nguyen chat) ma ban muon trao doi vao day\n\
        Ti gia: 1 goi can sa nguyen chat = $100000 tien ban", "Chon", "Huy");
    }
    else return SendClientMessage(playerid, -1, "Ban khong dung o noi trao doi");
    return 1;
}


CMD:ruatien(playerid, params[])
{
    if(PlayerInfo[playerid][pLevel] < 2) return SendClientMessage(playerid, COLOR_GREY, "Ban can du level de co the su dung lenh nay.");
	if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_RUATIEN))
	{
		if(PlayerInfo[playerid][pDirtyMoney] >= 1000)
        {
            if(GetPVarInt(playerid, "RuaTien") < 1)
            {
                SetTimerEx("RuaTienTimer", 10000, 0, "d", playerid);
                TogglePlayerControllable(playerid, 0);		
                ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);	
                SetPVarInt(playerid, "RuaTien", 1);
                GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~Dang Rua Tien", 10000, 5);
            }
            else return SendClientMessageEx(playerid, COLOR_GREY, "Ban dang rua tien ban.");
        }
        else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co du tien ban de rua (tren $100,000).");
	}
	return 1;
}

forward RuaTienTimer(playerid);
public RuaTienTimer(playerid)
{
	ClearAnimations(playerid);
	TogglePlayerControllable(playerid, 1);
	DeletePVar(playerid, "RuaTienTimer");
	SetPVarInt(playerid, "RuaTien", 0);
	new dirtymoney = PlayerInfo[playerid][pDirtyMoney];
	PlayerInfo[playerid][pCash] += dirtymoney;
	PlayerInfo[playerid][pDirtyMoney] = 0;
	new string[128];
	format(string, sizeof(string), "Ban nhan duoc {ff00ff}$%d{ffffff} ", PlayerInfo[playerid][pDirtyMoney]);
	SendClientMessageEx(playerid, -1, string);
}

CMD:sxmt(playerid, params[]) return cmd_sanxuatcansa(playerid, params);
CMD:sanxuatcansa(playerid, params[])
{
    if(PlayerInfo[playerid][pLevel] < 2) return SendClientMessage(playerid, COLOR_GREY, "Ban khong du level (it nhat lv 2) - /muacapdo");
	if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_SANXUAT))
	{
        if(PlayerInfo[playerid][pWSeeds] <= 0) return SendClientMessage(playerid, -1, "Ban da het cay can sa (tho) de co the san xuat");
		if(GetPVarInt(playerid, "SanXuat") < 1)
		{   
			SetTimerEx("SanXuatTimer", 10000, 0, "d", playerid);
			TogglePlayerControllable(playerid, 0);		
			ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);				
			SetPVarInt(playerid, "SanXuat", 1);
			GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~Dang San Xuat", 10000, 5);
		}
		else return SendClientMessageEx(playerid, COLOR_GREY, "Ban dang san xuat can sa.");
	}
	else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong dung o noi san xuat.");
	return 1;
}

forward SanXuatTimer(playerid);
public SanXuatTimer(playerid)
{
	ClearAnimations(playerid);
	TogglePlayerControllable(playerid, 1);
	DeletePVar(playerid, "SanXuatTimer");
	SetPVarInt(playerid, "SanXuat", 0);
    PlayerInfo[playerid][pWSeeds]--;
	PlayerInfo[playerid][pWeed]++;
	new string[128];
	format(string, sizeof(string), "Ban nhan duoc mot cay can sa (nguyen chat)");
	SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
}


hook OnPlayerConnect(playerid)
{
    SetPVarInt(playerid, "ThuHoach", 0);
    SetPVarInt(playerid, "SanXuat", 0);
    SetPVarInt(playerid, "RuaTien", 0);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    SetPVarInt(playerid, "ThuHoach", 0);
    SetPVarInt(playerid, "SanXuat", 0);
    SetPVarInt(playerid, "RuaTien", 0);
    return 1;
}

