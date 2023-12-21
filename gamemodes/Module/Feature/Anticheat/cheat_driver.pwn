#include <a_samp>
#include <YSI\y_hooks>

stock deadInCar(playerid) {
    if(GetPVarType(playerid, "Injured")) {
		SetPlayerPos(playerid, GetPVarFloat(playerid,"MedicX"), GetPVarFloat(playerid,"MedicY"), GetPVarFloat(playerid,"MedicZ"));
		ClearAnimations(playerid);
		ApplyAnimation(playerid, "SWAT", "gnstwall_injurd", 4.0, 0, 1, 1, 1, 0, 1);
		return 1;
	}
	if(PlayerCuffed[playerid] != 0) {
		ClearAnimations(playerid);
		ApplyAnimation(playerid,"ped","cower",1,1,0,0,0,0,1);
		TogglePlayerControllable(playerid, false);
		return 1;
	}
	return 1;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(ispassenger == 0 || ispassenger == 1) {
		deadInCar(playerid);
		return 1;
	}
	return 1;
}
