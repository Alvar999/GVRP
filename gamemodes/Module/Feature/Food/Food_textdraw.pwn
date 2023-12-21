#include <a_samp>
#include <YSI\y_hooks>

new PlayerText: FoodShop[MAX_PLAYERS][13];

stock showquythucan(playerid)	{

	FoodShop[playerid][0] = CreatePlayerTextDraw(playerid, 267.000, 150.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][0], 128.000, 18.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][0], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][0], -1448498689);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][0], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][0], 1);

	FoodShop[playerid][1] = CreatePlayerTextDraw(playerid, 270.000, 155.000, "LD_POOL:ball");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][1], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][1], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][1], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][1], 1);

	FoodShop[playerid][2] = CreatePlayerTextDraw(playerid, 300.000, 152.000, "Quay thuc an");
	PlayerTextDrawLetterSize(playerid, FoodShop[playerid][2], 0.319, 1.199);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][2], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][2], -16776961);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][2], 150);
	PlayerTextDrawFont(playerid, FoodShop[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][2], 1);

	FoodShop[playerid][3] = CreatePlayerTextDraw(playerid, 395.000, 131.000, "LD_BEAT:cross");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][3], 24.000, 21.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][3], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][3], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, FoodShop[playerid][3], 1);

	FoodShop[playerid][4] = CreatePlayerTextDraw(playerid, 180.000, 142.000, "_");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][4], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][4], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][4], 0);
	PlayerTextDrawFont(playerid, FoodShop[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, FoodShop[playerid][4], 2215);
	PlayerTextDrawSetPreviewRot(playerid, FoodShop[playerid][4], -41.000, -20.000, 110.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, FoodShop[playerid][4], 0, 0);
	PlayerTextDrawSetSelectable(playerid, FoodShop[playerid][4], 1);

	FoodShop[playerid][5] = CreatePlayerTextDraw(playerid, 254.000, 142.000, "_");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][5], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][5], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][5], 0);
	PlayerTextDrawFont(playerid, FoodShop[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, FoodShop[playerid][5], 2218);
	PlayerTextDrawSetPreviewRot(playerid, FoodShop[playerid][5], -41.000, -20.000, 110.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, FoodShop[playerid][5], 0, 0);
	PlayerTextDrawSetSelectable(playerid, FoodShop[playerid][5], 1);

	FoodShop[playerid][6] = CreatePlayerTextDraw(playerid, 354.000, 149.000, "_");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][6], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][6], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][6], 0);
	PlayerTextDrawFont(playerid, FoodShop[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, FoodShop[playerid][6], 2221);
	PlayerTextDrawSetPreviewRot(playerid, FoodShop[playerid][6], -41.000, -20.000, 110.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, FoodShop[playerid][6], 0, 0);
	PlayerTextDrawSetSelectable(playerid, FoodShop[playerid][6], 1);

	FoodShop[playerid][7] = CreatePlayerTextDraw(playerid, 202.000, 240.000, "Ga ran + Nuoc ngot       $10000");
	PlayerTextDrawLetterSize(playerid, FoodShop[playerid][7], 0.170, 0.999);
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][7], 262.000, 9.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][7], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][7], -421070081);
	PlayerTextDrawUseBox(playerid, FoodShop[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, FoodShop[playerid][7], -1448498689);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][7], 150);
	PlayerTextDrawFont(playerid, FoodShop[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][7], 1);

	FoodShop[playerid][8] = CreatePlayerTextDraw(playerid, 197.000, 235.000, "LD_SPAC:Health");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][8], 5.000, 5.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][8], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][8], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][8], 1);

	FoodShop[playerid][9] = CreatePlayerTextDraw(playerid, 284.000, 240.000, "Pizza + Nuoc ngot        $10000");
	PlayerTextDrawLetterSize(playerid, FoodShop[playerid][9], 0.179, 0.999);
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][9], 347.000, 9.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][9], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][9], -421070081);
	PlayerTextDrawUseBox(playerid, FoodShop[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid, FoodShop[playerid][9], -1448498689);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][9], 1);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][9], 1);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][9], 150);
	PlayerTextDrawFont(playerid, FoodShop[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][9], 1);

	FoodShop[playerid][10] = CreatePlayerTextDraw(playerid, 280.000, 235.000, "LD_SPAC:Health");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][10], 5.000, 5.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][10], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][10], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][10], 1);

	FoodShop[playerid][11] = CreatePlayerTextDraw(playerid, 369.000, 240.000, "Burger + Nuoc ngot       $10000");
	PlayerTextDrawLetterSize(playerid, FoodShop[playerid][11], 0.179, 0.999);
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][11], 433.000, 9.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][11], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][11], -421070081);
	PlayerTextDrawUseBox(playerid, FoodShop[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid, FoodShop[playerid][11], -1448498689);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][11], 1);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][11], 150);
	PlayerTextDrawFont(playerid, FoodShop[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][11], 1);

	FoodShop[playerid][12] = CreatePlayerTextDraw(playerid, 365.000, 235.000, "LD_SPAC:Health");
	PlayerTextDrawTextSize(playerid, FoodShop[playerid][12], 5.000, 5.000);
	PlayerTextDrawAlignment(playerid, FoodShop[playerid][12], 1);
	PlayerTextDrawColor(playerid, FoodShop[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, FoodShop[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, FoodShop[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, FoodShop[playerid][12], 255);
	PlayerTextDrawFont(playerid, FoodShop[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, FoodShop[playerid][12], 1);
	return 1;
}


hook OnPlayerConnect(playerid)	{
	showquythucan(playerid);
	return 1;
}
