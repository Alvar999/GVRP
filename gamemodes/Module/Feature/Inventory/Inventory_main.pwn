#include <a_samp>
#include <YSI\y_hooks>

CMD:tuidotd(playerid, params[]) //de , mp5 , ak , compat , m4 , sniper , shotgun , tec9 , binh xang , mk1 , mk2
{
        if(GetPVarInt(playerid, "IsInArena") > 0) return Player_Notice(playerid, AUTO_MESSAGE, "Ban khong the su dung ~r~Tui do~w~tai arena");
        SelectTextDraw(playerid, 0x00FF00FF);
        ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);

        if(PlayerInfo[playerid][piDE] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][48]);
        }
        if(PlayerInfo[playerid][piMp5] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][49]);
        }
        if(PlayerInfo[playerid][piAk] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][50]);
        }
        if(PlayerInfo[playerid][piCombat] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][51]);
        }
        if(PlayerInfo[playerid][piM4] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][52]);
        }
        if(PlayerInfo[playerid][piSniper] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][53]);
        }
        if(PlayerInfo[playerid][piShotgun] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][54]);
        }
        if(PlayerInfo[playerid][piTec9] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][55]);
        }
        if(PlayerInfo[playerid][pCanXang] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][56]);
        }
        if(PlayerInfo[playerid][pMayKhoan] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][57]);
        }
        if(PlayerInfo[playerid][pMayKhoan] > 1)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][58]);
        }
        if(PlayerInfo[playerid][pKimCuong] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][59]);
        }
        if(PlayerInfo[playerid][pDirtyMoney] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][60]);
        }
        if(PlayerInfo[playerid][pWeed] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][61]);
        }
        if(PlayerInfo[playerid][pCrom] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][62]);
        }
        if(PlayerInfo[playerid][pRuteni] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][63]);
        }
        if(PlayerInfo[playerid][pTitan] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][64]);
        }
        if(PlayerInfo[playerid][pWolfram] > 0)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][65]);
        }

        for(new test1 = 0; test1 < 102; test1++)
        {
            PlayerTextDrawShow(playerid, tdtuido1[playerid][test1]);
        }

        for(new test2 = 20; test2 < 102; test2++)
        {
            PlayerTextDrawShow(playerid, tdtuido2[playerid][test2]);
        }

        for(new test3 = 40; test3 < 48; test3++)
        {
            PlayerTextDrawShow(playerid, tdtuido3[playerid][test3]);
        }

        for(new test4 = 66; test4 < 102; test4++)
        {
            PlayerTextDrawShow(playerid, tdtuido4[playerid][test4]);
        }

        for(new test5 = 80; test5 < 102; test5++)
        {
            PlayerTextDrawShow(playerid, tdtuido5[playerid][test5]);
        }

        for(new test6 = 100; test6 < 120; test6++)
        {
            PlayerTextDrawShow(playerid, tdtuido6[playerid][test6]);
        }
        return 1;
}
