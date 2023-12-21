#include <a_samp>
#include <YSI\y_hooks>
#include <colandreas>


new checkbugging[MAX_PLAYERS] = 0;

hook OnPlayerUpdate(playerid)
{
    if(IsPlayerConnected(playerid))
    {
        new Float: x, Float:y, Float: z;
        GetPlayerPos(playerid, x, y, z);
        new anim_index = GetPlayerAnimationIndex(playerid);

        if(checkbugging[playerid] == 0 && anim_index == 1130 && z < -20.0)
        {
            CA_FindZ_For2DCoord(x, y, z);
            TogglePlayerControllable(playerid, 0);
            SetPVarFloat(playerid, "Posx", 1529.6);
            SetPVarFloat(playerid, "Posy", -1691.2);
            SetPVarFloat(playerid, "Posz", 13.3);
            Dialog_Show(playerid, DIALOG_CHECKBUGGING,DIALOG_STYLE_MSGBOX,"> Check Bugging","Ban hien dang bi bug vui long chon Select de len mat dat.", "Select");
            return 1;
        }
    }
    return 1;
}


Dialog:DIALOG_CHECKBUGGING(playerid, response, listitem, inputtext[]) 
{
    if(response)
    {
        new Float: x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        SetPlayerPos(playerid, GetPVarFloat(playerid, "Posx"), GetPVarFloat(playerid, "Posy"), GetPVarFloat(playerid, "Posz"));
        TogglePlayerControllable(playerid, true);
        checkbugging[playerid] = 0;
    }
    return 1;
}