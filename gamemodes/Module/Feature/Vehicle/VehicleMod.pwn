#include <a_samp>
#include <YSI\y_hooks>

new PlayerText: VehicleMod_PC[MAX_PLAYERS][7];


stock vehiclemodpc(playerid) {
	VehicleMod_PC[playerid][0] = CreatePlayerTextDraw(playerid, 156.000, 202.000, "mdl-2010:smartkey");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][0], 73.000, 115.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][0], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][0], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][0], 1);

	VehicleMod_PC[playerid][1] = CreatePlayerTextDraw(playerid, 172.000, 264.000, "mdl-2010:smartkey_copxe");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][1], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][1], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][1], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][1], 1);

	VehicleMod_PC[playerid][2] = CreatePlayerTextDraw(playerid, 162.000, 233.000, "mdl-2010:smartkey_denxe");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][2], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][2], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][2], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][2], 1);

	VehicleMod_PC[playerid][3] = CreatePlayerTextDraw(playerid, 175.000, 200.000, "mdl-2010:smartkey_mokhoaxe");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][3], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][3], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][3], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][3], 1);

	VehicleMod_PC[playerid][4] = CreatePlayerTextDraw(playerid, 203.000, 212.000, "mdl-2010:smartkey_muixe");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][4], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][4], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][4], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][4], 1);

	VehicleMod_PC[playerid][5] = CreatePlayerTextDraw(playerid, 197.000, 246.000, "mdl-2010:smartkey_onoff");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][5], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][5], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][5], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][5], 1);

	VehicleMod_PC[playerid][6] = CreatePlayerTextDraw(playerid, 200.000, 283.000, "mdl-2010:smartkey_timxe");
	PlayerTextDrawTextSize(playerid, VehicleMod_PC[playerid][6], 21.000, 34.000);
	PlayerTextDrawAlignment(playerid, VehicleMod_PC[playerid][6], 1);
	PlayerTextDrawColor(playerid, VehicleMod_PC[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, VehicleMod_PC[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, VehicleMod_PC[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleMod_PC[playerid][6], 255);
	PlayerTextDrawFont(playerid, VehicleMod_PC[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, VehicleMod_PC[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, VehicleMod_PC[playerid][6], 1);
	return 1;
}

hook OnPlayerConnect(playerid)	{
	vehiclemodpc(playerid);
	return 1;
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	if(Text:INVALID_TEXT_DRAW == clickedid) {
	    if(GetPVarInt(playerid, "DaShowVehicleMod") == 1) {
	        ExitVehicleModPC(playerid);
		}
	}
	return 1;
}



hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_NO)
	{
		if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			for(new i = 0; i < 6; i++)
			{
				PlayerTextDrawShow(playerid, VehicleMod_PC[playerid][i]);
				SelectTextDraw(playerid, 0xAA3333AA);
			}
		}
	}
	return 1;
}

ExitVehicleModPC(playerid)
{
	for(new i = 0; i < 6; i++)
	{
		PlayerTextDrawHide(playerid, VehicleMod_PC[playerid][i]);
	}
	DeletePVar(playerid,"DaShowVehicleMod");
	CancelSelectTextDraw(playerid);
	SetCameraBehindPlayer(playerid);
	return 1;
}


hook OnPlayerExitVehicle(playerid, vehicleid)	{
	for(new i = 0; i < 6; i++)
	{
	        PlayerTextDrawHide(playerid, VehicleMod_PC[playerid][i]);
	        DeletePVar(playerid,"DaShowVehicleMod");
	}
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	hidevehiclemod(playerid);
	return 1;
}

stock hidevehiclemod(playerid)
{
	for(new i = 0; i < 6; i++)
	{
	 	PlayerTextDrawHide(playerid, VehicleMod_PC[playerid][i]);
	}
	return 1;
}

stock showvehiclemodpc(playerid)	{
	for(new i = 0; i < 6;i++)
	{
		PlayerTextDrawShow(playerid, VehicleMod_PC[playerid][i]);
	}
	return 1;
}

