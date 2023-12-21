#include <a_samp>
#include <YSI\y_hooks>

CMD:chiemdong(playerid, params[]) {
    if(PlayerEvent[StartCapture] == 0) {
        SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chuc nang nay chua duoc bat dau.");
        return 1;
    }
    if(PlayerEvent[TimeEvent] == 0) {
        SendClientMessage(playerid, COLOR_YELLOW, "Hien tai da het thoi gian chiem dong.");
        return 1;
    }
    if(GetPVarInt(playerid,"Injured") == 1)
    {
        SendClientMessageEx(playerid, COLOR_GRAD1, " Ban khong the chiem dong khi dang bi thuong!");
        return 1;
    }
    if(playerid == PlayerInfo[playerid][pMember]) {
        SendClientMessageEx(playerid, COLOR_YELLOW, "Hien tai Family cua ban da chiem dong khu vuc nay.");
        return 1;
    }
    if(playerid == PlayerEvent[NguoiChiem]) {
        SendClientMessage(playerid, COLOR_YELLOW, "Ban da chiem vi tri nay truoc do roi , khong the chiem tiep tuc.");
        return 1;
    }
    if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2])) {
        if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID || IsATowman(playerid)) {
            if(GetPVarInt(playerid, "ChiemDongNgay") == 0) {


                PlayerEvent[NguoiChiem] = playerid;
                PlayerEvent[TrangThaiCapture] = 1;
                PlayerEvent[Time10Giay] = 600;

                SetPVarInt(playerid, "ChiemDongNgay", 600);
                SetTimerEx("TimeChiemDong", 1000, 0, "d", playerid);

                new string[1280];
                new zone[MAX_ZONE_NAME];
                Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
                format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s (%d giay)\nBang dang: %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), PlayerEvent[Time10Giay], FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName]);
                UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

                foreach(new i : Player)
                {
                    if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID) {
                        new thongbao[5000];
                        format(thongbao, sizeof thongbao, "[CHIEM DONG] Bang dang %s da chiem dong khu vuc %s khu vuc nay se la cua ho trong 10 phut.", FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName], zone);
                        SendClientMessageToAll(COLOR_YELLOW, thongbao);
                    }
                }
                return 1;
            }
        } else return SendClientMessage(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
    }
    return 1;
}

CMD:diadiemchiemdong(playerid, params[]) {
    if(PlayerEvent[StartCapture] == 1) {
        PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
        SetPlayerCheckpoint(playerid, PlayerEvent[EventCapture][0],PlayerEvent[EventCapture][1],PlayerEvent[EventCapture][2], 3.0);
        CP[playerid] = 252000;
        SendClientMessage(playerid, COLOR_YELLOW, "Vi tri chiem dong da duoc hien thi tren ban do.");
        return 1;
    }else SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chiem dong chua  duoc bat dau, khong the /diadiemchiemdong.");
    return 1;
}
CMD:startcapture(playerid) {
    if(PlayerInfo[playerid][pAdmin] >= 1337) {
        if(PlayerEvent[StartCapture] == 0) {
            PlayerEvent[StartCapture] = 1;
            PlayerEvent[TimeEvent] = 15;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            new Float:Pos[3];
            GetPlayerPos(playerid, Pos[0],  Pos[1],  Pos[2]);
            PlayerEvent[EventCapture][0] = Pos[0];
            PlayerEvent[EventCapture][1] = Pos[1];
            PlayerEvent[EventCapture][2] = Pos[2];

            new string[1280];
            new zone[MAX_ZONE_NAME];
            Get3DZone(Pos[0],  Pos[1],  Pos[2], zone, sizeof(zone));

            format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nSu dung: /chiemdong.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
            PlayerEvent[TextEventCapture] = CreateDynamic3DTextLabel(string, -1, Pos[0],  Pos[1],  Pos[2]+0.7, 50.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
            PlayerEvent[PickupEventCapture] = CreateDynamicPickup(1313, 23, Pos[0],  Pos[1],  Pos[2]);


            new thongbao[1280];
            format(thongbao, sizeof(thongbao),"Chiem dong da duoc duoc bat dau vui long (/diadiemchiemdong) de den.");
            SendClientMessageToAll(COLOR_YELLOW,thongbao);

            SendClientMessage(playerid, COLOR_YELLOW, "Ban da bat dau chuc nang chiem dong thanh cong.");
            return 1;
        }
        else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chiem dong da duoc bat dau roi, khong the bat dau tiep tuc.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban khong the su dung lenh nay.");
    return 1;
}

CMD:stopcapture(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 1337) {
        if(PlayerEvent[StartCapture] == 1) {
            PlayerEvent[StartCapture] = 0;
            PlayerEvent[TimeEvent] = 0;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            PlayerEvent[EventCapture][0] = 0;
            PlayerEvent[EventCapture][1] = 0;
            PlayerEvent[EventCapture][2] = 0;

            DestroyDynamic3DTextLabel(PlayerEvent[TextEventCapture]);
            DestroyDynamicPickup(PlayerEvent[PickupEventCapture]);

            SendClientMessage(playerid, COLOR_YELLOW, "Ban da ngung he thong chiem dong thanh cong.");
            return 1;
        }
        else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai he thong chiem dong nay, chua duoc bat dau.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban khong the su dung lenh nay.");
    return 1;
}