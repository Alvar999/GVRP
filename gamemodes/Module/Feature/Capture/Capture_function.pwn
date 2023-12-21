#include <a_samp>
#include <YSI\y_hooks>

forward TimeChiemDong(playerid);
public TimeChiemDong(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 150.0, PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2])) {

        SetPVarInt(playerid, "ChiemDongNgay", GetPVarInt(playerid, "ChiemDongNgay")-1);
        if(PlayerEvent[Time10Giay] > 0) PlayerEvent[Time10Giay] -= 1;

        new string[1280];
        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "ChiemDongNgay"));
        HienTextdraw(playerid, string);

        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s (%d giay)\nBang dang : %s", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), PlayerEvent[Time10Giay], FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName]);
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        if(GetPVarInt(playerid, "ChiemDongNgay") > 0) SetTimerEx("TimeChiemDong", 1000, 0, "d", playerid);
        if(GetPVarInt(playerid, "ChiemDongNgay") <= 0)
        {
            DeletePVar(playerid, "DangBiChiemDong");
            DeletePVar(playerid, "ChiemDongNgay");
            DeletePVar(playerid, "TimeChiemDong");
            PlayerEvent[Time10Giay] = 0;
            PlayerEvent[TrangThaiCapture] = 2;
			if(!IsATowman(playerid) && PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID) {
	            format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nBang dang: %s", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName]);
	            UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);
            }

            foreach(new i: Player)
            {
                if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID && !IsATowman(playerid)) {
                    if(PlayerEvent[TrangThaiCapture] == 2) {
                        new thongbao[5000];
                        format(thongbao, sizeof thongbao, "Bang dang %s da chiem dong thanh cong khu vuc %s.", FamilyInfo[PlayerInfo[playerid][pFMember]][FamilyName], zone);
                        SendClientMessage(i, COLOR_YELLOW, thongbao);
                    }
                }
            }
        }
    }else {
        DeletePVar(playerid, "ChiemDongNgay");
        DeletePVar(playerid, "DangBiChiemDong");
        DeletePVar(playerid, "TimeChiemDong");

        PlayerEvent[TrangThaiCapture] = 0;
        PlayerEvent[Time10Giay] = 0;
        PlayerEvent[NguoiChiem] = -1;

        new string[1280];
        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        SendClientMessage(playerid, COLOR_YELLOW, "Ban da chiem dong khong thanh cong, vi qua xa khu vuc can chiem dong.");
        return 1;
    }
    return 1;
}

stock TrangThaiChiemDong(id) {
    new name[1280];
    if(id == 0) name = "Chua bi chiem";
    else if(id == 1) name = "Dang bi chiem";
    else if(id == 2) name = "Da bi chiem dong";
    return name;
}