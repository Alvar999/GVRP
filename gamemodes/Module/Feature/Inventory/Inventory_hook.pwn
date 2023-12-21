#include <a_samp>
#include <YSI\y_hooks>

hook OnPlayerUpdate(playerid)
{
    new name[128];
    format(name, sizeof(name), "%s", GetPlayerNameEx(playerid));
	PlayerTextDrawSetString(playerid, tdtuido1[playerid][8], name);

    new crom[128],titan[128],wolfram[128],ruteni[128];
	format(crom, sizeof(crom), "%d", PlayerInfo[playerid][pCrom]);
	PlayerTextDrawSetString(playerid, tdtuido[playerid][24], crom);

    format(titan, sizeof(titan), "%d", PlayerInfo[playerid][pTitan]);
	PlayerTextDrawSetString(playerid, tdtuido[playerid][22], titan);

    format(ruteni, sizeof(ruteni), "%d", PlayerInfo[playerid][pRuteni]);
	PlayerTextDrawSetString(playerid, tdtuido[playerid][75], ruteni);

    format(wolfram, sizeof(wolfram), "%d", PlayerInfo[playerid][pWolfram]);
	PlayerTextDrawSetString(playerid, tdtuido[playerid][73], wolfram);

    new skin=GetPlayerSkin(playerid);
    PlayerTextDrawSetPreviewModel(playerid, tdtuido1[playerid][7], skin);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && (newkeys & KEY_CTRL_BACK))
    {
        return cmd_tuidotd(playerid,"");
    }
    if(GetPlayerWeapon(playerid) != 0)
    {
       if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && (newkeys & KEY_NO) && GetPlayerWeapon(playerid) != 0)
	   {
            if(GetPVarInt(playerid, "IsInArena") > 0) return Player_Notice(playerid, AUTO_MESSAGE, "Ban khong the su dung ~r~Tui do~w~tai arena");
            if(GetPlayerAmmo(playerid) < 2)
            {
                inputitem(playerid);
                ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
            }
            else
            {
                Player_Notice(playerid, AUTO_MESSAGE, "Sung con dan khong the cat");
            }
       }
       return 1;
    }
    return 1;
}