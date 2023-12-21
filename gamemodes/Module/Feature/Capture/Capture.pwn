#include <a_samp>
#include <YSI\y_hooks>

enum CaptureEvent {
    StartCapture,
    Float:EventCapture[3],

    Text3D:TextEventCapture,
    PickupEventCapture,

    TimeEvent,

    NguoiChiem,
    TrangThaiCapture,
    Time10Giay
}
new PlayerEvent[CaptureEvent];



hook OnPlayerDeath(playerid, killerid, reason) {
    if(GetPVarInt(playerid, "ChiemDongNgay") != 0) {
        DeletePVar(playerid, "ChiemDongNgay");
        DeletePVar(playerid, "TimeChiemDong");

        PlayerEvent[TrangThaiCapture] = 0;
        PlayerEvent[Time10Giay] = 0;
        PlayerEvent[NguoiChiem] = -1;

        new string[1280];
        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        SendClientMessage(playerid, COLOR_YELLOW, "Ban da chet khi dang chiem dong.");
        return 1;
    }
    return 1;
}

hook OnPlayerDisconnect(playerid) {
    if(GetPVarInt(playerid, "ChiemDongNgay") != 0) {
        DeletePVar(playerid, "ChiemDongNgay");
        DeletePVar(playerid, "TimeChiemDong");

        PlayerEvent[TrangThaiCapture] = 0;
        PlayerEvent[Time10Giay] = 0;
        PlayerEvent[NguoiChiem] = -1;

        new string[1280];
        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);
        return 1;
    }
    return 1;
}




