#include <YSI\y_hooks>


#define POS_MUAVATLIEUXAYDUNG				1128.1322,-1568.1256,13.3575
#define POS_GIAOVATLIEU						1971.5483,-1978.3693,13.5469
#define POS_TRONXIMANG						2078.2480,-2028.1224,14.7310

#define POS_KETOAN							2028.9573,-2006.8597,13.5469
#define POS_KINHDOANH						2035.1407,-2017.2462,13.5469
#define POS_LETAN							2036.7697,-2031.3214,13.5469

new WorkerVeh[10];

enum xaydungpos
{
	Float:PosX,
	Float:PosY,
	Float:PosZ,
	Type
}

new worker[][xaydungpos] =
{
	{POS_KETOAN},
	{POS_KINHDOANH},
	{POS_LETAN}
};

stock IsAWorkerVeh(carid)
{
	for(new v = 0; v < sizeof(WorkerVeh); v++) {
	    if(carid == WorkerVeh[v]) return 1;
	}
	return 0;
}

hook OnGameModeInit()
{
	WorkerVeh[0] =  AddStaticVehicleEx(422,12014.9536,-2061.7026,13.5331,357.2888,2,2,300); 
	WorkerVeh[1] =  AddStaticVehicleEx(422,2015.0886,-2061.7026,13.5248,357.2888,2,2,300); //Bobcat
	WorkerVeh[2] =  AddStaticVehicleEx(422,2019.3875,-2061.7026,13.5501,357.2888,2,2,300); //Bobcat
	WorkerVeh[3] =  AddStaticVehicleEx(422,2023.1543,-2061.7026,13.5326,357.2888,2,2,300); //Bobcat
	WorkerVeh[4] =  AddStaticVehicleEx(422,2026.9225,-2061.7026,13.5045,357.2888,2,2,300); //Bobcat

	CreateDynamic3DTextLabel("Cua hang vat lieu xay dung\n{0796EA}/muavatlieuxaydung tai day", -1, POS_MUAVATLIEUXAYDUNG+0.5, 20.0);//muavatlieuxaydung
	CreateDynamicPickup(1239, 23, POS_MUAVATLIEUXAYDUNG); 
	CreateDynamic3DTextLabel("Dia diem tron xi mang\n{0796EA}/tronximang tai day", -1, 2077.6919,-2028.1107,14.7090+0.5, 20.0);//tronximang
	CreateDynamicPickup(1239, 23, 2077.6919,-2028.1107,14.7090); 

	CreateDynamicPickup(1239, 23, POS_KINHDOANH); 
	CreateDynamicPickup(1239, 23, POS_KETOAN); 
	CreateDynamicPickup(1239, 23, POS_LETAN); 

	CreateDynamic3DTextLabel("Worker Job\n{0796EA}/nhanviec{d31b15}\n{ed8406}/nghiviec\n{ff0092}/lanhluong", -1, POS_WORKER+0.5, 20.0);// worker
	CreateActor(2, POS_WORKER, 95);
}

hook OnPlayerEnterCheckpoint(playerid)
{
	if(GetPVarInt(playerid,"postronximang") == 1)
	{
		if(IsPlayerInRangeOfPoint(playerid,3.0,POS_TRONXIMANG))
		{
			DeletePVar(playerid,"tronximang");
			DisablePlayerCheckpoint(playerid);
			SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} da den dia diem , hay dung lenh {1f9dc4}/tronximang");
		}
	}
	if(GetPVarInt(playerid,"cp") > 0)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) return SendClientMessageEx(playerid, COLOR_WHITE, "Khong the lam dieu nay khi dang tren xe");
		DisablePlayerCheckpoint(playerid);
		TogglePlayerControllable(playerid, 0);
		ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
		SetTimerEx("dangxaydung", 15000, 0, "d", playerid); // 10s
		GameTextForPlayer(playerid, "dang xay dung cong trinh", 15000, 5);
	}
	if(GetPVarInt(playerid,"muavlxd") > 0)
	{
		SendClientMessage(playerid,COLOR_WHITE,"Hay dung lenh {1f9dc4}/muavatlieuxaydung");
		DeletePVar(playerid,"muavlxd");
		DisablePlayerCheckpoint(playerid);
	}
	new vehicleid = GetPlayerVehicleID(playerid);				
	new string[200];
	if(IsPlayerInRangeOfPoint(playerid,6,POS_GIAOVATLIEU))
	{
		if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec xe");
		if(GetPVarInt(playerid, "baocat") >= 1) 
		{
			if(!IsAWorkerVeh(vehicleid))
			{
				SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong xe {1f9dc4}{ffffff}bobcat cua {1f9dc4}cong nhan");
				return 1;
			}
			DeletePVar(playerid,"baocat");
			PlayerInfo[playerid][pbaocat] +=1;
			format(string, sizeof(string), "{1f9dc4}[CUA HANG]{ffffff} Ban nhan duoc mot{1f9dc4} bao cat{ffffff}, so {1f9dc4}bao cat{ffffff} hien tai: %d", PlayerInfo[playerid][pbaocat]);		
			SendClientMessage(playerid, COLOR_WHITE, string);
			SendClientMessage(playerid, -1 , "{1f9dc4}[CUA HANG]{ffffff}Neu da du {1f9dc4}1 bao cat {ffffff}va {1f9dc4}1 bao xi mang {ffffff}hay dung lenh {ffffff}/tronximang");
			DisableCheckPoint(playerid);
		}
		else if(GetPVarInt(playerid, "ximang") >= 1) 
		{
			if(!IsAWorkerVeh(vehicleid))
			{
				SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong xe bobcat cua cong nhan");
				return 1;
			}
			DeletePVar(playerid,"ximang");
			PlayerInfo[playerid][pximang] +=1;
			format(string, sizeof(string), "{1f9dc4}[CUA HANG]{ffffff} Ban nhan duoc mot {1f9dc4}xi mang{ffffff}, so {1f9dc4}xi mang{ffffff} hien tai: %d", PlayerInfo[playerid][pximang]);		
			SendClientMessage(playerid, COLOR_WHITE, string);
			DisablePlayerCheckpoint(playerid);
		}
	}
	return 1;
}
hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(IsAWorkerVeh(vehicleid))
		{
			if(PlayerInfo[playerid][pJob] != 30 && PlayerInfo[playerid][pJob2] != 30)
			{
				new Float:slx, Float:sly, Float:slz;
				GetPlayerPos(playerid, slx, sly, slz);
				SetPlayerPos(playerid, slx, sly, slz+1.3);
				PlayerPlaySound(playerid, 1130, slx, sly, slz+1.3);
				RemovePlayerFromVehicle(playerid);
				defer NOPCheck(playerid);
				SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong phai la mot cong nhan");
			}
			else 
			{
				SendClientMessage(playerid, COLOR_WHITE, "Su dung lenh {1f9dc4}/muavatlieuxaydung{ffffff} de lam viec nhe");
			}
		}
	return 1;
}
CMD:tronximang(playerid, params[])
{
	if(PlayerInfo[playerid][pbaocat] < 1) return SendClientMessage(playerid, -1, "Ban khong co du {1f9dc4}bao cat{ffffff}, hay /muavatlieuxaydung.");
	if(PlayerInfo[playerid][pximang] < 1) return SendClientMessage(playerid, -1, "Ban khong co du {1f9dc4}xi mang{ffffff}, hay /muavatlieuxaydung.");
	if(IsPlayerInRangeOfPoint(playerid,3.0, POS_TRONXIMANG))
	{
		if(PlayerInfo[playerid][pJob] == 30 || PlayerInfo[playerid][pJob2] == 30)
		{
			PlayerInfo[playerid][pbaocat] -= 1;
			PlayerInfo[playerid][pximang] -=1;
			ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
			SetTimerEx("tronximang", 30000, 0, "d", playerid); // 30s
			TogglePlayerControllable(playerid, 0);
			GameTextForPlayer(playerid, "Dang tron xi mang", 30000, 5);
			return 1;
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong phai la mot cong nhan");
			return 1;
		}
	}
	else
	{
		SetPlayerCheckpoint(playerid,POS_TRONXIMANG, 3.0);					
		SendClientMessage(playerid, -1,"{1f9dc4}[WORKER]{ffffff} Ban khong o dia diem tron xi mang. Hay di chuyen den dia diem tren ban do");
		SetPVarInt(playerid,"postronximang",1 );
	}
	return 1;
}
CMD:dungcongviec(playerid, params[])
{
	SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} Hay den NPC WORKER de nhan luong! (luong = so lan lam viec * 4k)");
	new string[200];
	format(string, sizeof(string), "{1f9dc4}[WORKER]{ffffff} so gio cong cua ban la: %d", PlayerInfo[playerid][pFinishWork]);
	SendClientMessage(playerid, -1, string);
	DisablePlayerCheckpoint(playerid);
	SetPVarInt(playerid,"cp", 0);
	return 1;
}
CMD:lanhluong(playerid, params[])
{
	if(GetPVarInt(playerid,"cp") > 0) return SendClientMessage(playerid, -1, "[WORKER] Ban phai dung cong viec truoc {1f9dc4}(/dungcongviec)");
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) return SendClientMessageEx(playerid, COLOR_WHITE, "Khong the lam dieu nay khi dang tren xe");
	if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_WORKER))
	{
		new string[200];
		new tienluong = PlayerInfo[playerid][pFinishWork] * 3000;
		new giocong = PlayerInfo[playerid][pFinishWork];
		format(string,sizeof(string), "{1f9dc4}[WORKER]{ffffff} Ban nhan duoc {1f9dc4}%d {ffffff}tien luong cho {1f9dc4}%d {ffffff}gio cong", tienluong, giocong);
		SendClientMessage(playerid, -1, string);
		PlayerInfo[playerid][pCash] += tienluong;
		PlayerInfo[playerid][pFinishWork] -= giocong;
		return 1;
	}
	return 1;
}
CMD:muavatlieuxaydung(playerid, params[])
{
	if(GetPVarInt(playerid, "baocat") >= 1) return SendClientMessage(playerid, -1, "{1f9dc4}[CUA HANG]{ffffff}Ban da nhan mot bao vat lieu roi");
	if(GetPVarInt(playerid, "ximang") >= 1) return SendClientMessage(playerid, -1, "{1f9dc4}[CUA HANG]{ffffff}Ban da nhan mot bao vat lieu roi");
    if(PlayerInfo[playerid][pCash] < 5000) return SendClientMessage(playerid, COLOR_WHITE,"{1f9dc4}[CUA HANG]{ffffff} Ban khong co du {1f9dc4}5,000$ {ffffff}de mua");
	if(PlayerInfo[playerid][pJob] == 30 || PlayerInfo[playerid][pJob2] == 30)
    {
    	if(IsPlayerInRangeOfPoint(playerid, 3.0, POS_MUAVATLIEUXAYDUNG))
		{
			new chon[32];
			if(sscanf(params, "s[32]", chon))
			{
				SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /muavatlieuxaydung");
				SendClientMessageEx(playerid, COLOR_GREY, "chon: baocat - ximang");
				return 1;
			}
			else if(strcmp(chon,"baocat",true) == 0)
			{
				SendClientMessage(playerid, COLOR_WHITE,"{1f9dc4}[CUA HANG]{ffffff} Ban vua mua mot {1f9dc4}bao cat{ffffff} , hay giao den checkpoint {1f9dc4}Cong Truong.");
				SetPVarInt(playerid, "baocat", 1);
				SetPlayerCheckpoint(playerid, POS_GIAOVATLIEU, 5);
				PlayerInfo[playerid][pCash] -=5000;
			}
			else if(strcmp(chon,"ximang",true) == 0)
			{
				SendClientMessage(playerid, COLOR_WHITE,"{1f9dc4}[CUA HANG]{ffffff} Ban vua mua mot {1f9dc4}xi mang{ffffff} , hay giao den checkpoint {1f9dc4}Cong Truong.");
				SetPVarInt(playerid, "ximang", 1);
				SetPlayerCheckpoint(playerid, POS_GIAOVATLIEU, 5);
				PlayerInfo[playerid][pCash] -=5000;
			}					
		}	
		else
		{
		SetPlayerCheckpoint(playerid, POS_MUAVATLIEUXAYDUNG,3.0);
		SendClientMessage(playerid, COLOR_WHITE,"{1f9dc4}[CUA HANG]{ffffff} ban khong o market, hay di den do de mua vat lieu");
		SetPVarInt(playerid, "muavlxd", 1);
		return 1;	
		}		
    }
	return 1;  
}

stock xaydung(playerid)
{
	new randworker = random(sizeof(worker));
	SetPlayerCheckpoint(playerid, worker[randworker][PosX], worker[randworker][PosY], worker[randworker][PosZ], 5);
	if(randworker == 1)
	{
		SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} Hay den tram xi mang phong le tan");
		SetPVarInt(playerid,"cp", 1);
	}
	else if(randworker == 2)
	{
		SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} san nha cua phong kinh doanh bi nut");
		SetPVarInt(playerid,"cp", 2);
	}
	else 
	{
		SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} Ke toan can xay lai them cua so");
		SetPVarInt(playerid,"cp", 3);
	}
}
forward tronximang(playerid);
public tronximang(playerid)
{
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Cong viec - Cong nhan", "Hay di den diem trong toa nha.", "OK", "");
	TogglePlayerControllable(playerid, 1);
	xaydung(playerid);
	
}

forward dangxaydung(playerid);
public dangxaydung(playerid)
{
	PlayerInfo[playerid][pFinishWork] += 1;
	TogglePlayerControllable(playerid, 1);
	SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} Hay di chuyen den dia diem tiep theo hoac {1f9dc4}/dungcongviec");
	SendClientMessage(playerid, -1, "{1f9dc4}[WORKER]{ffffff} ban nhan duoc them 2xp tu cong viec cua {1f9dc4}newbie");
	PlayerInfo[playerid][pXP] +=2;
	PlayerInfo[playerid][pFinishWork] +=1;

	if(GetPVarInt(playerid, "cp") > 0 )
	{
		xaydung(playerid);
	}
}



