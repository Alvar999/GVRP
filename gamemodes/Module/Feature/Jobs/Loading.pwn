#include <YSI\y_hooks>

new PlayerText:Loader[MAX_PLAYERS][3];

forward LoadingProgress(playerid,loadingid,speed);
forward OnLoadingFinish(playerid,loadingid);
static
        Loading_Progess[MAX_PLAYERS],
        TimerLoading[MAX_PLAYERS];

stock LoaderStarting(playerid, loadingid, const LoaderInfo[], Float:speed, color) {
	if(GetPVarInt(playerid, "is_loading") == 1) return 1;
    switch(color) {
    	case 0: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
        case 1: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
        case 2: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -202218806);
        case 3: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 1960470730);
        case 4: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 2021902794);
        case 5: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -943949110);
        case 6: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -948405558);
    }
    PlayerTextDrawColor(playerid, Loader[playerid][2], color);
	new str[60];
	format(str, sizeof str, "%s", LoaderInfo);
	PlayerTextDrawSetString(playerid, Loader[playerid][1], str);
    PlayerTextDrawShow(playerid, Loader[playerid][0]);
    PlayerTextDrawShow(playerid, Loader[playerid][1]);
    TimerLoading[playerid] = SetTimerEx("LoadingProgress", 96, true, "iii", playerid,loadingid,floatround(speed));
    SetPVarInt(playerid, "is_loading", 1);
    return 1;
}

public LoadingProgress(playerid,loadingid,speed) {
    new Float:loading_bar;
    Loading_Progess[playerid] += 1 * speed;
    loading_bar = ( Loading_Progess[playerid] *  1.27 );
    
    switch(loadingid) {
	}
    
    PlayerTextDrawTextSize(playerid, Loader[playerid][2], 257.000000 + loading_bar, 0.000000);
    PlayerTextDrawShow(playerid, Loader[playerid][2]);
    if(Loading_Progess[playerid] >= 100) {
        KillTimer(TimerLoading[playerid]);
        DeletePVar(playerid, "is_loading");
        Loading_Progess[playerid] = 0;
        OnLoadingFinish(playerid,loadingid);
        PlayerTextDrawHide(playerid, Loader[playerid][0]);
        PlayerTextDrawHide(playerid, Loader[playerid][1]);
        PlayerTextDrawHide(playerid, Loader[playerid][2]);
    }
}

public OnLoadingFinish(playerid,loadingid) {
	switch(loadingid) {
	}
	return 1;
}
