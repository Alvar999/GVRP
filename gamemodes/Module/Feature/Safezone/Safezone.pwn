#include <a_samp>
#include <YSI\y_hooks>

#define         MAX_SZ          (500)

new EnterSafeZones[MAX_PLAYERS];
new AntiSafeZone[MAX_PLAYERS];
new SoLanBK[MAX_PLAYERS];

enum sfInfo
{
	 Float:szPosX,
	 Float:szPosY,
	 Float:szPosZ,
	 szSize,
	 szPickupID,
	 Text3D: szTextID,
};
new SafeZoneInfo[MAX_SZ][sfInfo];

CMD:gotosz(playerid, params[])
{
 	if(PlayerInfo[playerid][pAdmin] >= 2)
 	{
  		new housenum;
  		if(sscanf(params, "d", housenum)) return SendClientMessage(playerid, -1, "USAGE: /gotosz [ID Khu An Toan]");

  		SetPlayerPos(playerid,SafeZoneInfo[housenum][szPosX],SafeZoneInfo[housenum][szPosY],SafeZoneInfo[housenum][szPosZ]);
  		SetPlayerInterior(playerid, 0);
  		return 1;
 	}
 	return 1;
}
CMD:szedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1338)
 	{
		new string[128], choice[32], szid, amount;
		if(sscanf(params, "s[32]dd", choice, szid, amount))
		{
			SendClientMessage(playerid, -1, "USAGE: /szedit [name] [SafeZone ID] [Amount]");
			SendClientMessage(playerid, -1, "Name: vitri, size");
			return 1;
		}
		if(strcmp(choice, "vitri", true) == 0)
		{
			GetPlayerPos(playerid, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
			SendClientMessage( playerid, -1, "You have edit location Safe Zone!" );
			DestroyPickup(SafeZoneInfo[szid][szPickupID]);
			SaveSafeZones();


			DestroyPickup(SafeZoneInfo[szid][szPickupID]);
			DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
			format(string, sizeof(string), "{ff0000}GVRP{ff9900}.VN{FFFFFF}\n{00ffff}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",szid,SafeZoneInfo[szid][szSize]);
			SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,50.0, .testlos = 1, .streamdistance = 50.0);
			SafeZoneInfo[szid][szPickupID] = CreatePickup(1314, 23, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
		    return 1;
		 }
		else if(strcmp(choice, "size", true) == 0)
		{
		 	SafeZoneInfo[szid][szSize] = amount;
			SendClientMessage( playerid, -1, "You have edit size Safe Zone!" );
			SaveSafeZones();

			DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
			format(string, sizeof(string), "{ff0000}GVRP{ff9900}.VN{FFFFFF}\n{00ffff}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",szid,SafeZoneInfo[szid][szSize]);
			SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,50.0, .testlos = 1, .streamdistance = 50.0);
		    return 1;
		}
		SaveSafeZones();
	}
 	return 1;
}
CMD:szdelete(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 1338)
 	{
  		SendClientMessage(playerid, -2, "You can not use this commands`!");
  		return 1;
 	}
 	new h, string[128];
 	if(sscanf(params,"d",h)) return SendClientMessage(playerid, -1,"USAGE: /szdelete [SafeZone ID]");

	SafeZoneInfo[h][szPosX] = 0;
	SafeZoneInfo[h][szPosY] = 0;
 	SafeZoneInfo[h][szPosZ] = 0;
 	DestroyDynamicPickup(SafeZoneInfo[h][szPickupID]);
 	DestroyDynamic3DTextLabel(SafeZoneInfo[h][szTextID]);
 	SaveSafeZones();
 	format(string, sizeof(string), "Ban da xoa thanh cong SAFEZONE (ID %d).", h);
 	SendClientMessage(playerid, -1, string);
 	return 1;
}
