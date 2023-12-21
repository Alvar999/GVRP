#include <a_samp>
#include <YSI\y_hooks>


task UpdateCapture[30000] () {
    if(PlayerEvent[StartCapture] == 1) {
        if(PlayerEvent[TimeEvent] > 0) {
            PlayerEvent[TimeEvent] -= 1;
        }
        if(PlayerEvent[TimeEvent] == 0) {
            new zone[MAX_ZONE_NAME];
            Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));

            if(PlayerInfo[PlayerEvent[NguoiChiem]][pFMember] != INVALID_FAMILY_ID && !IsATowman(PlayerEvent[NguoiChiem]))
			{
	            new thongbao[50000];
	            format(thongbao, sizeof thongbao, "{FF0000}[CHIEM DONG] Bang dang %s da chiem dong thanh cong khu vuc %s.", FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName], zone);
	            SendClientMessageToAll(COLOR_YELLOW, thongbao);
            }

            PlayerEvent[StartCapture] = 0;
            PlayerEvent[TimeEvent] = 0;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            PlayerEvent[EventCapture][0] = 0;
            PlayerEvent[EventCapture][1] = 0;
            PlayerEvent[EventCapture][2] = 0;

            PlayerInfo[PlayerEvent[NguoiChiem]][pCash] += 1000000;

            DestroyDynamic3DTextLabel(PlayerEvent[TextEventCapture]);
            DestroyDynamicPickup(PlayerEvent[PickupEventCapture]);
        }
    }
}