#include <YSI\y_hooks>

#define    DIALOG_LAYHANGBocVac         (8296)
#define    Time_BocVac  10

enum Giao_Bocvac
{
	Float:Bocvac_X,
	Float:Bocvac_Y,
	Float:Bocvac_Z
}

new bool:onBocVacX[MAX_PLAYERS];
new bool:BocVac_Lock = false;
new cpbocvac[8][Giao_Bocvac] = {
	{2202.0217,-2277.7087,13.5547},
	{2208.5117,-2267.9438,13.5547},
	{2214.7942,-2259.0815,13.5547},
	{2220.8542,-2250.8599,13.5547},
	{2228.5010,-2243.1331,13.5547},
	{2194.6924,-2226.7029,13.5425},
	{2202.6680,-2218.9749,13.5469},
	{2208.2205,-2211.1604,13.5469}
};

stock ResetBocVac()
{
	BocVac_Lock= False;
}
stock MoBocVac()
{
	BocVac_Lock=True;
}
//===========================================================================//

//================================ CMD =======================================//
CMD:helpbocvac(playerid, params[])
{
	SendClientMessage(playerid, COLOR_YELLOW, "{ff0000}[BOC VAC]{ffffff} Hay lai dia diem lay hang va Su dung phim {ff0000}'Y'{ffffff} de tuong tac.");
	return 1;
}
CMD:khoabocvac(playerid, params[]) // Lenh khoa job
{
    if(PlayerInfo[playerid][pAdmin] >= 1338)
    {
        if(!BocVac_Lock)
        {
            new string[128];
            BocVac_Lock = true;
            format(string, sizeof(string), "[JOB SYSTEM]: {FFAF00}Admin %s Da khoa Boc Vac vi het gio lam viec, vui long quay lai vao sang mai.", GetPlayerNameEx(playerid));
            SendClientMessageToAllEx(COLOR_WHITE, string);
        }
        else
        {
            new string[128];
            format(string, sizeof(string), "[JOB SYSTEM]: {FFAF00}Admin %s Da mo khoa Boc Vac hay quay tro lai cong viec.", GetPlayerNameEx(playerid));
            SendClientMessageToAllEx(COLOR_WHITE, string);
            BocVac_Lock = false;
        }
    }
    return 1;
}
hook OnPlayerEnterCheckpoint(playerid)
{
    if(onBocVacX[playerid]) // if it's true
    {
	    if(IsPlayerInRangeOfPoint(playerid,3.0, 2202.0217,-2277.7087,13.5547) || IsPlayerInRangeOfPoint(playerid, 3.0, 2208.5117,-2267.9438,13.5547) 
	    	|| IsPlayerInRangeOfPoint(playerid, 3.0, 2214.7942,-2259.0815,13.5547) || IsPlayerInRangeOfPoint(playerid, 3.0, 2220.8542,-2250.8599,13.5547) 
	    	|| IsPlayerInRangeOfPoint(playerid, 3.0, 2228.5010,-2243.1331,13.5547) || IsPlayerInRangeOfPoint(playerid, 3.0, 2194.6924,-2226.7029,13.5425) || IsPlayerInRangeOfPoint(playerid, 3.0, 2202.6680,-2218.9749,13.5469) || IsPlayerInRangeOfPoint(playerid, 3.0, 2208.2205,-2211.1604,13.5469))
        {
	           if(GetPVarInt(playerid, "DangVacThungHang") == 1)
	           {
			        new cash = 3000+random(4000);
			        PlayerInfo[playerid][pCash] += cash;
		            new string[1280];
		            format(string, sizeof(string), "{FFFFFF}Ban da giao thanh cong thung hang va nhan duoc ({00ff00}%d${ffffff})", cash);
			        SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
		            HienTextdraw(playerid, "~r~Giao Thung Hang Thanh Cong !");
			        DisablePlayerCheckpoint(playerid);
			        onBocVacX[playerid] = false;
			        SetPVarInt(playerid, "DangVacThungHang", 0);
			        SetPVarInt(playerid, "DangLayThungHang", 0);
					ClearAnimations(playerid);
				    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
				    ApplyAnimation(playerid, "carry", "putdwn", 1, 0, 1, 1, 0, 1000);
			        RemovePlayerAttachedObject(playerid, 9);
		        }else return SendClientMessageEx(playerid, COLOR_GREY, "{ff0000}[!]{FFFFFF} Ban dang gap 1 truc trac gi do vui long thu lai !!");
          }else
		  {
           SetPVarInt(playerid, "DangLayThungHang", 0);
           SetPVarInt(playerid, "DangVacThungHang", 0);
           ClearAnimations(playerid);
           RemovePlayerAttachedObject(playerid, 9);
		   SendClientMessageEx(playerid, COLOR_GREY, "{ff0000}[!]{FFFFFF} Vui long thu lai");
          }
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES)
	{
	    if(IsPlayerInRangeOfPoint(playerid,3.0,2172.4666,-2250.5095,13.3025))
	    {
				if(PlayerInfo[playerid][pJob] == 32 || PlayerInfo[playerid][pJob2] == 32)
				{
					if(GetPVarInt(playerid, "DangLayThungHang") == 0)
		            {
			             SetTimerEx("BocVacTime", Time_BocVac*1000, 0, "ii", playerid);
				         SetPVarInt(playerid, "BocVacTG", 10);
				         SetTimerEx("BocVacTG", 1000, 0, "d", playerid);
				         TogglePlayerControllable(playerid, false);
				         SetPVarInt(playerid, "DangLayThungHang", 1);
				         ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 3.0,1,1,0,0,0);
		            }else return SendClientMessageEx(playerid, COLOR_GREY, "{ffff00}Ban dang vac thung hang khong the vac tiep!!");
				}else return SendClientMessageEx(playerid, COLOR_GREY, "{ffff00}Ban khong phai nguoi trong boc vac");
         }
    }
	return 1;

}


forward BocVacTG(playerid);
public BocVacTG(playerid)
{
    SetPVarInt(playerid, "BocVacTG", GetPVarInt(playerid, "BocVacTG")-1);
    new string[1280];
    format(string, sizeof(string), "~w~Ban dang lay hang vui long doi %d giay de thao tac.", GetPVarInt(playerid, "BocVacTG"));
    HienTextdraw(playerid, string);

    if(GetPVarInt(playerid, "BocVacTG") > 0) SetTimerEx("BocVacTG", 1000, 0, "d", playerid);
    return 1;
}
forward BocVacTime(playerid);
public BocVacTime(playerid)
{
	new rand = random(sizeof(cpbocvac));
    TogglePlayerControllable(playerid, true);
    SendClientMessageEx(playerid, COLOR_GREY, "{FF0000}[BOC VAC]{FFFFFF} Hay giao thung hang nay den vi tri radar tren ban do {FF0000}!{FFFFFF}");
    SetPlayerCheckpoint(playerid,cpbocvac[rand][Bocvac_X],cpbocvac[rand][Bocvac_Y],cpbocvac[rand][Bocvac_Z],3.0);
    CheckHack[playerid] = gettime() + 3;
    onBocVacX[playerid] = true;
    ApplyAnimation(playerid, "carry", "liftup", 1, 0, 1, 1, 0, 1000);
    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
    SetPlayerAttachedObject(playerid, 9, 2912, 1,-0.08, 0.5, 0.0,0.00, 90.00, 0.00,1.0, 1.0, 1.0);
    SetPVarInt(playerid, "DangVacThungHang", 1);
	return 1;
}
