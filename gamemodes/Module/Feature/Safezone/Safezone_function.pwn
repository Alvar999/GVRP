#include <a_samp>
#include <YSI\y_hooks>

stock SaveSafeZones()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("Safezones.cfg", io_write);

	for(new iIndex; iIndex < MAX_SZ; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f|%d|%d\r\n",
		SafeZoneInfo[iIndex][szPosX],
		SafeZoneInfo[iIndex][szPosY],
		SafeZoneInfo[iIndex][szPosZ],
		SafeZoneInfo[iIndex][szSize],
		SafeZoneInfo[iIndex][szPickupID]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadSafeZones()
{
    if(!fexist("Safezones.cfg")) return 1;

	new string[128],
		szFileStr[128],
  		File: iFileHandle = fopen("Safezones.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(SafeZoneInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fffii",
		SafeZoneInfo[iIndex][szPosX],
   		SafeZoneInfo[iIndex][szPosY],
		SafeZoneInfo[iIndex][szPosZ],
		SafeZoneInfo[iIndex][szSize],
		SafeZoneInfo[iIndex][szPickupID]);

  		format(string, sizeof(string), "{ff0000}GVRP{ff9900}.VN{FFFFFF}\n{00ffff}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",iIndex,SafeZoneInfo[iIndex][szSize]);

        if(SafeZoneInfo[iIndex][szPosX] != 0.0)
  		{
   			SafeZoneInfo[iIndex][szPickupID] = CreateDynamicPickup(1314, 23, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]);
   			SafeZoneInfo[iIndex][szTextID] = CreateDynamic3DTextLabel(string, -1, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
  		}
  		++iIndex;
	}
 	return fclose(iFileHandle);
}


forward exitsz(playerid);
public exitsz(playerid)
{
	if(GetPVarType(playerid, "exitsz") == 1)
	{
		PlayerTextDrawHide(playerid, entertx[playerid][0]);
		DeletePVar(playerid, "exitsz");
	}
}
forward loadsz(playerid);
public loadsz(playerid)
{
	if(GetPVarType(playerid, "entersz") == 1)
	{
		DeletePVar(playerid, "entersz");
	    PlayerTextDrawShow(playerid, entertx[playerid][0]);
	}

}

forward LoadPlayerZone(playerid);
public LoadPlayerZone(playerid)
{
	TogglePlayerControllable(playerid, true);
}