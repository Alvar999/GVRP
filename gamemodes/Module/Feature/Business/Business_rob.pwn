#include <a_samp>
#include <YSI\y_hooks>

#define             Time_rob                        120

new KeyPasswordHouse[MAX_PLAYERS];
new SoLanBeKhoa[MAX_PLAYERS];
new bool:Businesses_Lock = false;

stock Resetbusiness()
{
    Businesses_Lock = False;
}



stock OpenBusiness()
{
    Businesses_Lock = True;
}


CMD:khoacuopcuahang(playerid, params[]) // Lenh khoa job
{
    if(PlayerInfo[playerid][pAdmin] >= 1338)
    {
        if(!Businesses_Lock)
        {
            new string[128];
            Businesses_Lock = true;
            format(string, sizeof(string), "Ban da khoa cuop cua hang.");
            SendClientMessageEx(playerid, COLOR_YELLOW2,string);
        }
        else
        {
            new string[128];
            Businesses_Lock = false;
            format(string, sizeof(string), "Ban da mo cuop ngan hang.");
            SendClientMessageEx(playerid, COLOR_YELLOW2,string);
        }
    }
    return 1;
}


CMD:cuoptien(playerid, params[]) {
    if(PlayerInfo[playerid][pCuopCuaHang] == 2) {
        SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban da cuop cua hang truoc do roi khong the cuop tiep.");
        return 1;
    }
    if(PlayerInfo[playerid][pCuopCuaHang] == 1) {
        if(IsAt247(playerid))
        {
            PlayerInfo[playerid][pCuopCuaHang] = 2;
            
            SendClientMessageEx(playerid, COLOR_YELLOW2, "Vi tri cua ban da bi canh sat phat hien vui long tau thoat.");

            Businesses[GetPVarInt(playerid, "CuopCuaHangID")][bStatus] = 1;
            
            PlayerInfo[playerid][pWantedLevel] += 3;

            SetPVarInt(playerid, "CuopCuaHangTime", 120);
            SetTimerEx("CuopCuaHangTime", 1000, 0, "ii", playerid);
            ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
            SetTimerEx("RobBusiness", Time_rob*1000, 0, "ii", playerid);
            
            return 1;
        }else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban can phai trong cua hang moi co the cuop.");
    }else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban chua thuc hien vu cuop cua hang nao het.");
    return 1;
}

CMD:rsallcuop(playerid,params[])
{
    if(PlayerInfo[playerid][pAdmin]>=99999)
    {
        new str[128];
        format(str, sizeof(str),"Ban da reset cuop cua hang cho toan bo nguoi choi.");
        SendClientMessageEx(playerid, COLOR_YELLOW2,str);
        for(new i; i < MAX_PLAYERS; i++)
        {
            if(IsPlayerConnected(i))
            {
                PlayerInfo[i][pCuopCuaHang] = 0;
            }
        }
    }
    return 1;
}

CMD:cuopcuahang(playerid, params[]) {
    if(Businesses_Lock == true) return SendClientMessageEx(playerid, COLOR_YELLOW2, "Cuop cua hang hien dang bi khoa boi admin.");
    if(checkcops >= 2)
    {
        if(IsACop(playerid) || IsAMedic(playerid)) {
            SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban hien dang la nhan vien canh sat, nen khong the thuc hien vu cuop.");
            return 1;
        }
        if(SoLanBeKhoa[playerid] == 3) {
            SendClientMessageEx(playerid, COLOR_YELLOW2, "Do ban da be khoa nha that bai 3 lan, nen ban da bi gioi han cuop nha sau [1 gio].");
            return 1;
        }
        if(PlayerInfo[playerid][pCuopCuaHang] == 0) {
            for(new i = 0; i < sizeof(Businesses); i++)
            {
                if(IsPlayerInRangeOfPoint(playerid,3,Businesses[i][bExtPos][0], Businesses[i][bExtPos][1], Businesses[i][bExtPos][2]))
                {
                    if(Businesses[i][bStatus] == 1) { // Business bi khoa
                        SetPVarInt(playerid, "CuopCuaHangID", i);
                        
                        new pass1 = random(100);
                        new pass2 = random(100);
                        new pass3 = random(100);
                        
                        KeyPasswordHouse[playerid] = pass1 + pass2 + pass3;

                        ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
                    
                        new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
                        new zone[MAX_ZONE_NAME];
                        GetPlayer3DZone(playerid, zone, sizeof(zone));
                        format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
                        format(str4, sizeof(str), "{ffff00}Ban da bat dau cuop cua hang o khu vuc  : {FF0000}%s.", zone);
                        format(str5, sizeof(str), "\n{ffffff} -> Tinh trang cua hang : %s.", "Lock");
                        format(str6, sizeof(str), "{ffffff} -> Ma be khoa : {00ff00}%d + %d + %d{FFFFFF} = {FF0000}?.", pass1, pass2, pass3);
                        format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
                        format(str9, sizeof(str), "Neu ban muon cuop cua hang, vui long nhap ma be khoa: ");
                        format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6,str7,str8,str9);
                        format(name, sizeof(name), "{00ff00}CUOP NHA{FFFFFF}");
                        Dialog_Show(playerid, DIALOG_CUOPNHA, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
                        return 1;
                    }
                    else { // Business khong bi khoa
                        SendClientMessageEx(playerid, COLOR_YELLOW2, "[CUOP NHA] Hien tai ngoi nha nay da bi ai do cuop truoc do roi khong the cuop tiep tuc.");
                        return 1;
                    }
                }
            }
            SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban khong o gan cua hang nao het");
        }else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban da cuop 1 cua hang truoc do roi.");
    } else SendClientMessage(playerid, COLOR_YELLOW2, "Khong du Police de thuc hien vu cuop");
    return 1;
}

