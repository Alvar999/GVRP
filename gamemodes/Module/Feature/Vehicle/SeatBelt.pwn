#include "YSI\y_hooks"
#include <a_samp>
#include <zcmd>


hook OnPlayerExitVehicle(playerid, vehicleid)
{
    StopAudioStreamForPlayer(playerid);
    SetTimerEx("XoaTextDraw", 100, false, "i", playerid);
    return 1;
}


stock GetTypeVehicle(type)
{
    new typeveh;
    switch(type)
    {
        case 400..447: typeveh = 1;
        case 451..460: typeveh = 1;
        case 464..467: typeveh = 1;
        case 469..470: typeveh = 1;
        case 472..480: typeveh = 1;
        case 482..508: typeveh = 1;
        case 511..520: typeveh = 1;
        case 524..580: typeveh = 1;
        case 582..585: typeveh = 1;
        case 587..609: typeveh = 1;
        case 586: typeveh = 2;
        case 581: typeveh = 2;
        case 521..523: typeveh = 2;
        case 471: typeveh = 2;
        case 468: typeveh = 2;
        case 461..463: typeveh = 2;
        case 448: typeveh = 2;
        default: typeveh = 0;
    }
    return typeveh;
}


CMD:sb(playerid, params[]) return cmd_seatbelt(playerid, params);

CMD:seatbelt(playerid, params[])
{
    if(IsPlayerInAnyVehicle(playerid) == 0)
    {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the lam dieu nay tren xe!");
        return 1;
    }
    new string[60 + MAX_PLAYER_NAME];
    if(IsPlayerInAnyVehicle(playerid) == 1 && Seatbelt[playerid] == 0)
    {
        Seatbelt[playerid] = 1;
        if(IsABike(GetPlayerVehicleID(playerid)))
        {
            HienTextdraw(playerid, "~g~Ban da doi non bao hiem len dau.");
            format(string, sizeof(string), "{FF8000}** {C2A2DA}%s lay mu bao hiem va doi len dau.", GetPlayerNameEx(playerid));
        }
        else
        {
            HienTextdraw(playerid, "~g~Ban da that day an toan.");
            SetPVarInt(playerid, "Seatbelt", 1);
            format(string, sizeof(string), "{FF8000}** {C2A2DA}%s keo day an toan qua nguoi va khoa lai.", GetPlayerNameEx(playerid));
            StopAudioStreamForPlayer(playerid);
        }

    }
    else if(IsPlayerInAnyVehicle(playerid) == 1 && Seatbelt[playerid] == 1)
    {
        Seatbelt[playerid] = 0;
        if(IsABike(GetPlayerVehicleID(playerid)))
        {
            HienTextdraw(playerid, "~r~Ban da thao mu bao hiem.");
            format(string, sizeof(string), "{FF8000}** {C2A2DA}%s lay mua bao hiem tu tren dau xuong.", GetPlayerNameEx(playerid));
        }
        else
        {
            HienTextdraw(playerid, "~r~Ban da thao day an toan.");
            SetPVarInt(playerid, "Seatbelt", 0);
            SetTimerEx("ChuaSeatBelt1", 2000, false, "i", playerid);
            format(string, sizeof(string), "{FF8000}** {C2A2DA}%s mo chot khoa an toan va keo day an toan ra khoi nguoi.", GetPlayerNameEx(playerid));
        }
    }
    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
    return 1;
}

stock LeoLenXeCoDongCo(playerid)
{
    HienTextdraw(playerid, "~y~Su dung phim ~w~'N'~y~ de khoi dong xe.");
    return 1;
}

forward ChuaSeatBelt1(playerid);
public ChuaSeatBelt1(playerid)
{
    if(GetTypeVehicle(GetVehicleModel(GetPlayerVehicleID(playerid))) == 1 && GetPVarInt(playerid, "Seatbelt") == 0 && IsPlayerInAnyVehicle(playerid))
    {
        HienTextdraw(playerid, "~r~Ban chua that day an toan.");
        SetTimerEx("ChuaSeatBelt2", 5500, false, "i", playerid);
        PlayAudioStreamForPlayer(playerid, "https://uploadir.com/u/bhtukb5a");
    }
    return 1;
}
forward ChuaSeatBelt2(playerid);
public ChuaSeatBelt2(playerid)
{
    if(GetTypeVehicle(GetVehicleModel(GetPlayerVehicleID(playerid))) == 1 && GetPVarInt(playerid, "Seatbelt") == 0 && IsPlayerInAnyVehicle(playerid))
    {
        HienTextdraw(playerid, "~r~Ban chua that day an toan.");
        SetTimerEx("ChuaSeatBelt1", 5500, false, "i", playerid);
        PlayAudioStreamForPlayer(playerid, "https://uploadir.com/u/bhtukb5a");
    }
    return 1;
}