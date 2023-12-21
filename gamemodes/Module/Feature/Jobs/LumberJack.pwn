#include <YSI\y_hooks>

//Lumber Jack
#define			DIALOG_LOCKERLJ				(5174)
#define 		LOAD_TREE 					"Trees/%d.ini"
#define 		MAX_TREE 					100

//Lumber Jack
enum INFOTREE
{
    IDObjectTree,
    ResetTree,
    Float:PosTree[4],
};
new Text3D:LabelTree[MAX_TREE], LoadTree, Cay[MAX_PLAYERS], TreeInfo[MAX_TREE][INFOTREE];
new PickTree[MAX_PLAYERS], LumberJ[MAX_PLAYERS], BoxLumber[MAX_PLAYERS];

new ActorLumber;
new ActorLumber2;

hook OnPlayerDisconnect(playerid, reason)
{
	DeletePVar(playerid, "NhatCay");
	DeletePVar(playerid, "DuaVaoMay");
	DeletePVar(playerid, "LayThungGo");
	DeletePVar(playerid, "GiaoThungGo");
	DeletePVar(playerid, "DangCuaCay");
	DestroyObject(PickTree[playerid]);
	DestroyObject(BoxLumber[playerid]);
	DestroyObject(LumberJ[playerid]);
	return 1;
}

UpdateActor() {
	SetActorPos(ActorLumber, -1093.3726,-1288.9056,129.4963);
	SetActorFacingAngle(ActorLumber, 271.2885);
	SetActorPos(ActorLumber2, -1077.5818,-1293.8608,129.2188);
	SetActorFacingAngle(ActorLumber2, 275.6518);
}  

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	new string[128];
	//Lumber Jack
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && (newkeys & KEY_NO))
	{
		if(PlayerInfo[playerid][pJob] == 24 || PlayerInfo[playerid][pJob2] == 24)
		{
			for(new i = 0; i < sizeof(TreeInfo); i++)
			{
				new Float:x, Float:y, Float:z;
		
				if(IsPlayerInRangeOfPoint(playerid, 1.0, TreeInfo[i][PosTree][0],TreeInfo[i][PosTree][1],TreeInfo[i][PosTree][2]))
				{
					if(PlayerInfo[playerid][pMayCua] >= 1)
					{
						if(PlayerInfo[playerid][pXangMC] >= 1) 
						{
							if(GetPVarInt(playerid, "DangCuaCay") == 0)
							{
								SetTimerEx("NgungCuaCay", 20000, false, "i", playerid);
								SetPlayerLookAt(playerid, TreeInfo[i][PosTree][0], TreeInfo[i][PosTree][1]);
								TogglePlayerControllable(playerid, 0);
								format(string, sizeof(string), "Ban dang su dung 'May cua' de cua cay hay doi vai giay...");
    							PlayerTextDrawSetString(playerid, Lumber[playerid][0], string);
    							PlayerTextDrawShow(playerid, Lumber[playerid][0]);
    							PlayerTextDrawShow(playerid, Lumber[playerid][1]);
								PlayerInfo[playerid][pMayCua] -= 1;
								PlayerInfo[playerid][pXangMC] -= 1;
								SetPlayerAttachedObject(playerid, 0, 341, 5, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
								ApplyAnimation(playerid, "CHAINSAW", "WEAPON_csaw", 4.1, 1, 0, 0, 1, 0, 1);
								SetPVarInt(playerid, "DangCuaCay",1);
			                	Player_Notice(playerid, AUTO_MESSAGE, "Ban dang thuc hien ~r~cua cay");
							}
						}
						else Player_Notice(playerid, AUTO_MESSAGE, "~r~MAY CUA ~w~ cua ban khong con ~g~XANG ~w~ nen khong the lam viec");
					}
					else Player_Notice(playerid, AUTO_MESSAGE, "Ban khong co ~r~MAY CUA ~w~hoac ~r~MAY CUA HU ~w~ nen khong the cua cay duoc.");
				}
				else if(GetObjectPos(PickTree[playerid], x, y, z))
				{
					if(GetPVarInt(playerid, "NhatCay") == 1)
					{
						format(string, sizeof(string), "Ban dem go vao ben trong nha may san xuat, dat len tren de chay quy trinh san xuat thung hang.");
						PlayerTextDrawSetString(playerid, Lumber[playerid][0], string);
						PlayerTextDrawShow(playerid, Lumber[playerid][0]);
						PlayerTextDrawShow(playerid, Lumber[playerid][1]);
						DestroyObject(PickTree[playerid]);
						SetPlayerAttachedObject(playerid, 0, 19793, 1, 0.0000, 0.4599, 0.0000, 0.0000, 91.3999, 0.0000, 1.8299, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
						SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
						DeletePVar(playerid, "NhatCay");
						SetPVarInt(playerid, "DuaVaoMay",1);
						Player_Notice(playerid, AUTO_MESSAGE, "Ban da nhat ~g~GO ~w~len thanh cong!");
					}
				}
			}
		}
	}
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && (newkeys & KEY_NO))
	{

		new Float:x, Float:y, Float:z;
		if(IsPlayerInRangeOfPoint(playerid, 3.0, -1103.4574, -1276.7955, 129.2508))
		{
			if(PlayerInfo[playerid][pJob] == 24 || PlayerInfo[playerid][pJob2] == 24)
			{
				ShowPlayerDialog(playerid, DIALOG_LOCKERLJ, DIALOG_STYLE_LIST, "Tu do Lumber Jack", "Quan ao\nMua/Sua may cua\nBom xang", "Lay", "Khong");
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1116.4271, -1280.5465, 129.1835))
		{
			if(GetPVarInt(playerid, "DuaVaoMay") == 1)
			{
				format(string, sizeof(string), "Ban hay doi vai giay de quy trinh so che san xuat lam viec...");
				PlayerTextDrawSetString(playerid, Lumber[playerid][0], string);
				PlayerTextDrawShow(playerid, Lumber[playerid][0]);
				LumberJ[playerid] = CreateObject(1463, -1116.4271, -1280.5465, 129.1835, 0.0000, 0.0000, 0.0000);
				MoveObject(LumberJ[playerid], -1116.4592, -1292.0296, 129.1579, 0.5);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
				for(new i=0; i<MAX_PLAYER_ATTACHED_OBJECTS; i++)
	        	{
	            	if(IsPlayerAttachedObjectSlotUsed(playerid, i)) RemovePlayerAttachedObject(playerid, i);
	        	}
	        	DeletePVar(playerid, "DuaVaoMay");
	        	Player_Notice(playerid, AUTO_MESSAGE, "Ban da dua ~g~go ~w~len may ~r~san xuat!");
	        }
		}
		else if(GetObjectPos(BoxLumber[playerid], x, y, z))
		{
			if(GetPVarInt(playerid, "LayThungGo") == 1)
			{
				DestroyObject(BoxLumber[playerid]);
				SetPlayerAttachedObject(playerid, 0, 1271, 1, 0.2139, 0.6469, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
				DeletePVar(playerid, "LayThungGo");
				SetPVarInt(playerid, "GiaoThungGo", 1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			    Player_Notice(playerid, AUTO_MESSAGE, "Ban da nhat thung go len thanh cong lai ~g~NPC ~w~nhan ~g~N ~w~de chat hang!");
			    SetPlayerCheckpoint(playerid,-1077.4933,-1293.8616,129.2188,3);
			    CP[playerid] = 252000;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1077.4933,-1293.8616,129.2188))
		{
			if(GetPVarInt(playerid, "GiaoThungGo") == 1)
			{
				PlayerTextDrawHide(playerid, Lumber[playerid][0]);
				PlayerTextDrawHide(playerid, Lumber[playerid][1]);
				for(new i=0; i<MAX_PLAYER_ATTACHED_OBJECTS; i++)
	        	{
	            	if(IsPlayerAttachedObjectSlotUsed(playerid, i)) RemovePlayerAttachedObject(playerid, i);
	        	}
	        	DeletePVar(playerid, "GiaoThungGo");
	        	DeletePVar(playerid, "DangCuaCay");
	        	GivePlayerCash(playerid, 25000);
	        	DisablePlayerCheckpoint(playerid);
	        	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	        	Player_Notice(playerid, AUTO_MESSAGE, "Ban da ~r~hoan thanh cong viec ~w~chat thung go nhan duoc ~g~$25.000!");	
				if(camfam == 0)
				{
					PlayerInfo[playerid][pKimCuong] += 1;
					format(string, sizeof(string), "{ff5b4f}[SU KIEN KIM CUONG]{efe4dc} Ban nhan duoc 1 {ff5b4f}KIM CUONG{efe4dc} - hien tai: {ff5b4f}%d{efe4dc} ", PlayerInfo[playerid][pKimCuong]);
					SendClientMessageEx(playerid, COLOR_WHITE, string);
				}
			}
		}
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	//Lumber Jack
	if(dialogid == DIALOG_LOCKERLJ)
    {
        if(response)
        {
            switch(listitem)
            {
                case 0: 
                {
                	SetPlayerSkin(playerid, 133);
                	PlayerInfo[playerid][pModel] = 133;
                	Player_Notice(playerid, AUTO_MESSAGE, "Ban da lay ~b~quan ao ~w~cua cong viec thanh cong!");
                }
                case 1: 
                {
                	if(PlayerInfo[playerid][pCash] >= 1000)
                	{
	                	if(PlayerInfo[playerid][pMayCua] == 0)
	                	{
		                	PlayerInfo[playerid][pMayCua] = 10;
		                	PlayerInfo[playerid][pCash] -= 1000;
							Player_Notice(playerid, AUTO_MESSAGE, "Ban da lay ~r~may cua ~w~thanh cong!");
						}
						else Player_Notice(playerid, AUTO_MESSAGE, "~r~May cua ~w~cua ban van con ~g~xang ~w~hay su dung het de bom xang.");
					}
					else Player_Notice(playerid, AUTO_MESSAGE, "Ban khong ~r~du tien ~w~de bom xang may cua.");
            	}
            	case 2: 
                {
                	if(PlayerInfo[playerid][pCash] >= 1000)
                	{
	                	if(PlayerInfo[playerid][pXangMC] == 0)
	                	{
		                	PlayerInfo[playerid][pXangMC] = 5;
		                	PlayerInfo[playerid][pCash] -= 1000;
							Player_Notice(playerid, AUTO_MESSAGE, "Ban da ~r~BOM XANG ~w~thanh cong!");
						}
						else Player_Notice(playerid, AUTO_MESSAGE, "~r~May cua ~w~cua ban van con ~g~xang ~w~hay su dung het de ~g~bom xang.");
					}
					else Player_Notice(playerid, AUTO_MESSAGE, "Ban khong ~r~du tien ~w~de ~g~bom xang may cua.");
            	}
            }
        }
    }
	return 1;
}

//Lumber Jack
CMD:taocay(playerid, params[]){
  	new string[256],Float:X,Float:Y,Float:Z,Float:A,Float:MOVER_X, Float:MOVER_Y, Float:MOVER_Z, CreateTree = LoadTree+1, string1[50];
  	if(PlayerInfo[playerid][pAdmin] < 1337)
	{
        Player_Notice(playerid, AUTO_MESSAGE, "Ban khong duoc phep su dung lenh nay!");
        return 1;
    }
 	if(CreateTree >= MAX_TREE) return Player_Notice(playerid, AUTO_MESSAGE, "Ban khong the tao them ~g~cay ~w~nua!");
 	format(string, sizeof(string), LOAD_TREE, CreateTree);
 	if(dini_Exists(string))
 	{
	    TaiCay();
	  	format(string, sizeof(string), "Cay ID: ~g~%d ~w~da ton tai trong may chu.", CreateTree);
	  	Player_Notice(playerid, AUTO_MESSAGE, string);
	}
	else
 	{
	  	GetPlayerPos(playerid, MOVER_X, MOVER_Y, MOVER_Z),GetPlayerPos(playerid, X,Y,Z),GetPlayerFacingAngle(playerid, A);

	  	TreeInfo[CreateTree][PosTree][0] = X;
	  	TreeInfo[CreateTree][PosTree][1] = Y;
	  	TreeInfo[CreateTree][PosTree][2] = Z;
	  	TreeInfo[CreateTree][PosTree][3] = A;
	  	dini_Create(string);

	  	dini_IntSet(string, "IDObjectTree", TreeInfo[CreateTree][IDObjectTree]);
	  	for(new i = 0; i < 4; i++){
	  		format(string1,sizeof(string1), "PosTrees%d", i);
	   		dini_FloatSet(string, string1, TreeInfo[CreateTree][PosTree][i]);
		}
	  	Cay[playerid] = 0;
	  	TaiCay();
	  	TreeInfo[CreateTree][IDObjectTree] = CreateDynamicObject(655, TreeInfo[CreateTree][PosTree][0], TreeInfo[CreateTree][PosTree][1], TreeInfo[CreateTree][PosTree][2]-1, 0, 0, TreeInfo[CreateTree][PosTree][3]+90);
	  	format(string, sizeof(string), "{1FDE22}Cay ID (%d)\n{FFFFFF}Nhan phim 'N' de cua cay.", CreateTree);
	    LabelTree[CreateTree] = CreateDynamic3DTextLabel(string, -1, TreeInfo[CreateTree][PosTree][0], TreeInfo[CreateTree][PosTree][1], TreeInfo[CreateTree][PosTree][2]+0.5,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,0,-1,-1, 100.0);

	  	Player_Notice(playerid, AUTO_MESSAGE, "Ban da tao ~g~cay ~w~thanh cong!");
	  	SetPlayerPos(playerid, MOVER_X, MOVER_Y+1.0, MOVER_Z);
	  	SaveTreess(CreateTree);
	}
	return 1;
}

CMD:xoacay(playerid, params[]){
	new IDTree, string[127], string1[128];
	if(sscanf(params, "d", IDTree))return Player_Notice(playerid, AUTO_MESSAGE,"Su dung lenh: /xoacay [ID]");
	if(PlayerInfo[playerid][pAdmin] < 5)
	{
        Player_Notice(playerid, AUTO_MESSAGE, "Ban ~r~khong duoc phep ~w~su dung lenh nay!");
        return 1;
    }

	format(string, sizeof(string), LOAD_TREE, IDTree);
	if(!fexist(string)) return Player_Notice(playerid, AUTO_MESSAGE, "Cay nay khong ton tai!");

	TreeInfo[IDTree][PosTree][0] = 0;
	TreeInfo[IDTree][PosTree][1] = 0;
	TreeInfo[IDTree][PosTree][2] = 0;
	TreeInfo[IDTree][PosTree][3] = 0;
  	DestroyDynamicObject(TreeInfo[IDTree][IDObjectTree]);
  	DestroyDynamic3DTextLabel(LabelTree[IDTree]);

	format(string, sizeof(string), "Xoa ~g~cay ~w~ID: ~r~%d.", IDTree);
 	Player_Notice(playerid, AUTO_MESSAGE, string);
 	format(string1, sizeof(string1), LOAD_TREE, IDTree);
  	dini_Remove(string1);
  	TaiLaiCay();
	return 1;
}

forward ResetTrees();
public ResetTrees()
{
	new string[256];
	for(new i = 0; i < sizeof(TreeInfo); i++)
	{
		if(TreeInfo[i][ResetTree] == 1)
		{
			TreeInfo[i][ResetTree] = 0;

			TreeInfo[i][IDObjectTree] 	= CreateDynamicObject(655, TreeInfo[i][PosTree][0], TreeInfo[i][PosTree][1], TreeInfo[i][PosTree][2]-1, 0, 0, TreeInfo[i][PosTree][3]+90);
			format(string, sizeof(string), "{1FDE22}Cay ID (%d)\n{FFFFFF}Nhan phim 'N' de cua cay.", i);
			LabelTree[i] = CreateDynamic3DTextLabel(string, -1, TreeInfo[i][PosTree][0], TreeInfo[i][PosTree][1], TreeInfo[i][PosTree][2]+0.5,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,0,-1,-1, 100.0);
  		}
	}
	return 1;
}

stock TaiCay()
{
	LoadTree++;
 	return 1;
}

stock TaiLaiCay()
{
	LoadTree--;
 	return 1;
}

stock LoadTrees()
{
	new string2[128], string[256], string1[60];
	for(new i = 0; i < MAX_TREE; i++)
	{
		format(string2, sizeof(string2), LOAD_TREE, i);
		if(dini_Exists(string2))
		{
			TreeInfo[i][IDObjectTree] 	= dini_Int(string2, "IDObjectTree");
			  	
			for(new m = 0; m < 4; m++)
			{
				format(string1,sizeof(string1), "PosTrees%d", m);
				TreeInfo[i][PosTree][m] 	= dini_Float(string2, string1);
			}
			TreeInfo[i][IDObjectTree] 	= CreateDynamicObject(655, TreeInfo[i][PosTree][0], TreeInfo[i][PosTree][1], TreeInfo[i][PosTree][2]-1, 0, 0, TreeInfo[i][PosTree][3]+90);
			TaiCay();
			format(string, sizeof(string), "{1FDE22}Cay ID (%d)\n{FFFFFF}Nhan phim 'N' de cua cay.", i);
			LabelTree[i] = CreateDynamic3DTextLabel(string, -1, TreeInfo[i][PosTree][0], TreeInfo[i][PosTree][1], TreeInfo[i][PosTree][2]+0.5,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,0,-1,-1, 100.0);
	  	}
	}
	return 1;
}

stock SaveTreess(i)
{
	new string2[128], string1[60];
	format(string2, sizeof(string2), LOAD_TREE, i);
	if(dini_Exists(string2))
	{
	    dini_IntSet(string2, "IDObjectTree", TreeInfo[i][IDObjectTree]);
	  	for(new m = 0; m < 4; m++)
	    {
	    	format(string1,sizeof(string1), "PosTrees%d", m);
	    	TreeInfo[i][PosTree][m] = dini_Float(string2, string1);
	  	}
  	}
	return 1;
}

stock SaveTrees()
{
	for(new i = 0; i < MAX_TREE; i++)
	{
		SaveTreess(i);
	}
	return 1;
}


forward NgungCuaCay(playerid);
public NgungCuaCay(playerid)
{
	for(new i = 0; i < sizeof(TreeInfo); i++)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, TreeInfo[i][PosTree][0],TreeInfo[i][PosTree][1],TreeInfo[i][PosTree][2]))
		{
			TreeInfo[i][ResetTree] = 1;
			SetTimerEx("ResetTrees", 300000, false, "i", i);
		  	DestroyDynamicObject(TreeInfo[i][IDObjectTree]);
		  	DestroyDynamic3DTextLabel(LabelTree[i]);
		  	Player_Notice(playerid, AUTO_MESSAGE, "Ban da cua cay thanh cong nhan ~g~N ~w~de nhat ~g~go ~w~len!");
			PickTree[playerid] = CreateObject(1463, TreeInfo[i][PosTree][0],TreeInfo[i][PosTree][1],TreeInfo[i][PosTree][2]-0.6, 0.0000, 0.0000, 0.0000,100);
		}
	}
	for(new i=0; i<MAX_PLAYER_ATTACHED_OBJECTS; i++)
    {
        if(IsPlayerAttachedObjectSlotUsed(playerid, i)) RemovePlayerAttachedObject(playerid, i);
    }
	PlayerTextDrawHide(playerid, Lumber[playerid][0]);
	PlayerTextDrawHide(playerid, Lumber[playerid][1]);
	TogglePlayerControllable(playerid, 1);
	ClearAnimations(playerid);
	SetPVarInt(playerid, "NhatCay",1);
	return 1;
}

SetPlayerLookAt(playerid, Float:x, Float:y)
{
	new Float:Px, Float:Py, Float: Pa;
	GetPlayerPos(playerid, Px, Py, Pa);
	Pa = floatabs(atan((y-Py)/(x-Px)));
	if (x <= Px && y >= Py) Pa = floatsub(180, Pa);
	else if (x < Px && y < Py) Pa = floatadd(Pa, 180);
	else if (x >= Px && y <= Py) Pa = floatsub(360.0, Pa);
	Pa = floatsub(Pa, 90.0);
	if (Pa >= 360.0) Pa = floatsub(Pa, 360.0);
	SetPlayerFacingAngle(playerid, Pa);
}

hook OnObjectMoved(objectid)
{
	for(new playerid = 0; playerid < MAX_PLAYERS; playerid++)
	{
		if(objectid == LumberJ[playerid])
		{
			new string[128];
			format(string, sizeof(string), "Ban hay nhat thung len va ra ben ngoai cho NPC nhan 'N' de nhan phan thuong. Dia chiem duoc danh dau tren cham do ban do");
			PlayerTextDrawSetString(playerid, Lumber[playerid][0], string);
			PlayerTextDrawShow(playerid, Lumber[playerid][0]);
			new Float:x, Float:y, Float:z;
			DestroyObject(LumberJ[playerid]);
			BoxLumber[playerid] = CreateObject(1271, -1116.4592, -1292.0296, 129.1579, 0.0000, 0.0000, 0.0000, 30);
			GetObjectPos(playerid, x, y, z);
			SetPVarInt(playerid, "LayThungGo", 1);
		}
	}
	return 1;
}