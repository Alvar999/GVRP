#include <a_samp>
#include <YSI\y_hooks>

#define    DIALOG_LAYHANGContainer         (9528)
#define    Time_LayHangContainer  10
#define    Time_LayHangContainer2  10
#define    Time_LayHangContainer3  10

new bool:onContainerX[MAX_PLAYERS];
new bool:onContainerS[MAX_PLAYERS];
new bool:onContainerC[MAX_PLAYERS];
new bool:onContainerZ[MAX_PLAYERS];
new bool:onContainerB[MAX_PLAYERS];
new bool:onContainerV[MAX_PLAYERS];
new bool:Container_Lock = false;
new Trailer[MAX_PLAYERS];
new CheckHack[MAX_PLAYERS];


stock ResetContainer()
{
	Container_Lock = False;
}


stock MoContainer()
{
	Container_Lock = True;
}
//================================ CMD =======================================//
CMD:rsxecontainer(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4)
	{
		for(new i = 0; i < sizeof(ContainerVehicles); i++)
		{
			if(!IsVehicleOccupied(ContainerVehicles[i]))
			{
				SetVehicleVirtualWorld(ContainerVehicles[i], 0);
				LinkVehicleToInterior(ContainerVehicles[i], 0);
				SetVehicleToRespawn(ContainerVehicles[i]);
			}
		}
		SendClientMessageEx(playerid, COLOR_GREY, "Ban da reset toan bo phuong tien Container Delivery.");
	}
	return 1;
}

CMD:huybocontainer(playerid, params[])	{
	if(PlayerInfo[playerid][pJob] == 33 || PlayerInfo[playerid][pJob2] == 33)
	{
		if(GetPVarInt(playerid, "Dalayhangcontainer") == 1)
	    {
		    onContainerX[playerid] = false;
		    onContainerS[playerid] = false;
		    onContainerC[playerid] = false;
		    onContainerV[playerid] = false;
		    onContainerB[playerid] = false;
		    onContainerZ[playerid] = false;
			DisablePlayerCheckpoint(playerid);
			SetPVarInt(playerid, "Dalayhangcontainer", 0);
			SendClientMessage(playerid, COLOR_YELLOW, "{175193}[Container Delivery]{ffffff}: Ban da huy bo thung hang container delivery.");
		    DestroyVehicle(Trailer[playerid]);
		} else return SendClientMessageEx(playerid, COLOR_GREY,"Ban hien tai khong co thung hang container nao.");
	}
	return 1;
}

CMD:khoacontainer(playerid, params[]) // Lenh khoa job
{
    if(PlayerInfo[playerid][pAdmin] >= 1338)
    {
        if(!Container_Lock)
        {
            new string[128];
            Container_Lock = true;
            format(string, sizeof(string), "[JOB SYSTEM]: {FFAF00}Admin %s Da khoa Container vi het gio lam viec, vui long quay lai vao sang mai.", GetPlayerNameEx(playerid));
            SendClientMessageToAllEx(COLOR_WHITE, string);
        }
        else
        {
            new string[128];
            format(string, sizeof(string), "[JOB SYSTEM]: {FFAF00}Admin %s Da mo khoa Container hay quay tro lai cong viec.", GetPlayerNameEx(playerid));
            SendClientMessageToAllEx(COLOR_WHITE, string);
            Container_Lock = false;
        }
    }
    return 1;
}
//===================================DIALOG======================================//
Dialog:CONTAINERLOG(playerid, response, listitem, inputtext[]) 
{
    if(response)
    {
       	if(listitem == 0) // Thuc Pham LOS SANTOS
	    {
			SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban dang lay hang vui long cho trong giay lat.");
            SetPVarInt(playerid, "ContainerTG", 10);
            SetTimerEx("ContainerTG", 1000, 0, "d", playerid);
            TogglePlayerControllable(playerid, false);
            SetPVarInt(playerid, "Dalayhangcontainer", 1);
		    Trailer[playerid] = CreateVehicle(435, 2742.1401,-2431.0876,13.3426,267.0903, 0, random(255), random(255), 60 * 10);
            SetTimerEx("LayHangContainer", Time_LayHangContainer*1000, 0, "ii", playerid);
			return 1;
		}
		if(listitem == 1) //Quan Ao Verona Beach
	    {
			SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban dang lay hang vui long cho trong giay lat.");
            SetPVarInt(playerid, "ContainerTG", 10);
            SetTimerEx("ContainerTG", 1000, 0, "d", playerid);
            TogglePlayerControllable(playerid, false);
            SetPVarInt(playerid, "Dalayhangcontainer", 1);
		    Trailer[playerid] = CreateVehicle(435, 2742.1401,-2431.0876,13.3426,267.0903, 0, random(255), random(255), 60 * 10);
            SetTimerEx("LayHangContainer2", Time_LayHangContainer2*1000, 0, "ii", playerid);
			return 1;
		}
		if(listitem == 2) //Vat Lieu Mullholand
	    {
			SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban dang lay hang vui long cho trong giay lat.");
            SetPVarInt(playerid, "ContainerTG", 10);
            SetTimerEx("ContainerTG", 1000, 0, "d", playerid);
            TogglePlayerControllable(playerid, false);
            SetPVarInt(playerid, "Dalayhangcontainer", 1);
		    Trailer[playerid] = CreateVehicle(450, 2742.1401,-2431.0876,13.3426,267.0903, 0, random(255), random(255), 60 * 10);
            SetTimerEx("LayHangContainer3", Time_LayHangContainer2*1000, 0, "ii", playerid);
			return 1;
		}
	}
    return 1;
}
//==================================Hook========================================//
hook OnPlayerDisconnect(playerid, reason)		{
	if(PlayerInfo[playerid][pJob] == 33 || PlayerInfo[playerid][pJob2] == 33)
	{
		if(GetPVarInt(playerid, "Dalayhangcontainer") == 1)
	    {
		    onContainerX[playerid] = false;
		    onContainerS[playerid] = false;
		    onContainerC[playerid] = false;
		    onContainerV[playerid] = false;
		    onContainerB[playerid] = false;
		    onContainerZ[playerid] = false;
			DisablePlayerCheckpoint(playerid);
			SetPVarInt(playerid, "Dalayhangcontainer", 0);
			SendClientMessage(playerid, COLOR_YELLOW, "{175193}[Container Delivery]{ffffff}: Ban da huy bo thung hang container.");
		    DestroyVehicle(Trailer[playerid]);
		} else return SendClientMessageEx(playerid, COLOR_GREY,"Ban hien tai khong co thung hang container nao.");
	}
	return 1;
}
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if(IsPlayerInRangeOfPoint(playerid, 5.0, 2769.0454,-2452.2751,13.6432))
	    {
	    	if(PlayerInfo[playerid][pJob] == 33 || PlayerInfo[playerid][pJob2] == 33)
	    	{
			    new vehicleid = GetPlayerVehicleID(playerid);
		        if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		        {
			        if(GetPVarInt(playerid, "Dalayhangcontainer") == 0)
	                {
	                	Dialog_Show(playerid, CONTAINERLOG, DIALOG_STYLE_LIST, "> Chon vat pham","Thuc Pham (Market Los Santos)\nQuan Ao (Verona Beach)\nVat Lieu (Muholland)", "Chon", "Huy bo");
			        }else return SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da lay hang roi khong the lay tiep!");
			    }else return SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban khong lai Xe Container !!");
	    	} else return SendClientMessageEx(playerid, COLOR_GREY, "Ban chua nhan cong viec container delivery.");
	    }
	}
    return 1;
}

hook OnPlayerExitVehicle(playerid, vehicleid, params[])
{
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
    if(onContainerX[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
          new trailer = GetVehicleTrailer(vehicleid);
	      if(IsTrailerAttachedToVehicle(vehicleid) && trailer == Trailer[playerid])
          {
	          if(IsPlayerInRangeOfPoint(playerid,10.0,1087.8306,-1389.3949,13.7712))
	          {
		          SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}:  Ban da van chuyen thung hang container delivery thanh cong.");
		          SetPlayerCheckpoint(playerid, 2769.0454,-2452.2751,13.6432, 10.0);
		          PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
		          onContainerX[playerid] = false;
		          onContainerS[playerid] = true;
	          }else
			  {
				  DestroyVehicle(Trailer[playerid]);
				  SendClientMessageEx(playerid, COLOR_GREY, "Vui long thu lai");
		      }
	       }else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co thung hang nao ca !");
	    }else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    if(onContainerS[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
	          if(IsPlayerInRangeOfPoint(playerid,10.0,2769.0454,-2452.2751,13.6432))
	          {
		        new cash = 25000+random(35000);
		        PlayerInfo[playerid][pCash] += cash;
	            new string[1280];
	            format(string, sizeof(string), "{FFFFFF}Ban da van chuyen thanh thanh thung hang container delivery {3e9125}(Food Market Los SanTos){ffffff} so tien nhan duoc la ({00ff00}%d${ffffff})", cash);
		        SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
	            SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao thung hang container thanh cong");
		        DisablePlayerCheckpoint(playerid);
		        if(IsAContainerCar(vehicleid)) SetVehicleToRespawn(vehicleid);
		        DestroyVehicle(Trailer[playerid]);
		        onContainerS[playerid] = false;
		        SetPVarInt(playerid, "Dalayhangcontainer", 0);
	          }
	    }
	    else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    // DON HANG 2
    if(onContainerZ[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
	      new trailer = GetVehicleTrailer(vehicleid);
	      if(IsTrailerAttachedToVehicle(vehicleid) && trailer == Trailer[playerid])
          {
	          if(IsPlayerInRangeOfPoint(playerid,10.0,789.6647,-1762.5009,13.3628))
	          {
		          SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da giao thanh cong chuyen hang Container.");
		          SetPlayerCheckpoint(playerid, 2769.0454,-2452.2751,13.6432, 10.0);
		          PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
		          onContainerZ[playerid] = false;
		          onContainerC[playerid] = true;
	          }else return SendClientMessageEx(playerid, COLOR_GREY, "Vui Long Thu Lai !");
	       }else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co thung hang nao ca !");
	    }else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    if(onContainerC[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
          if(IsPlayerInRangeOfPoint(playerid,10.0,2769.0454,-2452.2751,13.6432))
          {
	        new cash = 25000+random(35000);
	        PlayerInfo[playerid][pCash] += cash;
            new string[1280];
            format(string, sizeof(string), "{FFFFFF}Ban da van chuyen thanh thanh thung hang container delivery {3e9125}(Clothes Verona Beach){FFFFFF} so tien nhan duoc la ({00ff00}%d${ffffff})", cash);
	        SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
            SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao thung hang container thanh cong");
	        DisablePlayerCheckpoint(playerid);
	        if(IsAContainerCar(vehicleid)) SetVehicleToRespawn(vehicleid);
	        DestroyVehicle(Trailer[playerid]);
	        onContainerC[playerid] = false;
	        SetPVarInt(playerid, "Dalayhangcontainer", 0);
          }
	    }
	    else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    // DON HANG 3
    if(onContainerB[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
	      new trailer = GetVehicleTrailer(vehicleid);
	      if(IsTrailerAttachedToVehicle(vehicleid) && trailer == Trailer[playerid])
          {
	          if(IsPlayerInRangeOfPoint(playerid,10.0,1460.6418,-1042.6583,23.8281))
	          {
		          SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da van chuyen hang container delivery thanh cong.");
		          SetPlayerCheckpoint(playerid, 2769.0454,-2452.2751,13.6432, 10.0);
		          PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
		          onContainerB[playerid] = false;
		          onContainerV[playerid] = true;
	          }else return SendClientMessageEx(playerid, COLOR_GREY, "Vui Long Thu Lai !");
          }else return SendClientMessageEx(playerid, COLOR_GREY, " Ban khong co thung hang nao ca !");
	    }else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    if(onContainerV[playerid]) // if it's true
    {
        new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsAContainerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
          if(IsPlayerInRangeOfPoint(playerid,10.0,2769.0454,-2452.2751,13.6432))
          {
	        new cash = 30000+random(35000);
	        PlayerInfo[playerid][pCash] += cash;
	        //
	        new vatlieu = 1500+random(3000);
	        PlayerInfo[playerid][pMats] += vatlieu;
	        new randomxp = 10 + random(50);
	        PlayerInfo[playerid][pXP] += randomxp;
            new string[1280];
            format(string, sizeof(string), "{FFFFFF}Ban da van chuyen thanh thanh thung hang container delivery {3e9125}(Marterial Mullholand){FFFFFF} so tien nhan duoc la ({00ff00}%d${ffffff}) (Bonus : %d Vat Lieu)", cash, vatlieu);
	        SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
            SendClientMessageEx(playerid, COLOR_YELLOW,"Ban da Ban da giao thung hang container thanh cong");
	        DisablePlayerCheckpoint(playerid);
	        if(IsAContainerCar(vehicleid)) SetVehicleToRespawn(vehicleid);
	        DestroyVehicle(Trailer[playerid]);
	        onContainerV[playerid] = false;
	        SetPVarInt(playerid, "Dalayhangcontainer", 0);
          }
	    }
	    else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong lai chiec xe tai cho hang hoa yeu cau!");
    }
    return 1;
}
forward ContainerTG(playerid);
public ContainerTG(playerid)
{
    SetPVarInt(playerid, "ContainerTG", GetPVarInt(playerid, "ContainerTG")-1);
    new string[1280];
    format(string, sizeof(string), "~w~Ban dang lay hang vui long doi %d giay.", GetPVarInt(playerid, "ContainerTG"));
    HienTextdraw(playerid, string);

    if(GetPVarInt(playerid, "ContainerTG") > 0) SetTimerEx("ContainerTG", 1000, 0, "d", playerid);
    return 1;
}
forward LayHangContainer(playerid);
public LayHangContainer(playerid)
{
    SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da lay thung hang container vui long giao den {FF0000}Radar{ffffff} {3e9125}(Market Los Santos){FFFFFF}.");
    SetPlayerCheckpoint(playerid, 1087.8306,-1389.3949,13.7712, 10.0);
    onContainerX[playerid] = true;
    SetTimerEx("AttachTrailer", 1000, 0, "d", playerid);
	return 1;
}
forward LayHangContainer2(playerid);
public LayHangContainer2(playerid)
{
    SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da lay hang thanh cong vui long giao den vi tri tren {FF0000}Radar{ffffff} {3e9125}(Verona Beach){FFFFFF}.");
    SetPlayerCheckpoint(playerid, 789.6647,-1762.5009,13.3628, 10.0);
    onContainerZ[playerid] = true;
    SetTimerEx("AttachTrailer", 1000, 0, "d", playerid);
	return 1;
}
forward LayHangContainer3(playerid);
public LayHangContainer3(playerid)
{
    SendClientMessageEx(playerid, COLOR_GREY, "{175193}[Container Delivery]{ffffff}: Ban da lay hang thanh cong vui long giao den vi tri tren {FF0000}Radar{ffffff} {3e9125}(Muholland){ffffff}.");
    SetPlayerCheckpoint(playerid, 1460.6418,-1042.6583,23.8281, 10.0);
    onContainerB[playerid] = true;
    SetTimerEx("AttachTrailer", 1000, 0, "d", playerid);
	return 1;
}
forward AttachTrailer(playerid);
public AttachTrailer(playerid)
{
    new Float:pX, Float:pY, Float:pZ;
    GetPlayerPos(playerid,pX,pY,pZ);
    new Float:vX, Float:vY, Float:vZ;
    GetVehiclePos(Trailer[playerid],vX,vY,vZ);
    if((floatabs(pX-vX)<100.0)&&(floatabs(pY-vY)<100.0)&&(floatabs(pZ-vZ)<100.0)&&(Trailer[playerid]!=GetPlayerVehicleID(playerid)))  AttachTrailerToVehicle(Trailer[playerid],GetPlayerVehicleID(playerid));
    TogglePlayerControllable(playerid, true);
    return 1;
}
