#include <YSI\y_hooks>

#define 		LOAD_FOOD 					"Foods/%d.ini"
#define 		MAX_FOOD 					100

enum INFOFOOD
{
    IDObjectFood,
    ActorFood,
    Float:PosActor[4],
    Float:PosFood[4],
};
new Text3D:LabelFood[MAX_FOOD], LoadFood, Food[MAX_PLAYERS], FoodInfo[MAX_FOOD][INFOFOOD];

forward ThoiGianDoiBung(playerid);
public ThoiGianDoiBung(playerid)
{
	DeletePVar(playerid, "Dangdemthoigian");
	TogglePlayerControllable(playerid, 1);
	SendClientMessageEx(playerid, COLOR_RED, "Ban da duoc 1 it suc khoe vui long di an");
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	SaveFoods();
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_NO)
	{
		for(new i = 0; i < sizeof(FoodInfo); i++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 3.0, FoodInfo[i][PosFood][0],FoodInfo[i][PosFood][1],FoodInfo[i][PosFood][2]))
			{
				for(new o = 0; i < 13; o++)
				{
					PlayerTextDrawShow(playerid, FoodShop[playerid][o]);
					SelectTextDraw(playerid, 0x00FF00FF);
					SetPVarInt(playerid, "SelectFood", 1);
				}
			}
		}
    }
    return 1;
}

CMD:taoquaythucan(playerid, params[]){
  	new string[2560],Float:X,Float:Y,Float:Z,Float:A,Float:MOVER_X, Float:MOVER_Y, Float:MOVER_Z, CreateFood = LoadFood+1, string1[50];
  	if(PlayerInfo[playerid][pAdmin] < 1337)
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay!");
        return 1;
    }
 	if(CreateFood >= MAX_FOOD) return SendClientMessage(playerid, -1, "{FF0000}[!] {FFFFFF}Ban khong the tao them quay thuc an nua!");
 	format(string, sizeof(string), LOAD_FOOD, CreateFood);
 	if(dini_Exists(string))
 	{
	    TaiFood();
	  	format(string, sizeof(string), "{FF0000}[!] {FFFFFF}Quay thuc an ID: {1FDE22}%d {FFFFFF}da ton tai trong may chu.", CreateFood);
	  	SendClientMessage(playerid, -1, string);
	}
	else
 	{
	  	GetPlayerPos(playerid, MOVER_X, MOVER_Y, MOVER_Z),GetPlayerPos(playerid, X,Y,Z),GetPlayerFacingAngle(playerid, A);

	  	FoodInfo[CreateFood][PosFood][0] = X;
	  	FoodInfo[CreateFood][PosFood][1] = Y;
	  	FoodInfo[CreateFood][PosFood][2] = Z;
	  	FoodInfo[CreateFood][PosFood][3] = A;

	  	FoodInfo[CreateFood][PosActor][0] = X;
	  	FoodInfo[CreateFood][PosActor][1] = Y;
	  	FoodInfo[CreateFood][PosActor][2] = Z;
	  	FoodInfo[CreateFood][PosActor][3] = A;
	  	dini_Create(string);

	  	dini_IntSet(string, "IDObjectFood", FoodInfo[CreateFood][IDObjectFood]);
	  	dini_IntSet(string, "ActorFood", FoodInfo[CreateFood][ActorFood]);
	  	for(new i = 0; i < 4; i++){
	  		format(string1,sizeof(string1), "PosFoods%d", i);
	   		dini_FloatSet(string, string1, FoodInfo[CreateFood][PosFood][i]);
		}
		for(new o = 0; o < 4; o++){
	  		format(string1,sizeof(string1), "PosFoods%d", o);
	   		dini_FloatSet(string, string1, FoodInfo[CreateFood][PosActor][o]);
		}
	  	Food[playerid] = 0;
	  	TaiFood();
	  	FoodInfo[CreateFood][ActorFood] = CreateActor(155, FoodInfo[CreateFood][PosActor][0]-1, FoodInfo[CreateFood][PosActor][1], FoodInfo[CreateFood][PosActor][2], FoodInfo[CreateFood][PosActor][3]+38);
	  	FoodInfo[CreateFood][IDObjectFood] = CreateDynamicObject(1340, FoodInfo[CreateFood][PosFood][0], FoodInfo[CreateFood][PosFood][1], FoodInfo[CreateFood][PosFood][2], 0, 0, FoodInfo[CreateFood][PosFood][3]+90);
	  	format(string, sizeof(string), "{3d4fc8}[FOOD GVRP.VN]{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de mua thuc an---\n(ID: {00ffff}%d{FFFFFF}).", CreateFood);
	    LabelFood[CreateFood] = CreateDynamic3DTextLabel(string, -1, FoodInfo[CreateFood][PosFood][0], FoodInfo[CreateFood][PosFood][1], FoodInfo[CreateFood][PosFood][2]+0.5,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,0,-1,-1, 100.0);

	  	SendClientMessage(playerid, -1, "{FF0000}[!] {FFFFFF}Ban da tao quay thuc an thanh cong!");
	  	SetPlayerPos(playerid, MOVER_X, MOVER_Y+1.0, MOVER_Z);
	}
	return 1;
}

CMD:xoaquaythucan(playerid, params[]){
	new IDFood, string[127], string1[128];
	if(sscanf(params, "d", IDFood))return SendClientMessage(playerid,-1,"{FFFF00}[!] {FFFFFF}Lenh: {1FDE22}/xoaquaythucan [ID]");
	if(PlayerInfo[playerid][pAdmin] < 5)
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay!");
        return 1;
    }

	format(string, sizeof(string), LOAD_FOOD, IDFood);
	if(!fexist(string)) return SendClientMessage(playerid, -1, "{FF0000}[!] {FFFFFF}Quay thuc an nay khong ton tai!");

	FoodInfo[IDFood][PosFood][0] = 0;
	FoodInfo[IDFood][PosFood][1] = 0;
	FoodInfo[IDFood][PosFood][2] = 0;
	FoodInfo[IDFood][PosFood][3] = 0;

	FoodInfo[IDFood][PosActor][0] = 0;
	FoodInfo[IDFood][PosActor][1] = 0;
	FoodInfo[IDFood][PosActor][2] = 0;
	FoodInfo[IDFood][PosActor][3] = 0;
  	DestroyDynamicObject(FoodInfo[IDFood][IDObjectFood]);
  	DestroyActor(FoodInfo[IDFood][ActorFood]);
  	DestroyDynamic3DTextLabel(LabelFood[IDFood]);

	format(string, sizeof(string), "Xoa quay thuc an {1FDE22}ID: %d.", IDFood);
 	SendClientMessage(playerid, -1, string);
 	format(string1, sizeof(string1), LOAD_FOOD, IDFood);
  	dini_Remove(string1);
  	TaiLaiFood();
	return 1;
}
