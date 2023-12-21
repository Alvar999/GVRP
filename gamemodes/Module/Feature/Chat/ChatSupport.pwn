#include <a_samp>
#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
    CreatePlayerTextDrawz(playerid);
    return 1;
}

stock HienTextdraw(playerid, string[])
{
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], " ");
    PlayerTextDrawHide(playerid, scm_PTD[playerid]);
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], string);
    PlayerTextDrawShow(playerid, scm_PTD[playerid]);
    if(HienThi[playerid] == 0)
    {
        SetTimerEx("XoaTextDraw", 2000, false, "i", playerid);
        HienThi[playerid] = 1;
    }
    return 1;
}

forward XoaTextDraw(playerid);
public XoaTextDraw(playerid)
{
    PlayerTextDrawSetString(playerid, scm_PTD[playerid], " ");
    PlayerTextDrawHide(playerid, scm_PTD[playerid]);
    HienThi[playerid] = 0;
    return 1;
}

stock CreatePlayerTextDrawz(playerid)
{
    scm_PTD[playerid] = CreatePlayerTextDraw(playerid, 321.0000, 357.4996, "");
    PlayerTextDrawLetterSize(playerid, scm_PTD[playerid], 0.2128, 1.1390);
    PlayerTextDrawTextSize(playerid, scm_PTD[playerid], 0.0000, 388.0000);
    PlayerTextDrawAlignment(playerid, scm_PTD[playerid], 2);
    PlayerTextDrawColor(playerid, scm_PTD[playerid], -1);
    PlayerTextDrawSetOutline(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, scm_PTD[playerid], 255);
    PlayerTextDrawFont(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, scm_PTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, scm_PTD[playerid], 0);
    return 1;
}
