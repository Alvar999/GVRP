#include <a_samp>
#include <YSI\y_hooks>
#include "./Module/Feature/Business/Business_rob.pwn"

Dialog:DIALOG_CUOPNHA(playerid, response, listitem, inputtext[])
{
    if(response == 1)
    {
        new password = strval(inputtext);
        if(password > 0 && password < 400) {
            if(password == KeyPasswordHouse[playerid]) {
                new thongbao[1280];
                format(thongbao, sizeof(thongbao), "[CUOP CUA HANG] Ban da be khoa cua hang cua %s thanh cong hay vao ben trong va su dung (/cuoptien).", Businesses[playerid][bOwnerName]);
                SendClientMessageEx(playerid, COLOR_LIGHTRED, thongbao);
                SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban da duoc truyen toi canh sat!.");
                PlayerInfo[playerid][pCuopCuaHang] = 1;
                foreach(Player, c)
                {
                    if(IsACop(c))
                    {
                        new zone[MAX_ZONE_NAME];
                        GetPlayer3DZone(playerid, zone, sizeof(zone));
                        new stringz[1280];
                        format(stringz, sizeof(stringz), "CAMERA GIAM SAT: Phat hien co doi tuong dang cuop cua hang khu vuc %s vui long den ngay !!!", zone);
                        SendClientMessageEx(c, COLOR_YELLOW, stringz);
                    }
                }
                TogglePlayerControllable(playerid, true);
                PlayerPlaySound(playerid, 1138, 0.0, 0.0, 0.0);
                return 1;
            }else {
                SoLanBeKhoa[playerid] += 1;
                new thongbao[1280];
                format(thongbao, sizeof(thongbao), "[CUOP CUA HANG] Ban da nhap sai ma cuop cua hang , hien ban con %d / 3 lan be khoa cua hang.", SoLanBeKhoa[playerid]);
                SendClientMessageEx(playerid, COLOR_YELLOW2, thongbao);
                SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban cuop nha da duoc truyen toi canh sat!.");
                
                if(SoLanBeKhoa[playerid] == 3) {
                    PlayerInfo[playerid][pCuopCuaHang] = 2;
                }
                
                foreach(Player, c)
                {
                    if(IsACop(c))
                    {
                        SendClientMessageEx(c, COLOR_YELLOW, "CAMERA GIAM SAT: Phat hien co doi tuong dang cuop cua hang vui long den ngay !!!.");
                    }
                }
                return 1;
            }
         }
         else {
            SoLanBeKhoa[playerid] += 1;
            new thongbao[1280];
            format(thongbao, sizeof(thongbao), "[CUOP CUA HANG] Ban da nhap sai ma be khoa cua hang , hien ban con %d / 3 lan be khoa cua hang.", SoLanBeKhoa[playerid]);
            SendClientMessageEx(playerid, COLOR_YELLOW2, thongbao);
            SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban cuop nha da duoc truyen toi canh sat!.");

            if(SoLanBeKhoa[playerid] == 3) {
                PlayerInfo[playerid][pCuopCuaHang] = 2;
            }
            
            foreach(Player, c)
            {
                if(IsACop(c))
                {
                    SendClientMessageEx(c, COLOR_YELLOW, "CAMERA GIAM SAT: Phat hien co doi tuong dang cuop cua hang vui long den ngay !!!.");
                }
            }
            return 1;
         }
    }
    else
    {
        ClearAnimations(playerid);
        TogglePlayerControllable(playerid, true);
    }
    return 1;
}