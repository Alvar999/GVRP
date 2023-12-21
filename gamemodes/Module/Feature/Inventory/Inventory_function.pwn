#include <a_samp>
#include <YSI\y_hooks>

stock hidetuido(playerid)
{
    for(new i1=0; i1 < 21; i1++)
    {
        PlayerTextDrawHide(playerid, tdtuido1[playerid][i1]);
    }

    for(new i2=20; i2 < 41; i2++)
    {
        PlayerTextDrawHide(playerid, tdtuido2[playerid][i2]);
    }

    for(new i3=40; i3 < 61; i3++)
    {
        PlayerTextDrawHide(playerid, tdtuido3[playerid][i3]);
    }

    for(new i4=60; i4 < 81; i4++)
    {
        PlayerTextDrawHide(playerid, tdtuido4[playerid][i4]);
    }

    for(new i5=81; i5 < 101; i5++)
    {
        PlayerTextDrawHide(playerid, tdtuido5[playerid][i5]);
    }

    for(new i6=101; i6 < 121; i6++)
    {
        PlayerTextDrawHide(playerid, tdtuido6[playerid][i6]);
    }
}
stock inputitem(playerid)
{
            new idsung = GetPlayerWeapon(playerid);
            RemovePlayerWeapon(playerid, idsung);
            if(idsung == 24)
            {
                PlayerInfo[playerid][piDE] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~DE~w~ vao tui do");
            }
            if(idsung == 29)
            {
                PlayerInfo[playerid][piMp5] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~MP5~w~ vao tui do");
            }
            if(idsung == 30)
            {
                PlayerInfo[playerid][piAk] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~AK47~w~ vao tui do");
            }
            if(idsung == 27)
            {
                PlayerInfo[playerid][piCombat] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~Combat Shotgun~w~ vao tui do");
            }
            if(idsung == 31)
            {
                PlayerInfo[playerid][piM4] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~M4a1~w~ vao tui do");
            }
            if(idsung == 34)
            {
                PlayerInfo[playerid][piSniper] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~Sniper~w~ vao tui do");
            }
            if(idsung == 32)
            {
                PlayerInfo[playerid][piTec9] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~Tec9~w~ vao tui do");
            }
            if(idsung == 25)
            {
                PlayerInfo[playerid][piShotgun] = 1;
                Player_Notice(playerid, AUTO_MESSAGE, "Ban da cat mot cay ~r~Shotgun~w~ vao tui do");
            }
            return 1;
}