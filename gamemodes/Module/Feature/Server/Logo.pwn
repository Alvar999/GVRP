#include <a_samp>
#include <YSI\y_hooks>

new Text: tdgvrp[2];

hook OnPlayerConnect(playerid)	{
	showlogo(playerid);
	return 1;
}


stock showlogo(playerid)	{
	if(IsPlayerMobile(playerid))
	{
		tdgvrp[0] = TextDrawCreate(319.000, 1.000, "GVRP");
		TextDrawLetterSize(tdgvrp[0], 0.689, 3.199);
		TextDrawTextSize(tdgvrp[0], 4.000, 3.000);
		TextDrawAlignment(tdgvrp[0], 2);
		TextDrawColor(tdgvrp[0], -1);
		TextDrawSetShadow(tdgvrp[0], 1);
		TextDrawSetOutline(tdgvrp[0], 0);
		TextDrawBackgroundColor(tdgvrp[0], 150);
		TextDrawFont(tdgvrp[0], 2);
		TextDrawSetProportional(tdgvrp[0], 1);
	}
	else {
		tdgvrp[0] = TextDrawCreate(273.000, 2.000, "mdl-2011:gvrp");
		TextDrawTextSize(tdgvrp[0], 88.000, 23.000);
		TextDrawAlignment(tdgvrp[0], 1);
		TextDrawColor(tdgvrp[0], -1);
		TextDrawSetShadow(tdgvrp[0], 0);
		TextDrawSetOutline(tdgvrp[0], 0);
		TextDrawBackgroundColor(tdgvrp[0], 255);
		TextDrawFont(tdgvrp[0], 4);
		TextDrawSetProportional(tdgvrp[0], 1);
	}

	tdgvrp[1] = TextDrawCreate(316.000, 22.000, "15:20:30");
	TextDrawLetterSize(tdgvrp[1], 0.300, 1.500);
	TextDrawAlignment(tdgvrp[1], 2);
	TextDrawColor(tdgvrp[1], -1);
	TextDrawSetShadow(tdgvrp[1], 1);
	TextDrawSetOutline(tdgvrp[1], 0);
	TextDrawBackgroundColor(tdgvrp[1], 150);
	TextDrawFont(tdgvrp[1], 2);
	TextDrawSetProportional(tdgvrp[1], 1);
	return 1;
}

task UpdateWanted[1000]() {
    gettime(hour,minuite,second);
    new time[1280];
	format(time, sizeof(time), "%d:%d:%d", hour,minuite,second);
	TextDrawSetString(tdgvrp[1], time);
	return 1;
}