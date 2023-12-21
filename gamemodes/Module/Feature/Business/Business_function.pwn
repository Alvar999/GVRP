#include <a_samp>
#include <YSI\y_hooks>


stock GetNearestVehicle(playerid, Float:Distance = 3.0)
{
    Distance = floatabs(Distance);
    if(!Distance) Distance = 3.0;
    new
        Float:pX,
        Float:pY,
        Float:pZ,
        Float:NearestPos = Distance,
        Float:NearestDist,
        NearestVeh = INVALID_VEHICLE_ID;

    GetPlayerPos(playerid, pX, pY, pZ);

    for(new i; i  <MAX_VEHICLES; i++)
    {
        if(!IsVehicleStreamedIn(i, playerid)) continue;
        NearestDist=GetVehicleDistanceFromPoint(i, pX, pY, pZ);
        if(NearestPos > NearestDist)
        {
            NearestPos = NearestDist;
            NearestVeh = i;
        }
    }
    return NearestVeh;
}


forward RobBusiness(playerid);
public RobBusiness(playerid)
{
    ClearAnimations(playerid);
    TogglePlayerControllable(playerid, true);
    new string[1280];
    PlayerInfo[playerid][pDirtyMoney] += 200000;
    format(string, sizeof(string),"Ban da cuop thanh cong va nhan duoc 200000 tien ban.");
    SendClientMessageEx(playerid, COLOR_YELLOW, string);
    return 1;
}

forward CuopCuaHangTime(playerid);
public CuopCuaHangTime(playerid)
{
    SetPVarInt(playerid, "CuopCuaHangTime", GetPVarInt(playerid, "CuopCuaHangTime")-1);
    new string[1280];
    format(string, sizeof(string), "~w~Ban dang lay hang vui long doi %d giay.", GetPVarInt(playerid, "CuopCuaHangTime"));
    HienTextdraw(playerid, string);

    if(GetPVarInt(playerid, "CuopCuaHangTime") > 0) SetTimerEx("CuopCuaHangTime", 1000, 0, "d", playerid);
    return 1;
}
