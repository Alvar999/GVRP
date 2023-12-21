#include "./Module/Feature/Jobs/Loading.pwn"
#include "./Module/Feature/Event/Taifaint.pwn"

CreatePokerGUI(playerid)
{
    PlayerPokerUI[playerid][0] = CreatePlayerTextDraw(playerid, 390.000000, 263.000000, " "); // Seat 2 (SEAT 1)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][0], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][0], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][0], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][0], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][0], 0);

	PlayerPokerUI[playerid][1] = CreatePlayerTextDraw(playerid, 389.000000, 273.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][1], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][1], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][1], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][1], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][1], 0);

	PlayerPokerUI[playerid][2] = CreatePlayerTextDraw(playerid, 369.000000, 286.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][2], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][2], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][2], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][2], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][2], 20.000000, 33.000000);

	PlayerPokerUI[playerid][3] = CreatePlayerTextDraw(playerid, 392.000000, 286.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][3], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][3], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][3], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][3], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][3], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][3], 20.000000, 33.000000);

	PlayerPokerUI[playerid][4] = CreatePlayerTextDraw(playerid, 391.000000, 319.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][4], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][4], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][4], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][4], 0);

	PlayerPokerUI[playerid][5] = CreatePlayerTextDraw(playerid, 250.000000, 263.000000, " "); // Seat 1 (SEAT 2)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][5], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][5], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][5], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][5], 0.159999, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][5], 0);

	PlayerPokerUI[playerid][6] = CreatePlayerTextDraw(playerid, 250.000000, 273.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][6], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][6], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][6], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][6], 0.159999, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][6], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][6], 0);

	PlayerPokerUI[playerid][7] = CreatePlayerTextDraw(playerid, 229.000000, 286.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][7], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][7], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][7], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][7], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][7], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][7], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][7], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][7], 20.000000, 33.000000);

	PlayerPokerUI[playerid][8] = CreatePlayerTextDraw(playerid, 252.000000, 286.000000, " ");
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][8], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][8], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][8], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][8], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][8], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][8], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][8], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][8], 20.000000, 33.000000);

	PlayerPokerUI[playerid][9] = CreatePlayerTextDraw(playerid, 250.000000, 319.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][9], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][9], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][9], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][9], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][9], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][9], 0);

	PlayerPokerUI[playerid][10] = CreatePlayerTextDraw(playerid, 199.000000, 190.000000, " "); // Seat 6 (SEAT 3)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][10], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][10], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][10], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][10], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][10], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][10], 0);

	PlayerPokerUI[playerid][11] = CreatePlayerTextDraw(playerid, 199.000000, 199.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][11], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][11], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][11], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][11], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][11], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][11], 0);

	PlayerPokerUI[playerid][12] = CreatePlayerTextDraw(playerid, 179.000000, 212.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][12], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][12], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][12], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][12], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][12], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][12], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][12], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][12], 20.000000, 33.000000);

	PlayerPokerUI[playerid][13] = CreatePlayerTextDraw(playerid, 202.000000, 212.000000, " ");
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][13], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][13], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][13], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][13], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][13], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][13], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][13], 20.000000, 33.000000);

	PlayerPokerUI[playerid][14] = CreatePlayerTextDraw(playerid, 200.000000, 245.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][14], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][14], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][14], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][14], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][14], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][14], 0);

	PlayerPokerUI[playerid][15] = CreatePlayerTextDraw(playerid, 250.000000, 116.000000, " ");  // Seat 5 (SEAT 4)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][15], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][15], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][15], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][15], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][15], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][15], 0);

	PlayerPokerUI[playerid][16] = CreatePlayerTextDraw(playerid, 250.000000, 126.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][16], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][16], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][16], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][16], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][16], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][16], 0);

	PlayerPokerUI[playerid][17] = CreatePlayerTextDraw(playerid, 229.000000, 139.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][17], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][17], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][17], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][17], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][17], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][17], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][17], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][17], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][17], 20.000000, 33.000000);

	PlayerPokerUI[playerid][18] = CreatePlayerTextDraw(playerid, 252.000000, 139.000000, " ");
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][18], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][18], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][18], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][18], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][18], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][18], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][18], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][18], 20.000000, 33.000000);

	PlayerPokerUI[playerid][19] = CreatePlayerTextDraw(playerid, 250.000000, 172.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][19], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][19], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][19], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][19], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][19], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][19], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][19], 0);

	PlayerPokerUI[playerid][20] = CreatePlayerTextDraw(playerid, 390.000000, 116.000000, " "); // Seat 4 (SEAT 5)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][20], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][20], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][20], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][20], 0.159997, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][20], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][20], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][20], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][20], 0);

	PlayerPokerUI[playerid][21] = CreatePlayerTextDraw(playerid, 389.000000, 126.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][21], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][21], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][21], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][21], 0.159997, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][21], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][21], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][21], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][21], 0);

	PlayerPokerUI[playerid][22] = CreatePlayerTextDraw(playerid, 369.000000, 139.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][22], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][22], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][22], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][22], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][22], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][22], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][22], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][22], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][22], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][22], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][22], 20.000000, 33.000000);

	PlayerPokerUI[playerid][23] = CreatePlayerTextDraw(playerid, 392.000000, 139.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][23], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][23], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][23], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][23], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][23], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][23], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][23], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][23], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][23], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][23], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][23], 20.000000, 33.000000);

	PlayerPokerUI[playerid][24] = CreatePlayerTextDraw(playerid, 391.000000, 172.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][24], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][24], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][24], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][24], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][24], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][24], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][24], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][24], 0);

	PlayerPokerUI[playerid][25] = CreatePlayerTextDraw(playerid, 443.000000, 190.000000, " "); // Seat 3 (SEAT 6)
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][25], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][25], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][25], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][25], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][25], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][25], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][25], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][25], 0);

	PlayerPokerUI[playerid][26] = CreatePlayerTextDraw(playerid, 442.000000, 199.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][26], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][26], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][26], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][26], 0.159998, 1.200001);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][26], 16711935);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][26], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][26], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][26], 0);

	PlayerPokerUI[playerid][27] = CreatePlayerTextDraw(playerid, 422.000000, 212.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][27], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][27], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][27], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][27], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][27], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][27], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][27], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][27], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][27], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][27], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][27], 20.000000, 33.000000);

	PlayerPokerUI[playerid][28] = CreatePlayerTextDraw(playerid, 445.000000, 212.000000, " ");
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][28], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][28], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][28], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][28], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][28], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][28], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][28], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][28], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][28], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][28], 20.000000, 33.000000);

	PlayerPokerUI[playerid][29] = CreatePlayerTextDraw(playerid, 444.000000, 245.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][29], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][29], 100);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][29], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][29], 0.180000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][29], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][29], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][29], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][29], 0);

	PlayerPokerUI[playerid][30] = CreatePlayerTextDraw(playerid, 265.000000, 205.000000, "New Textdraw"); // Community Card Box
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][30], 0);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][30], 1);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][30], 0.539999, 2.099998);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][30], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][30], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][30], 100);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][30], 375.000000, 71.000000);

	PlayerPokerUI[playerid][31] = CreatePlayerTextDraw(playerid, 266.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][31], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][31], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][31], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][31], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][31], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][31], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][31], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][31], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][31], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][31], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][31], 20.000000, 33.000000);

	PlayerPokerUI[playerid][32] = CreatePlayerTextDraw(playerid, 288.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][32], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][32], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][32], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][32], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][32], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][32], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][32], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][32], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][32], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][32], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][32], 20.000000, 33.000000);

	PlayerPokerUI[playerid][33] = CreatePlayerTextDraw(playerid, 310.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][33], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][33], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][33], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][33], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][33], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][33], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][33], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][33], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][33], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][33], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][33], 20.000000, 33.000000);

	PlayerPokerUI[playerid][34] = CreatePlayerTextDraw(playerid, 332.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][34], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][34], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][34], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][34], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][34], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][34], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][34], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][34], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][34], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][34], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][34], 20.000000, 33.000000);

	PlayerPokerUI[playerid][35] = CreatePlayerTextDraw(playerid, 354.000000, 208.000000, "LD_CARD:cdback");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][35], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][35], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][35], 4);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][35], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][35], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][35], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][35], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][35], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][35], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][35], 255);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][35], 20.000000, 33.000000);

	PlayerPokerUI[playerid][36] = CreatePlayerTextDraw(playerid, 320.000000, 193.000000, "New Textdraw");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][36], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][36], 0);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][36], 1);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][36], 0.500000, 0.399999);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][36], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][36], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][36], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][36], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][36], 50);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][36], 390.000000, 110.000000);

	PlayerPokerUI[playerid][37] = CreatePlayerTextDraw(playerid, 318.000000, 191.000000, "Texas Holdem Poker");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][37], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][37], -1);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][37], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][37], 0.199999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][37], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][37], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][37], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][37], 0);

	PlayerPokerUI[playerid][38] = CreatePlayerTextDraw(playerid, 321.000000, 268.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][38], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][38], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][38], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][38], 0.189999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][38], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][38], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][38], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][38], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][38], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][38], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][38], 1);

	PlayerPokerUI[playerid][39] = CreatePlayerTextDraw(playerid, 321.000000, 284.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][39], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][39], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][39], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][39], 0.189999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][39], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][39], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][39], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][39], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][39], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][39], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][39], 1);

	PlayerPokerUI[playerid][40] = CreatePlayerTextDraw(playerid, 321.000000, 300.000000, " ");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][40], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][40], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][40], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][40], 0.189999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][40], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][40], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][40], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][40], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][40], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][40], 10.000000, 26.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][40], 1);

	PlayerPokerUI[playerid][41] = CreatePlayerTextDraw(playerid, 318.000000, 120.000000, "THOAT");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][41], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][41], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][41], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][41], 0.189999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][41], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][41], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][41], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][41], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][41], 45);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][41], 10.000000, 36.000000);
	PlayerTextDrawSetSelectable(playerid, PlayerPokerUI[playerid][41], 1);

	PlayerPokerUI[playerid][42] = CreatePlayerTextDraw(playerid, 590.000000, 400.000000, "Casino~n~Games");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][42], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][42], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][42], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][42], 0.500000, 2.000000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][42], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][42], 1);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][42], 1);

	PlayerPokerUI[playerid][43] = CreatePlayerTextDraw(playerid, 589.000000, 396.000000, "gta-sa.vn");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][43], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][43], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][43], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][43], 0.180000, 0.800000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][43], 200);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][43], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][43], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][43], 0);

	PlayerPokerUI[playerid][44] = CreatePlayerTextDraw(playerid, 588.000000, 437.000000, "Phien ban Gay");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][44], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][44], 255);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][44], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][44], 0.180000, 0.800000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][44], 200);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][44], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][44], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][44], 0);

/*	PlayerPokerUI[playerid][45] = CreatePlayerTextDraw(playerid, 5.000000, 100.000000, "Debug:");
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][45], 0);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][45], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][45], 0.159999, 1.099999);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][45], 200);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][45], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][45], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][45], 1); */

	PlayerPokerUI[playerid][46] = CreatePlayerTextDraw(playerid, 318.000000, 245.000000, "Texas Holdem Poker");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][46], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][46], -1);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][46], 2);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][46], 0.199999, 1.200000);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][46], -1);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][46], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][46], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][46], 0);

	PlayerPokerUI[playerid][47] = CreatePlayerTextDraw(playerid, 320.000000, 248.000000, "New Textdraw");
	PlayerTextDrawAlignment(playerid, PlayerPokerUI[playerid][47], 2);
	PlayerTextDrawBackgroundColor(playerid, PlayerPokerUI[playerid][47], 0);
	PlayerTextDrawFont(playerid, PlayerPokerUI[playerid][47], 1);
	PlayerTextDrawLetterSize(playerid, PlayerPokerUI[playerid][47], 0.500000, 0.399998);
	PlayerTextDrawColor(playerid, PlayerPokerUI[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, PlayerPokerUI[playerid][47], 0);
	PlayerTextDrawSetProportional(playerid, PlayerPokerUI[playerid][47], 1);
	PlayerTextDrawSetShadow(playerid, PlayerPokerUI[playerid][47], 1);
	PlayerTextDrawUseBox(playerid, PlayerPokerUI[playerid][47], 1);
	PlayerTextDrawBoxColor(playerid, PlayerPokerUI[playerid][47], 50);
	PlayerTextDrawTextSize(playerid, PlayerPokerUI[playerid][47], 390.000000, 110.000000);
}

forward LoadTextDraws();
public LoadTextDraws()
{
    // Blindfold
	BFText = TextDrawCreate(0.000000, -3.000000, " ");
	TextDrawBackgroundColor(BFText, 255);
	TextDrawFont(BFText, 1);
	TextDrawLetterSize(BFText, 50.000000, 50.000000);
	TextDrawColor(BFText, 0x000000FF);
	TextDrawSetOutline(BFText, 0);
	TextDrawSetProportional(BFText, 1);
	TextDrawSetShadow(BFText, 1);
	TextDrawUseBox(BFText, 1);
	TextDrawBoxColor(BFText, 0x000000FF);
	TextDrawTextSize(BFText, 689.000000, -53.000000);

	// WristWatch
	WristWatch = TextDrawCreate(577.000000, 50.000000, " ");
	TextDrawAlignment(WristWatch, 2);
	TextDrawBackgroundColor(WristWatch, 255);
	TextDrawFont(WristWatch, 3);
	TextDrawLetterSize(WristWatch, 0.709998, 2.100001);
	TextDrawColor(WristWatch, -1);
	TextDrawSetOutline(WristWatch, 1);
	TextDrawSetProportional(WristWatch, 0);
	textdrawscount++;

	// Bottom Box 1
	MainMenuTxtdraw[0] = TextDrawCreate(-1.000000, 342.000000, "BottomBox1");
	TextDrawBackgroundColor(MainMenuTxtdraw[0], 0);
	TextDrawFont(MainMenuTxtdraw[0], 1);
	TextDrawLetterSize(MainMenuTxtdraw[0], 0.839999, 11.600002);
	TextDrawColor(MainMenuTxtdraw[0], 0);
	TextDrawSetOutline(MainMenuTxtdraw[0], 0);
	TextDrawSetProportional(MainMenuTxtdraw[0], 1);
	TextDrawSetShadow(MainMenuTxtdraw[0], 1);
	TextDrawUseBox(MainMenuTxtdraw[0], 1);
	TextDrawBoxColor(MainMenuTxtdraw[0], 255);
	TextDrawTextSize(MainMenuTxtdraw[0], 677.000000, 134.000000);
	textdrawscount++;

	// Top Box 1
	MainMenuTxtdraw[1] = TextDrawCreate(-10.000000, -18.000000, "TopBox1");
	TextDrawBackgroundColor(MainMenuTxtdraw[1], 0);
	TextDrawFont(MainMenuTxtdraw[1], 1);
	TextDrawLetterSize(MainMenuTxtdraw[1], 0.500000, 13.000000);
	TextDrawColor(MainMenuTxtdraw[1], 0);
	TextDrawSetOutline(MainMenuTxtdraw[1], 0);
	TextDrawSetProportional(MainMenuTxtdraw[1], 1);
	TextDrawSetShadow(MainMenuTxtdraw[1], 1);
	TextDrawUseBox(MainMenuTxtdraw[1], 1);
	TextDrawBoxColor(MainMenuTxtdraw[1], 255);
	TextDrawTextSize(MainMenuTxtdraw[1], 770.000000, 0.000000);
	textdrawscount++;

	// Bottom Box 2
	MainMenuTxtdraw[2] = TextDrawCreate(-1.000000, 342.000000, "BottomBox2");
	TextDrawBackgroundColor(MainMenuTxtdraw[2], 0);
	TextDrawFont(MainMenuTxtdraw[2], 1);
	TextDrawLetterSize(MainMenuTxtdraw[2], 0.839999, -0.799999);
	TextDrawColor(MainMenuTxtdraw[2], 0);
	TextDrawSetOutline(MainMenuTxtdraw[2], 0);
	TextDrawSetProportional(MainMenuTxtdraw[2], 1);
	TextDrawSetShadow(MainMenuTxtdraw[2], 1);
	TextDrawUseBox(MainMenuTxtdraw[2], 1);
	TextDrawBoxColor(MainMenuTxtdraw[2], 6730751);
	TextDrawTextSize(MainMenuTxtdraw[2], 677.000000, 131.000000);
	textdrawscount++;

	// Top Box 1
	MainMenuTxtdraw[3] = TextDrawCreate(-10.000000, 102.000000, "TopBox1");
	TextDrawBackgroundColor(MainMenuTxtdraw[3], 6730751);
	TextDrawFont(MainMenuTxtdraw[3], 1);
	TextDrawLetterSize(MainMenuTxtdraw[3], 0.500000, 0.199999);
	TextDrawColor(MainMenuTxtdraw[3], 0);
	TextDrawSetOutline(MainMenuTxtdraw[3], 0);
	TextDrawSetProportional(MainMenuTxtdraw[3], 1);
	TextDrawSetShadow(MainMenuTxtdraw[3], 1);
	TextDrawUseBox(MainMenuTxtdraw[3], 1);
	TextDrawBoxColor(MainMenuTxtdraw[3], 6730751);
	TextDrawTextSize(MainMenuTxtdraw[3], 770.000000, 138.000000);
	textdrawscount++;

	// NG-RP Title
	MainMenuTxtdraw[4] = TextDrawCreate(263.000000, 10.000000, "GVRP");
	TextDrawBackgroundColor(MainMenuTxtdraw[4], 255);
	TextDrawFont(MainMenuTxtdraw[4], 2);
	TextDrawLetterSize(MainMenuTxtdraw[4], 0.910000, 4.400001);
 	TextDrawColor(MainMenuTxtdraw[4], -1);
	TextDrawSetOutline(MainMenuTxtdraw[4], 0);
	TextDrawSetProportional(MainMenuTxtdraw[4], 1);
	TextDrawSetShadow(MainMenuTxtdraw[4], 1);
	textdrawscount++;

	// NG-RP Subtitle
	MainMenuTxtdraw[5] = TextDrawCreate(256.000000, 45.000000, "Next Generation Gaming");
	TextDrawBackgroundColor(MainMenuTxtdraw[5], 255);
	TextDrawFont(MainMenuTxtdraw[5], 2);
	TextDrawLetterSize(MainMenuTxtdraw[5], 0.200000, 1.200001);
	TextDrawColor(MainMenuTxtdraw[5], -1);
	TextDrawSetOutline(MainMenuTxtdraw[5], 0);
	TextDrawSetProportional(MainMenuTxtdraw[5], 1);
	TextDrawSetShadow(MainMenuTxtdraw[5], 1);
	textdrawscount++;

	// NG-RP Version
	MainMenuTxtdraw[6] = TextDrawCreate(283.000000, 58.000000, SERVER_GM_TEXT);
	TextDrawBackgroundColor(MainMenuTxtdraw[6], 255);
	TextDrawFont(MainMenuTxtdraw[6], 2);
	TextDrawLetterSize(MainMenuTxtdraw[6], 0.200000, 1.200001);
	TextDrawColor(MainMenuTxtdraw[6], -65281);
	TextDrawSetOutline(MainMenuTxtdraw[6], 0);
	TextDrawSetProportional(MainMenuTxtdraw[6], 1);
	TextDrawSetShadow(MainMenuTxtdraw[6], 1);
	textdrawscount++;

	// NG-RP Tooltips
	MainMenuTxtdraw[7] = TextDrawCreate(319.000000, 391.000000, Tooltips[random(sizeof(Tooltips))]);
	TextDrawAlignment(MainMenuTxtdraw[7], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[7], 255);
	TextDrawFont(MainMenuTxtdraw[7], 2);
	TextDrawLetterSize(MainMenuTxtdraw[7], 0.250000, 1.600000);
	TextDrawColor(MainMenuTxtdraw[7], -1);
	TextDrawSetOutline(MainMenuTxtdraw[7], 0);
	TextDrawSetProportional(MainMenuTxtdraw[7], 1);
	TextDrawSetShadow(MainMenuTxtdraw[7], 1);
	textdrawscount++;

	// Server Stats Bar
	MainMenuTxtdraw[8] = TextDrawCreate(319.000000, 421.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[8], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[8], 255);
	TextDrawFont(MainMenuTxtdraw[8], 1);
	TextDrawLetterSize(MainMenuTxtdraw[8], 0.189998, 1.100000);
	TextDrawColor(MainMenuTxtdraw[8], -1);
	TextDrawSetOutline(MainMenuTxtdraw[8], 0);
	TextDrawSetProportional(MainMenuTxtdraw[8], 1);
	TextDrawSetShadow(MainMenuTxtdraw[8], 1);
	textdrawscount++;

	// MOTD
	MainMenuTxtdraw[9] = TextDrawCreate(319.000000, 364.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[9], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[9], 65535);
	TextDrawFont(MainMenuTxtdraw[9], 1);
	TextDrawLetterSize(MainMenuTxtdraw[9], 0.229999, 1.400000);
	TextDrawColor(MainMenuTxtdraw[9], -1);
	TextDrawSetOutline(MainMenuTxtdraw[9], 0);
	TextDrawSetProportional(MainMenuTxtdraw[9], 1);
	TextDrawSetShadow(MainMenuTxtdraw[9], 0);
	textdrawscount++;

	MainMenuTxtdraw[10] = TextDrawCreate(319.000000, 81.000000, "Welcome to San Andreas Multiplayer Vietnam");
	TextDrawAlignment(MainMenuTxtdraw[10], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[10], 255);
	TextDrawFont(MainMenuTxtdraw[10], 0);
	TextDrawLetterSize(MainMenuTxtdraw[10], 0.230000, 1.200000);
	TextDrawColor(MainMenuTxtdraw[10], -1);
	TextDrawSetOutline(MainMenuTxtdraw[10], 0);
	TextDrawSetProportional(MainMenuTxtdraw[10], 1);
	TextDrawSetShadow(MainMenuTxtdraw[10], 1);
	textdrawscount++;

	MainMenuTxtdraw[11] = TextDrawCreate(0.000000, 119.000000, "ShadowBox");
	TextDrawBackgroundColor(MainMenuTxtdraw[11], 0);
	TextDrawFont(MainMenuTxtdraw[11], 1);
	TextDrawLetterSize(MainMenuTxtdraw[11], 0.889999, 22.500005);
	TextDrawColor(MainMenuTxtdraw[11], 0);
	TextDrawSetOutline(MainMenuTxtdraw[11], 0);
	TextDrawSetProportional(MainMenuTxtdraw[11], 1);
	TextDrawSetShadow(MainMenuTxtdraw[11], 1);
	TextDrawUseBox(MainMenuTxtdraw[11], 1);
	TextDrawBoxColor(MainMenuTxtdraw[11], 75);
	TextDrawTextSize(MainMenuTxtdraw[11], 658.000000, 56.000000);
	textdrawscount++;

	// Notice Box
	NoticeTxtdraw[0] = TextDrawCreate(174.000000, 181.000000, "Box");
	TextDrawBackgroundColor(NoticeTxtdraw[0], 0);
	TextDrawFont(NoticeTxtdraw[0], 1);
	TextDrawLetterSize(NoticeTxtdraw[0], 1.590000, 7.700005);
	TextDrawColor(NoticeTxtdraw[0], 0);
	TextDrawSetOutline(NoticeTxtdraw[0], 0);
	TextDrawSetProportional(NoticeTxtdraw[0], 1);
	TextDrawSetShadow(NoticeTxtdraw[0], 1);
	TextDrawUseBox(NoticeTxtdraw[0], 1);
	TextDrawBoxColor(NoticeTxtdraw[0], 100);
	TextDrawTextSize(NoticeTxtdraw[0], 454.000000, 18.000000);

	NoticeTxtdraw[1] = TextDrawCreate(317.000000, 174.000000, "GVRP - Notice");
	TextDrawAlignment(NoticeTxtdraw[1], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[1], 255);
	TextDrawFont(NoticeTxtdraw[1], 2);
	TextDrawLetterSize(NoticeTxtdraw[1], 0.189999, 1.200000);
	TextDrawColor(NoticeTxtdraw[1], -1);
	TextDrawSetOutline(NoticeTxtdraw[1], 1);
	TextDrawSetProportional(NoticeTxtdraw[1], 1);

	// Title
	NoticeTxtdraw[2] = TextDrawCreate(323.000000, 196.000000, " ");
	TextDrawAlignment(NoticeTxtdraw[2], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[2], 255);
	TextDrawFont(NoticeTxtdraw[2], 2);
	TextDrawLetterSize(NoticeTxtdraw[2], 0.449999, 2.000000);
	//TextDrawLetterSize(NoticeTxtdraw[2], 0.529999, 2.800000);
	TextDrawColor(NoticeTxtdraw[2], -1);
	TextDrawSetOutline(NoticeTxtdraw[2], 1);
	TextDrawSetProportional(NoticeTxtdraw[2], 1);
	
	// Description.
	NoticeTxtdraw[3] = TextDrawCreate(322.000000, 221.000000, " ");
	TextDrawAlignment(NoticeTxtdraw[3], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[3], 255);
	TextDrawFont(NoticeTxtdraw[3], 1);
	TextDrawLetterSize(NoticeTxtdraw[3], 0.189999, 1.200000);
	TextDrawColor(NoticeTxtdraw[3], -1);
	TextDrawSetOutline(NoticeTxtdraw[3], 1);
	TextDrawSetProportional(NoticeTxtdraw[3], 1);
	
	// Tutorial (Frame 1) (Title)
	TutTxtdraw[4] = TextDrawCreate(168.000000, 120.000000, "Huong dan - Chao muong den voi GVRP!");
	TextDrawBackgroundColor(TutTxtdraw[4], 255);
	TextDrawFont(TutTxtdraw[4], 2);
	TextDrawLetterSize(TutTxtdraw[4], 0.209999, 1.000000);
	TextDrawColor(TutTxtdraw[4], -1);
	TextDrawSetOutline(TutTxtdraw[4], 0);
	TextDrawSetProportional(TutTxtdraw[4], 1);
	TextDrawSetShadow(TutTxtdraw[4], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 1)
	TutTxtdraw[5] = TextDrawCreate(175.000000, 141.000000, "Introductions! Welcome to GVRP Roleplay, SA-MP's most popular");
	TextDrawBackgroundColor(TutTxtdraw[5], 255);
	TextDrawFont(TutTxtdraw[5], 2);
	TextDrawLetterSize(TutTxtdraw[5], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[5], -1);
	TextDrawSetOutline(TutTxtdraw[5], 1);
	TextDrawSetProportional(TutTxtdraw[5], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 2)
	TutTxtdraw[6] = TextDrawCreate(175.000000, 151.000000, "English speaking server! Our community has been around for quite");
	TextDrawBackgroundColor(TutTxtdraw[6], 255);
	TextDrawFont(TutTxtdraw[6], 2);
	TextDrawLetterSize(TutTxtdraw[6], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[6], -1);
	TextDrawSetOutline(TutTxtdraw[6], 1);
	TextDrawSetProportional(TutTxtdraw[6], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 3)
	TutTxtdraw[7] = TextDrawCreate(175.000000, 161.000000, "some time now, and we are glad to have you with us!");
	TextDrawBackgroundColor(TutTxtdraw[7], 255);
	TextDrawFont(TutTxtdraw[7], 2);
	TextDrawLetterSize(TutTxtdraw[7], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[7], -1);
	TextDrawSetOutline(TutTxtdraw[7], 1);
	TextDrawSetProportional(TutTxtdraw[7], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 4)
	TutTxtdraw[8] = TextDrawCreate(175.000000, 193.000000, "You know, we are more than just a SA-MP community, so if you are interested");
	TextDrawBackgroundColor(TutTxtdraw[8], 255);
	TextDrawFont(TutTxtdraw[8], 2);
	TextDrawLetterSize(TutTxtdraw[8], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[8], -1);
	TextDrawSetOutline(TutTxtdraw[8], 1);
	TextDrawSetProportional(TutTxtdraw[8], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 5)
	TutTxtdraw[9] = TextDrawCreate(175.000000, 203.000000, "be sure to visit us and sign up on our forums at ~y~www.eg-rp.vn~w~ - we");
	TextDrawBackgroundColor(TutTxtdraw[9], 255);
	TextDrawFont(TutTxtdraw[9], 2);
	TextDrawLetterSize(TutTxtdraw[9], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[9], -1);
	TextDrawSetOutline(TutTxtdraw[9], 1);
	TextDrawSetProportional(TutTxtdraw[9], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 6)
	TutTxtdraw[10] = TextDrawCreate(175.000000, 214.000000, "will be waiting, be sure to invite your friends!");
	TextDrawBackgroundColor(TutTxtdraw[10], 255);
	TextDrawFont(TutTxtdraw[10], 2);
	TextDrawLetterSize(TutTxtdraw[10], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[10], -1);
	TextDrawSetOutline(TutTxtdraw[10], 1);
	TextDrawSetProportional(TutTxtdraw[10], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 7)
	TutTxtdraw[11] = TextDrawCreate(175.000000, 245.000000, "We also have a e-store with a bunch of useful items to purchase, be sure to");
	TextDrawBackgroundColor(TutTxtdraw[11], 255);
	TextDrawFont(TutTxtdraw[11], 2);
	TextDrawLetterSize(TutTxtdraw[11], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[11], -1);
	TextDrawSetOutline(TutTxtdraw[11], 1);
	TextDrawSetProportional(TutTxtdraw[11], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 8)
	TutTxtdraw[12] = TextDrawCreate(175.000000, 255.000000, "check it all out at ~y~eg-rp.vn~w~, it helps keep this server up and");
	TextDrawBackgroundColor(TutTxtdraw[12], 255);
	TextDrawFont(TutTxtdraw[12], 2);
	TextDrawLetterSize(TutTxtdraw[12], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[12], -1);
	TextDrawSetOutline(TutTxtdraw[12], 1);
	TextDrawSetProportional(TutTxtdraw[12], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 9)
	TutTxtdraw[13] = TextDrawCreate(175.000000, 265.000000, "running with all the prices of space, bandwidth and labor these days.");
	TextDrawBackgroundColor(TutTxtdraw[13], 255);
	TextDrawFont(TutTxtdraw[13], 2);
	TextDrawLetterSize(TutTxtdraw[13], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[13], -1);
	TextDrawSetOutline(TutTxtdraw[13], 1);
	TextDrawSetProportional(TutTxtdraw[13], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Title)
	TutTxtdraw[14] = TextDrawCreate(168.000000, 120.000000, "Tutorial - How to make money!");
	TextDrawBackgroundColor(TutTxtdraw[14], 255);
	TextDrawFont(TutTxtdraw[14], 2);
	TextDrawLetterSize(TutTxtdraw[14], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[14], -1);
	TextDrawSetOutline(TutTxtdraw[14], 0);
	TextDrawSetProportional(TutTxtdraw[14], 1);
	TextDrawSetShadow(TutTxtdraw[14], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 1)
	TutTxtdraw[15] = TextDrawCreate(175.000000, 141.000000, "There are many jobs located around San Andreas, these are represented");
	TextDrawBackgroundColor(TutTxtdraw[15], 255);
	TextDrawFont(TutTxtdraw[15], 2);
	TextDrawLetterSize(TutTxtdraw[15], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[15], -1);
	TextDrawSetOutline(TutTxtdraw[15], 1);
	TextDrawSetProportional(TutTxtdraw[15], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 2)
	TutTxtdraw[16] = TextDrawCreate(175.000000, 151.000000, "by ~y~yellow~w~ information icons.");
	TextDrawBackgroundColor(TutTxtdraw[16], 255);
	TextDrawFont(TutTxtdraw[16], 2);
	TextDrawLetterSize(TutTxtdraw[16], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[16], -1);
	TextDrawSetOutline(TutTxtdraw[16], 1);
	TextDrawSetProportional(TutTxtdraw[16], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 3)
	TutTxtdraw[17] = TextDrawCreate(181.000000, 172.000000, "| You can ~g~/withdraw~w~ and ~g~/deposit~w~ money at the bank.");
	TextDrawBackgroundColor(TutTxtdraw[17], 255);
	TextDrawFont(TutTxtdraw[17], 2);
	TextDrawLetterSize(TutTxtdraw[17], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[17], -1);
	TextDrawSetOutline(TutTxtdraw[17], 1);
	TextDrawSetProportional(TutTxtdraw[17], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 4)
	TutTxtdraw[18] = TextDrawCreate(181.000000, 183.000000, "| You can ~g~/awithdraw~w~ and ~g~/adeposit~w~ cash at a ATM for a small fee.");
	TextDrawBackgroundColor(TutTxtdraw[18], 255);
	TextDrawFont(TutTxtdraw[18], 2);
	TextDrawLetterSize(TutTxtdraw[18], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[18], -1);
	TextDrawSetOutline(TutTxtdraw[18], 1);
	TextDrawSetProportional(TutTxtdraw[18], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 5)
	TutTxtdraw[19] = TextDrawCreate(181.000000, 195.000000, "| You can ~g~/fish~w~ in boats or at the pier for money.");
	TextDrawBackgroundColor(TutTxtdraw[19], 255);
	TextDrawFont(TutTxtdraw[19], 2);
	TextDrawLetterSize(TutTxtdraw[19], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[19], -1);
	TextDrawSetOutline(TutTxtdraw[19], 1);
	TextDrawSetProportional(TutTxtdraw[19], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 6)
	TutTxtdraw[20] = TextDrawCreate(181.000000, 207.000000, "| You can ~g~/guard~w~ people for money.");
	TextDrawBackgroundColor(TutTxtdraw[20], 255);
	TextDrawFont(TutTxtdraw[20], 2);
	TextDrawLetterSize(TutTxtdraw[20], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[20], -1);
	TextDrawSetOutline(TutTxtdraw[20], 1);
	TextDrawSetProportional(TutTxtdraw[20], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 7)
	TutTxtdraw[21] = TextDrawCreate(181.000000, 219.000000, "| You can ~g~/sellgun~w~ to people for money.");
	TextDrawBackgroundColor(TutTxtdraw[21], 255);
	TextDrawFont(TutTxtdraw[21], 2);
	TextDrawLetterSize(TutTxtdraw[21], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[21], -1);
	TextDrawSetOutline(TutTxtdraw[21], 1);
	TextDrawSetProportional(TutTxtdraw[21], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 8)
	TutTxtdraw[22] = TextDrawCreate(181.000000, 232.000000, "| You can ~g~/sellpot~w~ or ~g~/sellcrack~w~ to people for money.");
	TextDrawBackgroundColor(TutTxtdraw[22], 255);
	TextDrawFont(TutTxtdraw[22], 2);
	TextDrawLetterSize(TutTxtdraw[22], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[22], -1);
	TextDrawSetOutline(TutTxtdraw[22], 1);
	TextDrawSetProportional(TutTxtdraw[22], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 9)
	TutTxtdraw[23] = TextDrawCreate(181.000000, 244.000000, "| You can smuggle drugs with ~g~/getcrate~w~ to specific dens.");
	TextDrawBackgroundColor(TutTxtdraw[23], 255);
	TextDrawFont(TutTxtdraw[23], 2);
	TextDrawLetterSize(TutTxtdraw[23], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[23], -1);
	TextDrawSetOutline(TutTxtdraw[23], 1);
	TextDrawSetProportional(TutTxtdraw[23], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 10)
	TutTxtdraw[24] = TextDrawCreate(181.000000, 256.000000, "| You can ~g~/jobhelp~w~ for more!");
	TextDrawBackgroundColor(TutTxtdraw[24], 255);
	TextDrawFont(TutTxtdraw[24], 2);
	TextDrawLetterSize(TutTxtdraw[24], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[24], -1);
	TextDrawSetOutline(TutTxtdraw[24], 1);
	TextDrawSetProportional(TutTxtdraw[24], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Title)
	TutTxtdraw[25] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Law Enforcement");
	TextDrawBackgroundColor(TutTxtdraw[25], 255);
	TextDrawFont(TutTxtdraw[25], 2);
	TextDrawLetterSize(TutTxtdraw[25], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[25], -1);
	TextDrawSetOutline(TutTxtdraw[25], 0);
	TextDrawSetProportional(TutTxtdraw[25], 1);
	TextDrawSetShadow(TutTxtdraw[25], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 1)
	TutTxtdraw[26] = TextDrawCreate(175.000000, 141.000000, "There are currently 4+ ~b~Law Enforcement~w~ Factions. LSPD, SFPD, SASD and FBI.");
	TextDrawBackgroundColor(TutTxtdraw[26], 255);
	TextDrawFont(TutTxtdraw[26], 2);
	TextDrawLetterSize(TutTxtdraw[26], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[26], -1);
	TextDrawSetOutline(TutTxtdraw[26], 1);
	TextDrawSetProportional(TutTxtdraw[26], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 2)
	TutTxtdraw[27] = TextDrawCreate(175.000000, 151.000000, "If you cause trouble and break local laws, you may be arrested by one of");
	TextDrawBackgroundColor(TutTxtdraw[27], 255);
	TextDrawFont(TutTxtdraw[27], 2);
	TextDrawLetterSize(TutTxtdraw[27], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[27], -1);
	TextDrawSetOutline(TutTxtdraw[27], 1);
	TextDrawSetProportional(TutTxtdraw[27], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 3)
	TutTxtdraw[28] = TextDrawCreate(175.000000, 161.000000, "them. If you're wanting to become a part of these factions, apply on our");
	TextDrawBackgroundColor(TutTxtdraw[28], 255);
	TextDrawFont(TutTxtdraw[28], 2);
	TextDrawLetterSize(TutTxtdraw[28], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[28], -1);
	TextDrawSetOutline(TutTxtdraw[28], 1);
	TextDrawSetProportional(TutTxtdraw[28], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 4)
	TutTxtdraw[29] = TextDrawCreate(175.000000, 171.000000, "forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[29], 255);
	TextDrawFont(TutTxtdraw[29], 2);
	TextDrawLetterSize(TutTxtdraw[29], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[29], -1);
	TextDrawSetOutline(TutTxtdraw[29], 1);
	TextDrawSetProportional(TutTxtdraw[29], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 5)
	TutTxtdraw[30] = TextDrawCreate(181.000000, 196.000000, "| ~b~LSPD~w~ (Los Santos Police Department)");
	TextDrawBackgroundColor(TutTxtdraw[30], 255);
	TextDrawFont(TutTxtdraw[30], 2);
	TextDrawLetterSize(TutTxtdraw[30], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[30], -1);
	TextDrawSetOutline(TutTxtdraw[30], 1);
	TextDrawSetProportional(TutTxtdraw[30], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 6)
	TutTxtdraw[31] = TextDrawCreate(181.000000, 212.000000, "| ~h~~b~SFPD~w~ (San Fierro Police Department)");
	TextDrawBackgroundColor(TutTxtdraw[31], 255);
	TextDrawFont(TutTxtdraw[31], 2);
	TextDrawLetterSize(TutTxtdraw[31], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[31], -1);
	TextDrawSetOutline(TutTxtdraw[31], 1);
	TextDrawSetProportional(TutTxtdraw[31], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 7)
	TutTxtdraw[32] = TextDrawCreate(181.000000, 229.000000, "| ~y~SASD~w~ (San Andreas Sheriff's Department)");
	TextDrawBackgroundColor(TutTxtdraw[32], 255);
	TextDrawFont(TutTxtdraw[32], 2);
	TextDrawLetterSize(TutTxtdraw[32], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[32], -1);
	TextDrawSetOutline(TutTxtdraw[32], 1);
	TextDrawSetProportional(TutTxtdraw[32], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 8)
	TutTxtdraw[33] = TextDrawCreate(181.000000, 246.000000, "| ~b~FBI~w~ (Federal Bureau of Investigation)");
	TextDrawBackgroundColor(TutTxtdraw[33], 255);
	TextDrawFont(TutTxtdraw[33], 2);
	TextDrawLetterSize(TutTxtdraw[33], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[33], -1);
	TextDrawSetOutline(TutTxtdraw[33], 1);
	TextDrawSetProportional(TutTxtdraw[33], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Title)
	TutTxtdraw[34] = TextDrawCreate(168.000000, 120.000000, "Tutorial - San Andreas Fire/Medical Department");
	TextDrawBackgroundColor(TutTxtdraw[34], 255);
	TextDrawFont(TutTxtdraw[34], 2);
	TextDrawLetterSize(TutTxtdraw[34], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[34], -1);
	TextDrawSetOutline(TutTxtdraw[34], 0);
	TextDrawSetProportional(TutTxtdraw[34], 1);
	TextDrawSetShadow(TutTxtdraw[34], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 1)
	TutTxtdraw[35] = TextDrawCreate(175.000000, 141.000000, "If you so happen to get injured, You may use ~g~/service ems~w~ to call for");
	TextDrawBackgroundColor(TutTxtdraw[35], 255);
	TextDrawFont(TutTxtdraw[35], 2);
	TextDrawLetterSize(TutTxtdraw[35], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[35], -1);
	TextDrawSetOutline(TutTxtdraw[35], 1);
	TextDrawSetProportional(TutTxtdraw[35], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 2)
	TutTxtdraw[36] = TextDrawCreate(175.000000, 151.000000, "help. If the EMS saves you in time, you may keep your personal belongings,");
	TextDrawBackgroundColor(TutTxtdraw[36], 255);
	TextDrawFont(TutTxtdraw[36], 2);
	TextDrawLetterSize(TutTxtdraw[36], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[36], -1);
	TextDrawSetOutline(TutTxtdraw[36], 1);
	TextDrawSetProportional(TutTxtdraw[36], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 3)
	TutTxtdraw[37] = TextDrawCreate(175.000000, 161.000000, "without losing them. If you're wanting to become a part of this faction,");
	TextDrawBackgroundColor(TutTxtdraw[37], 255);
	TextDrawFont(TutTxtdraw[37], 2);
	TextDrawLetterSize(TutTxtdraw[37], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[37], -1);
	TextDrawSetOutline(TutTxtdraw[37], 1);
	TextDrawSetProportional(TutTxtdraw[37], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 4)
	TutTxtdraw[38] = TextDrawCreate(175.000000, 171.000000, "apply on our forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[38], 255);
	TextDrawFont(TutTxtdraw[38], 2);
	TextDrawLetterSize(TutTxtdraw[38], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[38], -1);
	TextDrawSetOutline(TutTxtdraw[38], 1);
	TextDrawSetProportional(TutTxtdraw[38], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 5)
	TutTxtdraw[39] = TextDrawCreate(175.000000, 204.000000, "If you want to report a emergency, purchase a cellphone and ~g~/call 911~w~");
	TextDrawBackgroundColor(TutTxtdraw[39], 255);
	TextDrawFont(TutTxtdraw[39], 2);
	TextDrawLetterSize(TutTxtdraw[39], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[39], -1);
	TextDrawSetOutline(TutTxtdraw[39], 1);
	TextDrawSetProportional(TutTxtdraw[39], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Title)
	TutTxtdraw[40] = TextDrawCreate(168.000000, 120.000000, "Tutorial - K-LSR");
	TextDrawBackgroundColor(TutTxtdraw[40], 255);
	TextDrawFont(TutTxtdraw[40], 2);
	TextDrawLetterSize(TutTxtdraw[40], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[40], -1);
	TextDrawSetOutline(TutTxtdraw[40], 0);
	TextDrawSetProportional(TutTxtdraw[40], 1);
	TextDrawSetShadow(TutTxtdraw[40], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 1)
	TutTxtdraw[41] = TextDrawCreate(175.000000, 141.000000, "There is a ~b~K-LSR~w~ faction, they handle all the news within San");
	TextDrawBackgroundColor(TutTxtdraw[41], 255);
	TextDrawFont(TutTxtdraw[41], 2);
	TextDrawLetterSize(TutTxtdraw[41], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[41], -1);
	TextDrawSetOutline(TutTxtdraw[41], 1);
	TextDrawSetProportional(TutTxtdraw[41], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 2)
	TutTxtdraw[42] = TextDrawCreate(175.000000, 151.000000, "Andreas. They report about anything from gang riots and government");
	TextDrawBackgroundColor(TutTxtdraw[42], 255);
	TextDrawFont(TutTxtdraw[42], 2);
	TextDrawLetterSize(TutTxtdraw[42], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[42], -1);
	TextDrawSetOutline(TutTxtdraw[42], 1);
	TextDrawSetProportional(TutTxtdraw[42], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 3)
	TutTxtdraw[43] = TextDrawCreate(175.000000, 161.000000, "corruption, right down to bank robberies. If you wish to become a part of");
	TextDrawBackgroundColor(TutTxtdraw[43], 255);
	TextDrawFont(TutTxtdraw[43], 2);
	TextDrawLetterSize(TutTxtdraw[43], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[43], -1);
	TextDrawSetOutline(TutTxtdraw[43], 1);
	TextDrawSetProportional(TutTxtdraw[43], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 4)
	TutTxtdraw[44] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[44], 255);
	TextDrawFont(TutTxtdraw[44], 2);
	TextDrawLetterSize(TutTxtdraw[44], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[44], -1);
	TextDrawSetOutline(TutTxtdraw[44], 1);
	TextDrawSetProportional(TutTxtdraw[44], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 5)
	TutTxtdraw[45] = TextDrawCreate(175.000000, 204.000000, "If you want to sell items or advertise about a party, use ~g~/ads~w~.");
	TextDrawBackgroundColor(TutTxtdraw[45], 255);
	TextDrawFont(TutTxtdraw[45], 2);
	TextDrawLetterSize(TutTxtdraw[45], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[45], -1);
	TextDrawSetOutline(TutTxtdraw[45], 1);
	TextDrawSetProportional(TutTxtdraw[45], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Title)
	TutTxtdraw[46] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Government");
	TextDrawBackgroundColor(TutTxtdraw[46], 255);
	TextDrawFont(TutTxtdraw[46], 2);
	TextDrawLetterSize(TutTxtdraw[46], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[46], -1);
	TextDrawSetOutline(TutTxtdraw[46], 0);
	TextDrawSetProportional(TutTxtdraw[46], 1);
	TextDrawSetShadow(TutTxtdraw[46], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 1)
	TutTxtdraw[47] = TextDrawCreate(175.000000, 141.000000, "There is also a ~b~Government~w~ faction, they make all important decisions");
	TextDrawBackgroundColor(TutTxtdraw[47], 255);
	TextDrawFont(TutTxtdraw[47], 2);
	TextDrawLetterSize(TutTxtdraw[47], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[47], -1);
	TextDrawSetOutline(TutTxtdraw[47], 1);
	TextDrawSetProportional(TutTxtdraw[47], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 2)
	TutTxtdraw[48] = TextDrawCreate(175.000000, 151.000000, "within San Andreas. They make sure law is enforced in the judicial branch.");
	TextDrawBackgroundColor(TutTxtdraw[48], 255);
	TextDrawFont(TutTxtdraw[48], 2);
	TextDrawLetterSize(TutTxtdraw[48], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[48], -1);
	TextDrawSetOutline(TutTxtdraw[48], 1);
	TextDrawSetProportional(TutTxtdraw[48], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 3)
	TutTxtdraw[49] = TextDrawCreate(175.000000, 161.000000, "They also set taxes and pay wages. If you're wanting to become a part of");
	TextDrawBackgroundColor(TutTxtdraw[49], 255);
	TextDrawFont(TutTxtdraw[49], 2);
	TextDrawLetterSize(TutTxtdraw[49], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[49], -1);
	TextDrawSetOutline(TutTxtdraw[49], 1);
	TextDrawSetProportional(TutTxtdraw[49], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 4)
	TutTxtdraw[50] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[50], 255);
	TextDrawFont(TutTxtdraw[50], 2);
	TextDrawLetterSize(TutTxtdraw[50], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[50], -1);
	TextDrawSetOutline(TutTxtdraw[50], 1);
	TextDrawSetProportional(TutTxtdraw[50], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 5)
	TutTxtdraw[51] = TextDrawCreate(175.000000, 204.000000, "If you'd like to donate your money, you may use ~g~/charity~w~.");
	TextDrawBackgroundColor(TutTxtdraw[51], 255);
	TextDrawFont(TutTxtdraw[51], 2);
	TextDrawLetterSize(TutTxtdraw[51], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[51], -1);
	TextDrawSetOutline(TutTxtdraw[51], 1);
	TextDrawSetProportional(TutTxtdraw[51], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Title)
	TutTxtdraw[52] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Nation of Tierra Robada");
	TextDrawBackgroundColor(TutTxtdraw[52], 255);
	TextDrawFont(TutTxtdraw[52], 2);
	TextDrawLetterSize(TutTxtdraw[52], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[52], -1);
	TextDrawSetOutline(TutTxtdraw[52], 0);
	TextDrawSetProportional(TutTxtdraw[52], 1);
	TextDrawSetShadow(TutTxtdraw[52], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 1)
	TutTxtdraw[53] = TextDrawCreate(175.000000, 141.000000, "~g~Tierra Robada~w~ is an alternate nation seperate from San Andreas.  They");
	TextDrawBackgroundColor(TutTxtdraw[53], 255);
	TextDrawFont(TutTxtdraw[53], 2);
	TextDrawLetterSize(TutTxtdraw[53], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[53], -1);
	TextDrawSetOutline(TutTxtdraw[53], 1);
	TextDrawSetProportional(TutTxtdraw[53], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 2)
	TutTxtdraw[54] = TextDrawCreate(175.000000, 151.000000, "have their own laws, law enforcement, government and medical divisions.");
	TextDrawBackgroundColor(TutTxtdraw[54], 255);
	TextDrawFont(TutTxtdraw[54], 2);
	TextDrawLetterSize(TutTxtdraw[54], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[54], -1);
	TextDrawSetOutline(TutTxtdraw[54], 1);
	TextDrawSetProportional(TutTxtdraw[54], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 3)
	TutTxtdraw[55] = TextDrawCreate(175.000000, 161.000000, "If you wish to become a part of this faction, apply on our forums");
	TextDrawBackgroundColor(TutTxtdraw[55], 255);
	TextDrawFont(TutTxtdraw[55], 2);
	TextDrawLetterSize(TutTxtdraw[55], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[55], -1);
	TextDrawSetOutline(TutTxtdraw[55], 1);
	TextDrawSetProportional(TutTxtdraw[55], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 4)
	TutTxtdraw[56] = TextDrawCreate(175.000000, 171.000000, "at ~y~www.fg-roleplay.com~w~.");
	TextDrawBackgroundColor(TutTxtdraw[56], 255);
	TextDrawFont(TutTxtdraw[56], 2);
	TextDrawLetterSize(TutTxtdraw[56], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[56], -1);
	TextDrawSetOutline(TutTxtdraw[56], 1);
	TextDrawSetProportional(TutTxtdraw[56], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 5)
	TutTxtdraw[57] = TextDrawCreate(175.000000, 204.000000, "Be sure to pay the toll when you visit from San Fierro!");
	TextDrawBackgroundColor(TutTxtdraw[57], 255);
	TextDrawFont(TutTxtdraw[57], 2);
	TextDrawLetterSize(TutTxtdraw[57], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[57], -1);
	TextDrawSetOutline(TutTxtdraw[57], 1);
	TextDrawSetProportional(TutTxtdraw[57], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Title)
	TutTxtdraw[58] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Gangs/Families");
	TextDrawBackgroundColor(TutTxtdraw[58], 255);
	TextDrawFont(TutTxtdraw[58], 2);
	TextDrawLetterSize(TutTxtdraw[58], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[58], -1);
	TextDrawSetOutline(TutTxtdraw[58], 0);
	TextDrawSetProportional(TutTxtdraw[58], 1);
	TextDrawSetShadow(TutTxtdraw[58], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 1)
	TutTxtdraw[59] = TextDrawCreate(175.000000, 141.000000, "San Andreas has several different crime related gangs/families to join.");
	TextDrawBackgroundColor(TutTxtdraw[59], 255);
	TextDrawFont(TutTxtdraw[59], 2);
	TextDrawLetterSize(TutTxtdraw[59], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[59], -1);
	TextDrawSetOutline(TutTxtdraw[59], 1);
	TextDrawSetProportional(TutTxtdraw[59], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 2)
	TutTxtdraw[60] = TextDrawCreate(175.000000, 151.000000, "Type ~g~/families~w~ to display a list of gangs. Type ~g~/families number~w~ to show");
	TextDrawBackgroundColor(TutTxtdraw[60], 255);
	TextDrawFont(TutTxtdraw[60], 2);
	TextDrawLetterSize(TutTxtdraw[60], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[60], -1);
	TextDrawSetOutline(TutTxtdraw[60], 1);
	TextDrawSetProportional(TutTxtdraw[60], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 3)
	TutTxtdraw[61] = TextDrawCreate(175.000000, 161.000000, "thier members. Gang members can take control of the weapons/fuel/drug");
	TextDrawBackgroundColor(TutTxtdraw[61], 255);
	TextDrawFont(TutTxtdraw[61], 2);
	TextDrawLetterSize(TutTxtdraw[61], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[61], -1);
	TextDrawSetOutline(TutTxtdraw[61], 1);
	TextDrawSetProportional(TutTxtdraw[61], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 4)
	TutTxtdraw[62] = TextDrawCreate(175.000000, 171.000000, "trade to earn quick cash. If you want to join a gang, be sure to roleplay");
	TextDrawBackgroundColor(TutTxtdraw[62], 255);
	TextDrawFont(TutTxtdraw[62], 2);
	TextDrawLetterSize(TutTxtdraw[62], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[62], -1);
	TextDrawSetOutline(TutTxtdraw[62], 1);
	TextDrawSetProportional(TutTxtdraw[62], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 5)
	TutTxtdraw[63] = TextDrawCreate(175.000000, 204.000000, "Type ~g~/turfs~w~ to disply the turf maps.");
	TextDrawBackgroundColor(TutTxtdraw[63], 255);
	TextDrawFont(TutTxtdraw[63], 2);
	TextDrawLetterSize(TutTxtdraw[63], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[63], -1);
	TextDrawSetOutline(TutTxtdraw[63], 1);
	TextDrawSetProportional(TutTxtdraw[63], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 6)
	TutTxtdraw[64] = TextDrawCreate(175.000000, 182.000000, "with their leaders, you might get your chance!");
	TextDrawBackgroundColor(TutTxtdraw[64], 255);
	TextDrawFont(TutTxtdraw[64], 2);
	TextDrawLetterSize(TutTxtdraw[64], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[64], -1);
	TextDrawSetOutline(TutTxtdraw[64], 1);
	TextDrawSetProportional(TutTxtdraw[64], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Title)
	TutTxtdraw[65] = TextDrawCreate(168.000000, 120.000000, "Tutorial - 24/7 General Store");
	TextDrawBackgroundColor(TutTxtdraw[65], 255);
	TextDrawFont(TutTxtdraw[65], 2);
	TextDrawLetterSize(TutTxtdraw[65], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[65], -1);
	TextDrawSetOutline(TutTxtdraw[65], 0);
	TextDrawSetProportional(TutTxtdraw[65], 1);
	TextDrawSetShadow(TutTxtdraw[65], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 1)
	TutTxtdraw[66] = TextDrawCreate(175.000000, 141.000000, "You can purchase different items with the ~g~/buy~w~ command from any 24/7.");
	TextDrawBackgroundColor(TutTxtdraw[66], 255);
	TextDrawFont(TutTxtdraw[66], 2);
	TextDrawLetterSize(TutTxtdraw[66], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[66], -1);
	TextDrawSetOutline(TutTxtdraw[66], 1);
	TextDrawSetProportional(TutTxtdraw[66], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 2)
	TutTxtdraw[67] = TextDrawCreate(175.000000, 151.000000, "Buying a cellphone will give you the ability to ~g~/call~w~ or ~g~/sms~w~ other online");
	TextDrawBackgroundColor(TutTxtdraw[67], 255);
	TextDrawFont(TutTxtdraw[67], 2);
	TextDrawLetterSize(TutTxtdraw[67], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[67], -1);
	TextDrawSetOutline(TutTxtdraw[67], 1);
	TextDrawSetProportional(TutTxtdraw[67], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 3)
	TutTxtdraw[68] = TextDrawCreate(175.000000, 161.000000, "players. Along with banks, 24/7 stores appear as a green dollar sign on");
	TextDrawBackgroundColor(TutTxtdraw[68], 255);
	TextDrawFont(TutTxtdraw[68], 2);
	TextDrawLetterSize(TutTxtdraw[68], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[68], -1);
	TextDrawSetOutline(TutTxtdraw[68], 1);
	TextDrawSetProportional(TutTxtdraw[68], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 4)
	TutTxtdraw[69] = TextDrawCreate(175.000000, 171.000000, "the mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[69], 255);
	TextDrawFont(TutTxtdraw[69], 2);
	TextDrawLetterSize(TutTxtdraw[69], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[69], -1);
	TextDrawSetOutline(TutTxtdraw[69], 1);
	TextDrawSetProportional(TutTxtdraw[69], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 5)
	TutTxtdraw[70] = TextDrawCreate(175.000000, 195.000000, "VIPs get special discounts from these stores.");
	TextDrawBackgroundColor(TutTxtdraw[70], 255);
	TextDrawFont(TutTxtdraw[70], 2);
	TextDrawLetterSize(TutTxtdraw[70], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[70], -1);
	TextDrawSetOutline(TutTxtdraw[70], 1);
	TextDrawSetProportional(TutTxtdraw[70], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Title)
	TutTxtdraw[71] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Clothing Stores");
	TextDrawBackgroundColor(TutTxtdraw[71], 255);
	TextDrawFont(TutTxtdraw[71], 2);
	TextDrawLetterSize(TutTxtdraw[71], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[71], -1);
	TextDrawSetOutline(TutTxtdraw[71], 0);
	TextDrawSetProportional(TutTxtdraw[71], 1);
	TextDrawSetShadow(TutTxtdraw[71], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 1)
	TutTxtdraw[72] = TextDrawCreate(175.000000, 141.000000, "You can purchase different skins with ~g~/buyclothes~w~ from any clothing store.");
	TextDrawBackgroundColor(TutTxtdraw[72], 255);
	TextDrawFont(TutTxtdraw[72], 2);
	TextDrawLetterSize(TutTxtdraw[72], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[72], -1);
	TextDrawSetOutline(TutTxtdraw[72], 1);
	TextDrawSetProportional(TutTxtdraw[72], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 2)
	TutTxtdraw[73] = TextDrawCreate(175.000000, 151.000000, "You can also purchase different clothing items with ~g~/buytoys~w~ from any");
	TextDrawBackgroundColor(TutTxtdraw[73], 255);
	TextDrawFont(TutTxtdraw[73], 2);
	TextDrawLetterSize(TutTxtdraw[73], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[73], -1);
	TextDrawSetOutline(TutTxtdraw[73], 1);
	TextDrawSetProportional(TutTxtdraw[73], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 3)
	TutTxtdraw[74] = TextDrawCreate(175.000000, 161.000000, "clothing store. Clothing stores appear as a white tee shirt on the");
	TextDrawBackgroundColor(TutTxtdraw[74], 255);
	TextDrawFont(TutTxtdraw[74], 2);
	TextDrawLetterSize(TutTxtdraw[74], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[74], -1);
	TextDrawSetOutline(TutTxtdraw[74], 1);
	TextDrawSetProportional(TutTxtdraw[74], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 4)
	TutTxtdraw[75] = TextDrawCreate(175.000000, 171.000000, "mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[75], 255);
	TextDrawFont(TutTxtdraw[75], 2);
	TextDrawLetterSize(TutTxtdraw[75], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[75], -1);
	TextDrawSetOutline(TutTxtdraw[75], 1);
	TextDrawSetProportional(TutTxtdraw[75], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 5)
	TutTxtdraw[76] = TextDrawCreate(175.000000, 195.000000, "VIPs get an unrestricted selection of skins from these stores.");
	TextDrawBackgroundColor(TutTxtdraw[76], 255);
	TextDrawFont(TutTxtdraw[76], 2);
	TextDrawLetterSize(TutTxtdraw[76], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[76], -1);
	TextDrawSetOutline(TutTxtdraw[76], 1);
	TextDrawSetProportional(TutTxtdraw[76], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Title)
	TutTxtdraw[77] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Car Dealerships");
	TextDrawBackgroundColor(TutTxtdraw[77], 255);
	TextDrawFont(TutTxtdraw[77], 2);
	TextDrawLetterSize(TutTxtdraw[77], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[77], -1);
	TextDrawSetOutline(TutTxtdraw[77], 0);
	TextDrawSetProportional(TutTxtdraw[77], 1);
	TextDrawSetShadow(TutTxtdraw[77], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 1)
	TutTxtdraw[78] = TextDrawCreate(175.000000, 141.000000, "You can purchase different vehicles from several different car");
	TextDrawBackgroundColor(TutTxtdraw[78], 255);
	TextDrawFont(TutTxtdraw[78], 2);
	TextDrawLetterSize(TutTxtdraw[78], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[78], -1);
	TextDrawSetOutline(TutTxtdraw[78], 1);
	TextDrawSetProportional(TutTxtdraw[78], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 2)
	TutTxtdraw[79] = TextDrawCreate(175.000000, 151.000000, "dealerships. Once purchased, you can control said vehicle with the ~g~/car");
	TextDrawBackgroundColor(TutTxtdraw[79], 255);
	TextDrawFont(TutTxtdraw[79], 2);
	TextDrawLetterSize(TutTxtdraw[79], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[79], -1);
	TextDrawSetOutline(TutTxtdraw[79], 1);
	TextDrawSetProportional(TutTxtdraw[79], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 3)
	TutTxtdraw[80] = TextDrawCreate(175.000000, 161.000000, "command. Car dealerships appear as a car on the mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[80], 255);
	TextDrawFont(TutTxtdraw[80], 2);
	TextDrawLetterSize(TutTxtdraw[80], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[80], -1);
	TextDrawSetOutline(TutTxtdraw[80], 1);
	TextDrawSetProportional(TutTxtdraw[80], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 4)
	TutTxtdraw[81] = TextDrawCreate(175.000000, 195.000000, "There are several different car dealerships, also in the VIP garage.");
	TextDrawBackgroundColor(TutTxtdraw[81], 255);
	TextDrawFont(TutTxtdraw[81], 2);
	TextDrawLetterSize(TutTxtdraw[81], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[81], -1);
	TextDrawSetOutline(TutTxtdraw[81], 1);
	TextDrawSetProportional(TutTxtdraw[81], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Title)
	TutTxtdraw[82] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Houses");
	TextDrawBackgroundColor(TutTxtdraw[82], 255);
	TextDrawFont(TutTxtdraw[82], 2);
	TextDrawLetterSize(TutTxtdraw[82], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[82], -1);
	TextDrawSetOutline(TutTxtdraw[82], 0);
	TextDrawSetProportional(TutTxtdraw[82], 1);
	TextDrawSetShadow(TutTxtdraw[82], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 1)
	TutTxtdraw[83] = TextDrawCreate(175.000000, 141.000000, "Houses are player ownable living units that you can purchase from other");
	TextDrawBackgroundColor(TutTxtdraw[83], 255);
	TextDrawFont(TutTxtdraw[83], 2);
	TextDrawLetterSize(TutTxtdraw[83], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[83], -1);
	TextDrawSetOutline(TutTxtdraw[83], 1);
	TextDrawSetProportional(TutTxtdraw[83], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 2)
	TutTxtdraw[84] = TextDrawCreate(175.000000, 151.000000, "players or from our e-store. You can store materials, drugs and money");
	TextDrawBackgroundColor(TutTxtdraw[84], 255);
	TextDrawFont(TutTxtdraw[84], 2);
	TextDrawLetterSize(TutTxtdraw[84], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[84], -1);
	TextDrawSetOutline(TutTxtdraw[84], 1);
	TextDrawSetProportional(TutTxtdraw[84], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 3)
	TutTxtdraw[85] = TextDrawCreate(175.000000, 161.000000, "into the house safe for keep sakes as long as you own the house.");
	TextDrawBackgroundColor(TutTxtdraw[85], 255);
	TextDrawFont(TutTxtdraw[85], 2);
	TextDrawLetterSize(TutTxtdraw[85], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[85], -1);
	TextDrawSetOutline(TutTxtdraw[85], 1);
	TextDrawSetProportional(TutTxtdraw[85], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 4)
	TutTxtdraw[86] = TextDrawCreate(175.000000, 195.000000, "Houses appear as a ~g~green~w~ floating house throughout San Andreas.");
	TextDrawBackgroundColor(TutTxtdraw[86], 255);
	TextDrawFont(TutTxtdraw[86], 2);
	TextDrawLetterSize(TutTxtdraw[86], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[86], -1);
	TextDrawSetOutline(TutTxtdraw[86], 1);
	TextDrawSetProportional(TutTxtdraw[86], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Title)
	TutTxtdraw[87] = TextDrawCreate(168.000000, 120.000000, "Tutorial - VIP & E-Store");
	TextDrawBackgroundColor(TutTxtdraw[87], 255);
	TextDrawFont(TutTxtdraw[87], 2);
	TextDrawLetterSize(TutTxtdraw[87], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[87], -1);
	TextDrawSetOutline(TutTxtdraw[87], 0);
	TextDrawSetProportional(TutTxtdraw[87], 1);
	TextDrawSetShadow(TutTxtdraw[87], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 1)
	TutTxtdraw[88] = TextDrawCreate(175.000000, 141.000000, "We operate a 24/7 E-Store at ~y~eg-rp.vn~w~, you can purchase Vehicles,");
	TextDrawBackgroundColor(TutTxtdraw[88], 255);
	TextDrawFont(TutTxtdraw[88], 2);
	TextDrawLetterSize(TutTxtdraw[88], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[88], -1);
	TextDrawSetOutline(TutTxtdraw[88], 1);
	TextDrawSetProportional(TutTxtdraw[88], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 2)
	TutTxtdraw[89] = TextDrawCreate(175.000000, 151.000000, "Houses, VIP and much much more! We have 4 different VIP levels that users");
	TextDrawBackgroundColor(TutTxtdraw[89], 255);
	TextDrawFont(TutTxtdraw[89], 2);
	TextDrawLetterSize(TutTxtdraw[89], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[89], -1);
	TextDrawSetOutline(TutTxtdraw[89], 1);
	TextDrawSetProportional(TutTxtdraw[89], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 3)
	TutTxtdraw[90] = TextDrawCreate(175.000000, 161.000000, "can purchase or obtain - learn more on our shop's website. VIPs have access");
	TextDrawBackgroundColor(TutTxtdraw[90], 255);
	TextDrawFont(TutTxtdraw[90], 2);
	TextDrawLetterSize(TutTxtdraw[90], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[90], -1);
	TextDrawSetOutline(TutTxtdraw[90], 1);
	TextDrawSetProportional(TutTxtdraw[90], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 4)
	TutTxtdraw[91] = TextDrawCreate(175.000000, 195.000000, "Want a trial run as a VIP? Ask a VIP for a ~b~buddy invite.");
	TextDrawBackgroundColor(TutTxtdraw[91], 255);
	TextDrawFont(TutTxtdraw[91], 2);
	TextDrawLetterSize(TutTxtdraw[91], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[91], -1);
	TextDrawSetOutline(TutTxtdraw[91], 1);
	TextDrawSetProportional(TutTxtdraw[91], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 5)
	TutTxtdraw[92] = TextDrawCreate(175.000000, 172.000000, "to several features, such as VIP chat, special vehicles, and much more!");
	TextDrawBackgroundColor(TutTxtdraw[92], 255);
	TextDrawFont(TutTxtdraw[92], 2);
	TextDrawLetterSize(TutTxtdraw[92], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[92], -1);
	TextDrawSetOutline(TutTxtdraw[92], 1);
	TextDrawSetProportional(TutTxtdraw[92], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Title)
	TutTxtdraw[93] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Rules");
	TextDrawBackgroundColor(TutTxtdraw[93], 255);
	TextDrawFont(TutTxtdraw[93], 2);
	TextDrawLetterSize(TutTxtdraw[93], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[93], -1);
	TextDrawSetOutline(TutTxtdraw[93], 0);
	TextDrawSetProportional(TutTxtdraw[93], 1);
	TextDrawSetShadow(TutTxtdraw[93], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 1)
	TutTxtdraw[94] = TextDrawCreate(175.000000, 141.000000, "Breaking these rules may result in jail/prision time, or leading up to a ban.");
	TextDrawBackgroundColor(TutTxtdraw[94], 255);
	TextDrawFont(TutTxtdraw[94], 2);
	TextDrawLetterSize(TutTxtdraw[94], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[94], -1);
	TextDrawSetOutline(TutTxtdraw[94], 1);
	TextDrawSetProportional(TutTxtdraw[94], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 2)
	TutTxtdraw[95] = TextDrawCreate(181.000000, 160.000000, "| No deathmatching - do not kill without a reason.");
	TextDrawBackgroundColor(TutTxtdraw[95], 255);
	TextDrawFont(TutTxtdraw[95], 2);
	TextDrawLetterSize(TutTxtdraw[95], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[95], -1);
	TextDrawSetOutline(TutTxtdraw[95], 1);
	TextDrawSetProportional(TutTxtdraw[95], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 3)
	TutTxtdraw[96] = TextDrawCreate(181.000000, 170.000000, "| No revengekilling - you loose 30 minutes of memory when you die.");
	TextDrawBackgroundColor(TutTxtdraw[96], 255);
	TextDrawFont(TutTxtdraw[96], 2);
	TextDrawLetterSize(TutTxtdraw[96], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[96], -1);
	TextDrawSetOutline(TutTxtdraw[96], 1);
	TextDrawSetProportional(TutTxtdraw[96], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 4)
	TutTxtdraw[97] = TextDrawCreate(181.000000, 181.000000, "| No carparking - do not park cars on people.");
	TextDrawBackgroundColor(TutTxtdraw[97], 255);
	TextDrawFont(TutTxtdraw[97], 2);
	TextDrawLetterSize(TutTxtdraw[97], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[97], -1);
	TextDrawSetOutline(TutTxtdraw[97], 1);
	TextDrawSetProportional(TutTxtdraw[97], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 5)
	TutTxtdraw[98] = TextDrawCreate(181.000000, 192.000000, "| No disconnecting/logging to avoid any roleplay situation.");
	TextDrawBackgroundColor(TutTxtdraw[98], 255);
	TextDrawFont(TutTxtdraw[98], 2);
	TextDrawLetterSize(TutTxtdraw[98], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[98], -1);
	TextDrawSetOutline(TutTxtdraw[98], 1);
	TextDrawSetProportional(TutTxtdraw[98], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 6)
	TutTxtdraw[99] = TextDrawCreate(181.000000, 203.000000, "| No account farming/server advertising/cheating/hacking.");
	TextDrawBackgroundColor(TutTxtdraw[99], 255);
	TextDrawFont(TutTxtdraw[99], 2);
	TextDrawLetterSize(TutTxtdraw[99], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[99], -1);
	TextDrawSetOutline(TutTxtdraw[99], 1);
	TextDrawSetProportional(TutTxtdraw[99], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Title)
	TutTxtdraw[100] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Credits");
	TextDrawBackgroundColor(TutTxtdraw[100], 255);
	TextDrawFont(TutTxtdraw[100], 2);
	TextDrawLetterSize(TutTxtdraw[100], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[100], -1);
	TextDrawSetOutline(TutTxtdraw[100], 0);
	TextDrawSetProportional(TutTxtdraw[100], 1);
	TextDrawSetShadow(TutTxtdraw[100], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 1)
	TutTxtdraw[101] = TextDrawCreate(175.000000, 141.000000, "Be sure to thank who makes all of this possible.");
	TextDrawBackgroundColor(TutTxtdraw[101], 255);
	TextDrawFont(TutTxtdraw[101], 2);
	TextDrawLetterSize(TutTxtdraw[101], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[101], -1);
	TextDrawSetOutline(TutTxtdraw[101], 1);
	TextDrawSetProportional(TutTxtdraw[101], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 2)
	TutTxtdraw[102] = TextDrawCreate(181.000000, 160.000000, "Director of Development");
	TextDrawBackgroundColor(TutTxtdraw[102], 255);
	TextDrawFont(TutTxtdraw[102], 2);
	TextDrawLetterSize(TutTxtdraw[102], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[102], -1);
	TextDrawSetOutline(TutTxtdraw[102], 1);
	TextDrawSetProportional(TutTxtdraw[102], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 3)
	TutTxtdraw[103] = TextDrawCreate(189.000000, 170.000000, "| Brendan Thomson");
	TextDrawBackgroundColor(TutTxtdraw[103], 255);
	TextDrawFont(TutTxtdraw[103], 2);
	TextDrawLetterSize(TutTxtdraw[103], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[103], -1);
	TextDrawSetOutline(TutTxtdraw[103], 1);
	TextDrawSetProportional(TutTxtdraw[103], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 4)
	TutTxtdraw[104] = TextDrawCreate(354.000000, 160.000000, "Scripting");
	TextDrawBackgroundColor(TutTxtdraw[104], 255);
	TextDrawFont(TutTxtdraw[104], 2);
	TextDrawLetterSize(TutTxtdraw[104], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[104], -1);
	TextDrawSetOutline(TutTxtdraw[104], 1);
	TextDrawSetProportional(TutTxtdraw[104], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 5)
	TutTxtdraw[105] = TextDrawCreate(181.000000, 192.000000, "Special Thanks");
	TextDrawBackgroundColor(TutTxtdraw[105], 255);
	TextDrawFont(TutTxtdraw[105], 2);
	TextDrawLetterSize(TutTxtdraw[105], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[105], -1);
	TextDrawSetOutline(TutTxtdraw[105], 1);
	TextDrawSetProportional(TutTxtdraw[105], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 6)
	TutTxtdraw[106] = TextDrawCreate(189.000000, 203.000000, "| JernejL~n~| kyeman~n~");
	TextDrawBackgroundColor(TutTxtdraw[106], 255);
	TextDrawFont(TutTxtdraw[106], 2);
	TextDrawLetterSize(TutTxtdraw[106], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[106], -1);
	TextDrawSetOutline(TutTxtdraw[106], 1);
	TextDrawSetProportional(TutTxtdraw[106], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 7)
	TutTxtdraw[107] = TextDrawCreate(362.000000, 169.000000, "| Scott~n~| Donuts~n~| Brendan~n~| GhoulSlayeR~n~| Zhao~n~| Calgon~n~| Beren~n~| Razbit~n~| Sew Sumi~n~| John Milete~n~| Brian~n~| (S)Mo Cena~n~| Kareem~n~|Jac Cakey~n~| Farva~n~| AlexR~n~| Akatony~n~| Neo");
	TextDrawBackgroundColor(TutTxtdraw[107], 255);
	TextDrawFont(TutTxtdraw[107], 2);
	TextDrawLetterSize(TutTxtdraw[107], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[107], -1);
	TextDrawSetOutline(TutTxtdraw[107], 1);
	TextDrawSetProportional(TutTxtdraw[107], 1);
	textdrawscount++;
	textdrawscount++;

	// Tutorial (Frame 23) (Title)
	TutTxtdraw[108] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Welcome to San Andreas");
	TextDrawBackgroundColor(TutTxtdraw[108], 255);
	TextDrawFont(TutTxtdraw[108], 2);
	TextDrawLetterSize(TutTxtdraw[108], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[108], -1);
	TextDrawSetOutline(TutTxtdraw[108], 0);
	TextDrawSetProportional(TutTxtdraw[108], 1);
	TextDrawSetShadow(TutTxtdraw[108], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 1)
	TutTxtdraw[109] = TextDrawCreate(175.000000, 141.000000, "Enough chat, it's time to for us to shut up and for you to play, so if you");
	TextDrawBackgroundColor(TutTxtdraw[109], 255);
	TextDrawFont(TutTxtdraw[109], 2);
	TextDrawLetterSize(TutTxtdraw[109], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[109], -1);
	TextDrawSetOutline(TutTxtdraw[109], 1);
	TextDrawSetProportional(TutTxtdraw[109], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 2)
	TutTxtdraw[110] = TextDrawCreate(175.000000, 152.000000, "have any questions, use ~g~/newb~w~. If you need personal help, use");
	TextDrawBackgroundColor(TutTxtdraw[110], 255);
	TextDrawFont(TutTxtdraw[110], 2);
	TextDrawLetterSize(TutTxtdraw[110], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[110], -1);
	TextDrawSetOutline(TutTxtdraw[110], 1);
	TextDrawSetProportional(TutTxtdraw[110], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 3)
	TutTxtdraw[111] = TextDrawCreate(175.000000, 163.000000, "~g~/requesthelp~w~. For a list of commands type ~g~/help. ~w~For more information,");
	TextDrawBackgroundColor(TutTxtdraw[111], 255);
	TextDrawFont(TutTxtdraw[111], 2);
	TextDrawLetterSize(TutTxtdraw[111], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[111], -1);
	TextDrawSetOutline(TutTxtdraw[111], 1);
	TextDrawSetProportional(TutTxtdraw[111], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 4)
	TutTxtdraw[112] = TextDrawCreate(175.000000, 174.000000, "check out ~y~www.fg-roleplay.com~w~.");
	TextDrawBackgroundColor(TutTxtdraw[112], 255);
	TextDrawFont(TutTxtdraw[112], 2);
	TextDrawLetterSize(TutTxtdraw[112], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[112], -1);
	TextDrawSetOutline(TutTxtdraw[112], 1);
	TextDrawSetProportional(TutTxtdraw[112], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 5)
	TutTxtdraw[113] = TextDrawCreate(175.000000, 204.000000, "Your weapons will be restricted for the first 2 hours of play.");
	TextDrawBackgroundColor(TutTxtdraw[113], 255);
	TextDrawFont(TutTxtdraw[113], 2);
	TextDrawLetterSize(TutTxtdraw[113], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[113], -1);
	TextDrawSetOutline(TutTxtdraw[113], 1);
	TextDrawSetProportional(TutTxtdraw[113], 1);
	textdrawscount++;
	
	print("[Textdraws] Loaded textdraws.");
	
	return 1;
}

stock PrepTradeToysGUI(playerid, sellerid, price, object)
{
	new string[128];
	InsideTradeToys[playerid] = 1;
	
	// Background
	ttBackground[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 120.000000, "Background"); // Leave the string there, it will fuck up the size of the background if not
	PlayerTextDrawBackgroundColor(playerid, ttBackground[playerid], 255);
	PlayerTextDrawFont(playerid, ttBackground[playerid], 0);
	PlayerTextDrawLetterSize(playerid, ttBackground[playerid], -0.019998, 34.600002);
	PlayerTextDrawColor(playerid, ttBackground[playerid], -256);
	PlayerTextDrawSetOutline(playerid, ttBackground[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttBackground[playerid], 0);
	PlayerTextDrawSetShadow(playerid, ttBackground[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttBackground[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttBackground[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttBackground[playerid], 618.000000, 164.000000);
	PlayerTextDrawSetSelectable(playerid, ttBackground[playerid], 0);
	
	// Model
	ttModel[playerid] = CreatePlayerTextDraw(playerid, 382.000000, 201.000000, "Model");
	PlayerTextDrawBackgroundColor(playerid, ttModel[playerid], 255);
	PlayerTextDrawFont(playerid, ttModel[playerid], 5);
	PlayerTextDrawLetterSize(playerid, ttModel[playerid], -0.679998, 15.999996);
	PlayerTextDrawColor(playerid, ttModel[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttModel[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttModel[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttModel[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttModel[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttModel[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttModel[playerid], 171.000000, 145.000000);
	PlayerTextDrawSetSelectable(playerid, ttModel[playerid], 0);
	PlayerTextDrawSetPreviewModel(playerid, ttModel[playerid], object);
	PlayerTextDrawSetPreviewRot(playerid, ttModel[playerid], 0.000000, 0.000000, -180.000000, 1.000000);
	
	// Object Info
	format(string, sizeof(string), "(Object ID %d)", object);
	ttObjectInfo[playerid] = CreatePlayerTextDraw(playerid, 400.000000, 182.000000, string);
	PlayerTextDrawBackgroundColor(playerid, ttObjectInfo[playerid], 255);
	PlayerTextDrawFont(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttObjectInfo[playerid], 0.310000, 1.000000);
	PlayerTextDrawColor(playerid, ttObjectInfo[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttObjectInfo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttObjectInfo[playerid], 0);
	
	// Logo
	ttLogo[playerid] = CreatePlayerTextDraw(playerid, 264.000000, 121.000000, "Buon ban do choi");
	PlayerTextDrawBackgroundColor(playerid, ttLogo[playerid], 255);
	PlayerTextDrawFont(playerid, ttLogo[playerid], 2);
	PlayerTextDrawLetterSize(playerid, ttLogo[playerid], 0.379999, 1.500000);
	PlayerTextDrawColor(playerid, ttLogo[playerid], 542758143);
	PlayerTextDrawSetOutline(playerid, ttLogo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttLogo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttLogo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttLogo[playerid], 0);
	
	// Purchase
	ttPurchase[playerid] = CreatePlayerTextDraw(playerid, 91.000000, 295.000000, "Mua");
	PlayerTextDrawBackgroundColor(playerid, ttPurchase[playerid], 255);
	PlayerTextDrawFont(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttPurchase[playerid], 0.500000, 1.700000);
	PlayerTextDrawColor(playerid, ttPurchase[playerid], 16711935);
	PlayerTextDrawSetOutline(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawSetProportional(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttPurchase[playerid], 1625166370);
	PlayerTextDrawTextSize(playerid, ttPurchase[playerid], 164.000000, 4.000000);
	PlayerTextDrawSetSelectable(playerid, ttPurchase[playerid], 1);
	
	// Decline
	ttDecline[playerid] = CreatePlayerTextDraw(playerid, 254.000000, 295.000000, "Tu choi");
	PlayerTextDrawBackgroundColor(playerid, ttDecline[playerid], 255);
	PlayerTextDrawFont(playerid, ttDecline[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttDecline[playerid], 0.500000, 1.799999);
	PlayerTextDrawColor(playerid, ttDecline[playerid], -16776961);
	PlayerTextDrawSetOutline(playerid, ttDecline[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttDecline[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttDecline[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttDecline[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttDecline[playerid], -234414302);
	PlayerTextDrawTextSize(playerid, ttDecline[playerid], 310.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, ttDecline[playerid], 0);
	
	// Offer
	format(string, sizeof(string), "%s da de nghi ban do choi nay voi gia $%s", GetPlayerNameEx(sellerid), number_format(price));
	ttOffer[playerid] = CreatePlayerTextDraw(playerid, 71.000000, 174.000000, string);
	PlayerTextDrawBackgroundColor(playerid, ttOffer[playerid], 255);
	PlayerTextDrawFont(playerid, ttOffer[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttOffer[playerid], 0.310000, 1.000000);
	PlayerTextDrawColor(playerid, ttOffer[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttOffer[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttOffer[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttOffer[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttOffer[playerid], 0);
	
	// Note
	ttNote[playerid] = CreatePlayerTextDraw(playerid, 74.000000, 221.000000, "Bam phim Y tu ban phim de dong y mua. Bam phim N tu ban phim de tu choi mua");
	PlayerTextDrawBackgroundColor(playerid, ttNote[playerid], 255);
	PlayerTextDrawFont(playerid, ttNote[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttNote[playerid], 0.150000, 1.000000);
	PlayerTextDrawColor(playerid, ttNote[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttNote[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttNote[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttNote[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttNote[playerid], 0);
	
	// Yes 
	ttYes[playerid] = CreatePlayerTextDraw(playerid, 117.000000, 275.000000, "'Y'");
	PlayerTextDrawBackgroundColor(playerid, ttYes[playerid], 255);
	PlayerTextDrawFont(playerid, ttYes[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttYes[playerid], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, ttYes[playerid], 16711935);
	PlayerTextDrawSetOutline(playerid, ttYes[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttYes[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttYes[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttYes[playerid], 0);

	// No 
	ttNo[playerid] = CreatePlayerTextDraw(playerid, 270.000000, 271.000000, "'N'");
	PlayerTextDrawBackgroundColor(playerid, ttNo[playerid], 255);
	PlayerTextDrawFont(playerid, ttNo[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttNo[playerid], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, ttNo[playerid], -16776961);
	PlayerTextDrawSetOutline(playerid, ttNo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttNo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttNo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttNo[playerid], 0);
	
	PlayerTextDrawShow(playerid, ttBackground[playerid]);
	PlayerTextDrawShow(playerid, ttModel[playerid]);
	PlayerTextDrawShow(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawShow(playerid, ttLogo[playerid]);
	PlayerTextDrawShow(playerid, ttPurchase[playerid]);
	PlayerTextDrawShow(playerid, ttDecline[playerid]);
	PlayerTextDrawShow(playerid, ttOffer[playerid]);
	PlayerTextDrawShow(playerid, ttNote[playerid]);
	PlayerTextDrawShow(playerid, ttYes[playerid]);
	PlayerTextDrawShow(playerid, ttNo[playerid]);
	return 1;
}



stock HideTradeToysGUI(playerid)
{
	InsideTradeToys[playerid] = 0;
	PlayerTextDrawHide(playerid, ttBackground[playerid]);
	PlayerTextDrawHide(playerid, ttModel[playerid]);
	PlayerTextDrawHide(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawHide(playerid, ttLogo[playerid]);
	PlayerTextDrawHide(playerid, ttPurchase[playerid]);
	PlayerTextDrawHide(playerid, ttDecline[playerid]);
	PlayerTextDrawHide(playerid, ttOffer[playerid]);
	PlayerTextDrawHide(playerid, ttNote[playerid]);
	PlayerTextDrawHide(playerid, ttYes[playerid]);
	PlayerTextDrawHide(playerid, ttNo[playerid]);
	return 1;
}

stock CreateHungerGamesTextdraw(playerid)
{
	new string[128];
	
	// Create the Player Count Textdraw
	format(string, sizeof(string), "Players in event: %d", hgPlayerCount);
	HungerPlayerInfo[playerid][hgPlayerText] = CreatePlayerTextDraw(playerid, 41.000000, 433.000000, string);
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgPlayerText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgPlayerText], 0.250000, 0.899999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgPlayerText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgPlayerText], 0);
	
	// Create the loading textdraw
	HungerPlayerInfo[playerid][hgLoadingText] = CreatePlayerTextDraw(playerid, 549.000000, 423.000000, "Dang tai The Hunger Games...");
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgLoadingText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgLoadingText], 0.160000, 0.699999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgLoadingText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgLoadingText], 0);

	// Create the time left textdraw
	format(string, sizeof(string), "Time left until start: %d", hgCountdown);
	HungerPlayerInfo[playerid][hgTimeLeftText] = CreatePlayerTextDraw(playerid, 549.000000, 432.000000, string);
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 0.210000, 1.000000);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 0);

	// Create the credits textdraw
	HungerPlayerInfo[playerid][hgCreditsText] = CreatePlayerTextDraw(playerid, 532.000000, 2.000000, "The Hunger Games, by Kids");
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgCreditsText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgCreditsText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgCreditsText], 0.190000, 0.699999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgCreditsText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgCreditsText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgCreditsText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgCreditsText], 0);
	
	// Show the textdraws
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgCreditsText]);
	return true;
}

stock HideHungerGamesTextdraw(playerid)
{
	// Hide the textdraws
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgCreditsText]);
	return true;
}

stock ShowFPSCounter(playerid)
{
	new string[64];
	format(string, sizeof(string), "%d", pFPS[playerid]);
	pFPSCounter[playerid] = CreatePlayerTextDraw(playerid,617.000000, 2.000000, string);
	PlayerTextDrawBackgroundColor(playerid,pFPSCounter[playerid], 255);
	PlayerTextDrawFont(playerid,pFPSCounter[playerid], 3);
	PlayerTextDrawLetterSize(playerid,pFPSCounter[playerid], 0.370000, 1.200000);
	PlayerTextDrawColor(playerid,pFPSCounter[playerid], -65281);
	PlayerTextDrawSetOutline(playerid,pFPSCounter[playerid], 1);
	PlayerTextDrawSetProportional(playerid,pFPSCounter[playerid], 1);
	PlayerTextDrawSetSelectable(playerid,pFPSCounter[playerid], 0);
	
	PlayerTextDrawShow(playerid, pFPSCounter[playerid]);
	return true;
}


stock HideFPSCounter(playerid)
{
	PlayerTextDrawHide(playerid, pFPSCounter[playerid]);
	return true;
}

stock LoadingTextDraws(playerid)
{
	if(IsPlayerMobile(playerid))
	{
		Foods[0][playerid] = TextDrawCreate(606.000, 4.000, "HUD:radar_centre");
		TextDrawTextSize(Foods[0][playerid], 14.000, 12.000);
		TextDrawAlignment(Foods[0][playerid], 1);
		TextDrawColor(Foods[0][playerid], -1);
		TextDrawSetShadow(Foods[0][playerid], 0);
		TextDrawSetOutline(Foods[0][playerid], 0);
		TextDrawBackgroundColor(Foods[0][playerid], 255);
		TextDrawFont(Foods[0][playerid], 4);
		TextDrawSetProportional(Foods[0][playerid], 1);

		Foods[1][playerid] = TextDrawCreate(623.000, 5.000, "HUD:radar_burgerShot");
		TextDrawTextSize(Foods[1][playerid], 12.000, 10.000);
		TextDrawAlignment(Foods[1][playerid], 1);
		TextDrawColor(Foods[1][playerid], -1);
		TextDrawSetShadow(Foods[1][playerid], 0);
		TextDrawSetOutline(Foods[1][playerid], 0);
		TextDrawBackgroundColor(Foods[1][playerid], 255);
		TextDrawFont(Foods[1][playerid], 4);
		TextDrawSetProportional(Foods[1][playerid], 1);

		Foods[2][playerid] = TextDrawCreate(613.000, 7.000, "100");
		TextDrawLetterSize(Foods[2][playerid], 0.189, 0.598);
		TextDrawTextSize(Foods[2][playerid], 1.000, 0.000);
		TextDrawAlignment(Foods[2][playerid], 2);
		TextDrawColor(Foods[2][playerid], -1);
		TextDrawSetShadow(Foods[2][playerid], 1);
		TextDrawSetOutline(Foods[2][playerid], 0);
		TextDrawBackgroundColor(Foods[2][playerid], 150);
		TextDrawFont(Foods[2][playerid], 1);
		TextDrawSetProportional(Foods[2][playerid], 1);

		Foods[3][playerid] = TextDrawCreate(629.000, 7.000, "100");
		TextDrawLetterSize(Foods[3][playerid], 0.189, 0.598);
		TextDrawTextSize(Foods[3][playerid], 1.000, 0.000);
		TextDrawAlignment(Foods[3][playerid], 2);
		TextDrawColor(Foods[3][playerid], -1);
		TextDrawSetShadow(Foods[3][playerid], 1);
		TextDrawSetOutline(Foods[3][playerid], 0);
		TextDrawBackgroundColor(Foods[3][playerid], 150);
		TextDrawFont(Foods[3][playerid], 1);
		TextDrawSetProportional(Foods[3][playerid], 1);

		
		MenuMobi[playerid][0] = CreatePlayerTextDraw(playerid, 66.000, 142.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][0], 112.000, 220.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][0], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][0], -10270721);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][0], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][0], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][0], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][0], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][0], 1);

		MenuMobi[playerid][1] = CreatePlayerTextDraw(playerid, 69.000, 144.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][1], 106.000, 216.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][1], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][1], 1604231423);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][1], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][1], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][1], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][1], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][1], 1);

		MenuMobi[playerid][2] = CreatePlayerTextDraw(playerid, 72.000, 150.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][2], 99.000, 43.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][2], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][2], -260013825);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][2], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][2], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][2], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][2], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][2], 1);
		PlayerTextDrawSetSelectable(playerid, MenuMobi[playerid][2], 1);

		MenuMobi[playerid][3] = CreatePlayerTextDraw(playerid, 72.000, 200.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][3], 100.000, 43.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][3], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][3], -260013825);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][3], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][3], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][3], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][3], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][3], 1);
		PlayerTextDrawSetSelectable(playerid, MenuMobi[playerid][3], 1);

		MenuMobi[playerid][4] = CreatePlayerTextDraw(playerid, 72.000, 252.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][4], 100.000, 53.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][4], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][4], -260013825);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][4], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][4], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][4], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][4], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][4], 1);
		PlayerTextDrawSetSelectable(playerid, MenuMobi[playerid][4], 1);

		MenuMobi[playerid][5] = CreatePlayerTextDraw(playerid, 72.000, 313.000, "LD_SPAC:white");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][5], 100.000, 45.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][5], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][5], -260013825);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][5], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][5], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][5], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][5], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][5], 1);
		PlayerTextDrawSetSelectable(playerid, MenuMobi[playerid][5], 1);

		MenuMobi[playerid][6] = CreatePlayerTextDraw(playerid, 99.000, 165.000, "Cua hang");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][6], 0.300, 1.500);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][6], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][6], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][6], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][6], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][6], -1306385665);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][6], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][6], 1);

		MenuMobi[playerid][7] = CreatePlayerTextDraw(playerid, 99.000, 212.000, "Cap nhat");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][7], 0.300, 1.500);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][7], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][7], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][7], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][7], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][7], -1306385665);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][7], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][7], 1);

		MenuMobi[playerid][8] = CreatePlayerTextDraw(playerid, 104.000, 269.000, "Su kien");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][8], 0.300, 1.500);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][8], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][8], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][8], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][8], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][8], -1306385665);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][8], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][8], 1);

		MenuMobi[playerid][9] = CreatePlayerTextDraw(playerid, 103.000, 328.000, "Connect");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][9], 0.300, 1.500);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][9], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][9], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][9], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][9], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][9], -1306385665);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][9], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][9], 1);

		MenuMobi[playerid][10] = CreatePlayerTextDraw(playerid, 214.000, 121.000, "1. de t noi cho may nghe may nghe tao noi tao noi may khong nghe tao dap vo cai dau cua may nha con di cho");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][10], 0.400, 1.500);
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][10], 394.000, 20.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][10], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][10], -1);
		PlayerTextDrawUseBox(playerid, MenuMobi[playerid][10], 1);
		PlayerTextDrawBoxColor(playerid, MenuMobi[playerid][10], -849584897);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][10], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][10], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][10], -6259969);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][10], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][10], 1);

		MenuMobi[playerid][11] = CreatePlayerTextDraw(playerid, 424.000, 121.000, "1. de t noi cho may nghe may nghe tao noi tao noi may khong nghe tao dap vo cai dau cua may nha con di cho");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][11], 0.209, 0.999);
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][11], 606.000, 20.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][11], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][11], -1);
		PlayerTextDrawUseBox(playerid, MenuMobi[playerid][11], 1);
		PlayerTextDrawBoxColor(playerid, MenuMobi[playerid][11], -849584897);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][11], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][11], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][11], -6259969);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][11], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][11], 1);

		MenuMobi[playerid][12] = CreatePlayerTextDraw(playerid, 424.000, 281.000, "1. de t noi cho may nghe may nghe tao noi tao noi may khong nghe tao dap vo cai dau cua may nha con di cho");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][12], 0.209, 0.999);
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][12], 606.000, 20.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][12], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][12], -1);
		PlayerTextDrawUseBox(playerid, MenuMobi[playerid][12], 1);
		PlayerTextDrawBoxColor(playerid, MenuMobi[playerid][12], -849584897);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][12], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][12], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][12], -6259969);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][12], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][12], 1);

		MenuMobi[playerid][13] = CreatePlayerTextDraw(playerid, 214.000, 281.000, "1. de t noi cho may nghe may nghe tao noi tao noi may khong nghe tao dap vo cai dau cua may nha con di cho");
		PlayerTextDrawLetterSize(playerid, MenuMobi[playerid][13], 0.209, 0.999);
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][13], 394.000, 20.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][13], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][13], -1);
		PlayerTextDrawUseBox(playerid, MenuMobi[playerid][13], 1);
		PlayerTextDrawBoxColor(playerid, MenuMobi[playerid][13], -849584897);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][13], 1);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][13], 1);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][13], -6259969);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][13], 1);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][13], 1);

		MenuMobi[playerid][14] = CreatePlayerTextDraw(playerid, 203.000, 111.000, "LD_CHAT:badchat");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][14], 12.000, 11.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][14], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][14], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][14], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][14], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][14], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][14], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][14], 1);

		MenuMobi[playerid][15] = CreatePlayerTextDraw(playerid, 415.000, 112.000, "LD_CHAT:badchat");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][15], 12.000, 11.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][15], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][15], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][15], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][15], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][15], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][15], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][15], 1);

		MenuMobi[playerid][16] = CreatePlayerTextDraw(playerid, 415.000, 273.000, "LD_CHAT:badchat");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][16], 12.000, 11.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][16], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][16], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][16], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][16], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][16], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][16], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][16], 1);

		MenuMobi[playerid][17] = CreatePlayerTextDraw(playerid, 203.000, 273.000, "LD_CHAT:badchat");
		PlayerTextDrawTextSize(playerid, MenuMobi[playerid][17], 12.000, 11.000);
		PlayerTextDrawAlignment(playerid, MenuMobi[playerid][17], 1);
		PlayerTextDrawColor(playerid, MenuMobi[playerid][17], -1);
		PlayerTextDrawSetShadow(playerid, MenuMobi[playerid][17], 0);
		PlayerTextDrawSetOutline(playerid, MenuMobi[playerid][17], 0);
		PlayerTextDrawBackgroundColor(playerid, MenuMobi[playerid][17], 255);
		PlayerTextDrawFont(playerid, MenuMobi[playerid][17], 4);
		PlayerTextDrawSetProportional(playerid, MenuMobi[playerid][17], 1);
	}

	Foods_PC[playerid][0] = TextDrawCreate(623.000, 3.000, "mdl-2012:burger");
	TextDrawTextSize(Foods_PC[playerid][0], 12.000, 12.000);
	TextDrawAlignment(Foods_PC[playerid][0], 1);
	TextDrawColor(Foods_PC[playerid][0], -1);
	TextDrawSetShadow(Foods_PC[playerid][0], 0);
	TextDrawSetOutline(Foods_PC[playerid][0], 0);
	TextDrawBackgroundColor(Foods_PC[playerid][0], 255);
	TextDrawFont(Foods_PC[playerid][0], 4);
	TextDrawSetProportional(Foods_PC[playerid][0], 1);

	Foods_PC[playerid][1] = TextDrawCreate(607.000, 4.000, "mdl-2012:water");
	TextDrawTextSize(Foods_PC[playerid][1], 12.000, 10.000);
	TextDrawAlignment(Foods_PC[playerid][1], 1);
	TextDrawColor(Foods_PC[playerid][1], -1);
	TextDrawSetShadow(Foods_PC[playerid][1], 0);
	TextDrawSetOutline(Foods_PC[playerid][1], 0);
	TextDrawBackgroundColor(Foods_PC[playerid][1], 255);
	TextDrawFont(Foods_PC[playerid][1], 4);
	TextDrawSetProportional(Foods_PC[playerid][1], 1);

	Foods_PC[playerid][2] = TextDrawCreate(613.000, 7.000, "100");
	TextDrawLetterSize(Foods_PC[playerid][2], 0.189, 0.598);
	TextDrawTextSize(Foods_PC[playerid][2], 1.000, 0.000);
	TextDrawAlignment(Foods_PC[playerid][2], 2);
	TextDrawColor(Foods_PC[playerid][2], -1);
	TextDrawSetShadow(Foods_PC[playerid][2], 1);
	TextDrawSetOutline(Foods_PC[playerid][2], 0);
	TextDrawBackgroundColor(Foods_PC[playerid][2], 150);
	TextDrawFont(Foods_PC[playerid][2], 1);
	TextDrawSetProportional(Foods_PC[playerid][2], 1);

	Foods_PC[playerid][3] = TextDrawCreate(629.000, 7.000, "100");
	TextDrawLetterSize(Foods_PC[playerid][3], 0.189, 0.598);
	TextDrawTextSize(Foods_PC[playerid][3], 1.000, 0.000);
	TextDrawAlignment(Foods_PC[playerid][3], 2);
	TextDrawColor(Foods_PC[playerid][3], -1);
	TextDrawSetShadow(Foods_PC[playerid][3], 1);
	TextDrawSetOutline(Foods_PC[playerid][3], 0);
	TextDrawBackgroundColor(Foods_PC[playerid][3], 150);
	TextDrawFont(Foods_PC[playerid][3], 1);
	TextDrawSetProportional(Foods_PC[playerid][3], 1);


	Loader[playerid][0] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][0], 0.000000, 1.098096);
	PlayerTextDrawTextSize(playerid, Loader[playerid][0], 385.300018, 0.000000);
	PlayerTextDrawAlignment(playerid, Loader[playerid][0], 1);
	PlayerTextDrawColor(playerid, Loader[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, Loader[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Loader[playerid][0], 228);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][0], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);

	Loader[playerid][2] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][2], 0.000000, 1.098096);
	PlayerTextDrawTextSize(playerid, Loader[playerid][2], 385.300018, 0.000000);
	PlayerTextDrawAlignment(playerid, Loader[playerid][2], 1);
	PlayerTextDrawColor(playerid, Loader[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, Loader[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][2], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);

	Loader[playerid][1] = CreatePlayerTextDraw(playerid, 321.385589, 395.916687, "");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][1], 0.178857, 1.127499);
	PlayerTextDrawAlignment(playerid, Loader[playerid][1], 2);
	PlayerTextDrawColor(playerid, Loader[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][1], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);


	entertx[playerid][0] = CreatePlayerTextDraw(playerid, 102.000, 424.000, "mdl-2200:safezone");
	PlayerTextDrawTextSize(playerid, entertx[playerid][0], 91.000, 23.000);
	PlayerTextDrawAlignment(playerid, entertx[playerid][0], 1);
	PlayerTextDrawColor(playerid, entertx[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, entertx[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, entertx[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, entertx[playerid][0], 255);
	PlayerTextDrawFont(playerid, entertx[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, entertx[playerid][0], 1);

	logoLSRP[playerid][0] = CreatePlayerTextDraw(playerid, -0.1999, -0.1333, "mdl-2714:bg");
    PlayerTextDrawTextSize(playerid, logoLSRP[playerid][0], 641.0000, 450.0000);
    PlayerTextDrawAlignment(playerid, logoLSRP[playerid][0], 1);
    PlayerTextDrawColor(playerid, logoLSRP[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, logoLSRP[playerid][0], 255);
    PlayerTextDrawFont(playerid, logoLSRP[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, logoLSRP[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, logoLSRP[playerid][0], 0);


    logoLSRP[playerid][1] = CreatePlayerTextDraw(playerid, 217.0668, 69.0887, "mdl-2714:logoLSRP");
    PlayerTextDrawTextSize(playerid, logoLSRP[playerid][1], 209.0000, 113.0000);
    PlayerTextDrawAlignment(playerid, logoLSRP[playerid][1], 1);
    PlayerTextDrawColor(playerid, logoLSRP[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, logoLSRP[playerid][1], 255);
    PlayerTextDrawFont(playerid, logoLSRP[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, logoLSRP[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, logoLSRP[playerid][1], 0);


    loginpanel_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 320.0000, 201.7001, "Box"); // пусто
    PlayerTextDrawLetterSize(playerid, loginpanel_PTD[playerid][0], 0.0000, 3.2333);
    PlayerTextDrawTextSize(playerid, loginpanel_PTD[playerid][0], 0.0000, 88.0000);
    PlayerTextDrawAlignment(playerid, loginpanel_PTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, loginpanel_PTD[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, loginpanel_PTD[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, loginpanel_PTD[playerid][0], 387587327);
    PlayerTextDrawBackgroundColor(playerid, loginpanel_PTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, loginpanel_PTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, loginpanel_PTD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, loginpanel_PTD[playerid][0], 0);
    PlayerTextDrawSetSelectable(playerid, loginpanel_PTD[playerid][0], false);
    
    loginpanel_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 320.0000, 205.5150, "Ten_dang_nhap");
    PlayerTextDrawLetterSize(playerid, loginpanel_PTD[playerid][1], 0.1610, 0.8657);
    PlayerTextDrawTextSize(playerid, loginpanel_PTD[playerid][1], 10.0000, 82.0000);
    PlayerTextDrawAlignment(playerid, loginpanel_PTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, loginpanel_PTD[playerid][1], -1);
    PlayerTextDrawUseBox(playerid, loginpanel_PTD[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, loginpanel_PTD[playerid][1], 589967103);
    PlayerTextDrawBackgroundColor(playerid, loginpanel_PTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, loginpanel_PTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, loginpanel_PTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, loginpanel_PTD[playerid][1], 0);
    PlayerTextDrawSetSelectable(playerid, loginpanel_PTD[playerid][1], false);
    
    loginpanel_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 320.0000, 219.8011, "Nhap_mat_khau");
    PlayerTextDrawLetterSize(playerid, loginpanel_PTD[playerid][2], 0.1610, 0.8657);
    PlayerTextDrawTextSize(playerid, loginpanel_PTD[playerid][2], 10.0000, 82.0000);
    PlayerTextDrawAlignment(playerid, loginpanel_PTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, loginpanel_PTD[playerid][2], -1);
    PlayerTextDrawUseBox(playerid, loginpanel_PTD[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, loginpanel_PTD[playerid][2], 589967103);
    PlayerTextDrawBackgroundColor(playerid, loginpanel_PTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, loginpanel_PTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, loginpanel_PTD[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, loginpanel_PTD[playerid][2], 0);
    PlayerTextDrawSetSelectable(playerid, loginpanel_PTD[playerid][2], true);
    
    loginpanel_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 320.0666, 237.0874, "Truy cap may chu");
    PlayerTextDrawLetterSize(playerid, loginpanel_PTD[playerid][3], 0.1610, 0.8657);
    PlayerTextDrawTextSize(playerid, loginpanel_PTD[playerid][3], 10.0000, 88.0000);
    PlayerTextDrawAlignment(playerid, loginpanel_PTD[playerid][3], 2);
    PlayerTextDrawColor(playerid, loginpanel_PTD[playerid][3], -1);
    PlayerTextDrawUseBox(playerid, loginpanel_PTD[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, loginpanel_PTD[playerid][3], 793797631);
    PlayerTextDrawBackgroundColor(playerid, loginpanel_PTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, loginpanel_PTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, loginpanel_PTD[playerid][3], 1);
    PlayerTextDrawSetShadow(playerid, loginpanel_PTD[playerid][3], 0);
    PlayerTextDrawSetSelectable(playerid, loginpanel_PTD[playerid][3], true);

	tdtuido1[playerid][0] = CreatePlayerTextDraw(playerid, 473.000, 142.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][0], 159.000, 136.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][0], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][0], 168430335);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][0], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][0], 1);

	tdtuido1[playerid][1] = CreatePlayerTextDraw(playerid, 473.000, 142.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][1], 159.000, 136.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][1], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][1], 168430335);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][1], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][1], 1);

	tdtuido1[playerid][2] = CreatePlayerTextDraw(playerid, 382.000, 142.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][2], 90.000, 163.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][2], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][2], 168430335);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][2], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][2], 1);

	tdtuido1[playerid][3] = CreatePlayerTextDraw(playerid, 473.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][3], 90.000, 26.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][3], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][3], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][3], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][3], 1);

	tdtuido1[playerid][4] = CreatePlayerTextDraw(playerid, 564.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][4], 68.000, 26.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][4], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][4], -2147483393);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][4], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][4], 1);

	tdtuido1[playerid][5] = CreatePlayerTextDraw(playerid, 592.000, 278.000, "x");
	PlayerTextDrawLetterSize(playerid, tdtuido1[playerid][5], 0.708, 2.499);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][5], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][5], 150);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][5], 1);

	tdtuido1[playerid][6] = CreatePlayerTextDraw(playerid, 491.000, 285.000, "su dung");
	PlayerTextDrawLetterSize(playerid, tdtuido1[playerid][6], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][6], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][6], -2147483393);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][6], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][6], 1);

	tdtuido1[playerid][7] = CreatePlayerTextDraw(playerid, 385.000, 162.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][7], 84.000, 115.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][7], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][7], 85);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido1[playerid][7], 0);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido1[playerid][7], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido1[playerid][7], 0, 0);

	tdtuido1[playerid][8] = CreatePlayerTextDraw(playerid, 427.000, 144.000, "Jake Martin");
	PlayerTextDrawLetterSize(playerid, tdtuido1[playerid][8], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][8], 2);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][8], 1);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][8], 150);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][8], 1);

	tdtuido1[playerid][9] = CreatePlayerTextDraw(playerid, 392.000, 264.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][9], 70.000, 17.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][9], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][9], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][9], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][9], 1);

	tdtuido1[playerid][10] = CreatePlayerTextDraw(playerid, 398.000, 264.000, "bao cao");
	PlayerTextDrawLetterSize(playerid, tdtuido1[playerid][10], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][10], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][10], -2147483393);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][10], 1);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][10], 150);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][10], 2);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][10], 1);

	tdtuido1[playerid][11] = CreatePlayerTextDraw(playerid, 392.000, 284.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][11], 70.000, 17.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][11], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][11], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][11], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][11], 1);

	tdtuido1[playerid][12] = CreatePlayerTextDraw(playerid, 398.000, 285.000, "nhiem vu");
	PlayerTextDrawLetterSize(playerid, tdtuido1[playerid][12], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][12], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][12], -2147483393);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][12], 1);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][12], 150);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][12], 2);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][12], 1);

	tdtuido1[playerid][13] = CreatePlayerTextDraw(playerid, 476.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][13], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][13], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][13], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][13], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][13], 1);

	tdtuido1[playerid][14] = CreatePlayerTextDraw(playerid, 498.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][14], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][14], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][14], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][14], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][14], 1);

	tdtuido1[playerid][15] = CreatePlayerTextDraw(playerid, 520.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][15], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][15], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][15], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][15], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][15], 1);

	tdtuido1[playerid][16] = CreatePlayerTextDraw(playerid, 542.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][16], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][16], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][16], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][16], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][16], 1);

	tdtuido1[playerid][17] = CreatePlayerTextDraw(playerid, 564.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][17], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][17], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][17], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][17], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][17], 1);

	tdtuido1[playerid][18] = CreatePlayerTextDraw(playerid, 586.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][18], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][18], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][18], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][18], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][18], 1);

	tdtuido1[playerid][19] = CreatePlayerTextDraw(playerid, 608.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][19], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][19], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][19], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][19], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][19], 1);

	tdtuido1[playerid][20] = CreatePlayerTextDraw(playerid, 476.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido1[playerid][20], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido1[playerid][20], 1);
	PlayerTextDrawColor(playerid, tdtuido1[playerid][20], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido1[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido1[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido1[playerid][20], 255);
	PlayerTextDrawFont(playerid, tdtuido1[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido1[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido1[playerid][20], 1);

	tdtuido2[playerid][21] = CreatePlayerTextDraw(playerid, 498.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][21], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][21], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][21], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][21], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][21], 1);

	tdtuido2[playerid][22] = CreatePlayerTextDraw(playerid, 520.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][22], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][22], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][22], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][22], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][22], 1);

	tdtuido2[playerid][23] = CreatePlayerTextDraw(playerid, 542.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][23], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][23], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][23], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][23], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][23], 1);

	tdtuido2[playerid][24] = CreatePlayerTextDraw(playerid, 564.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][24], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][24], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][24], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][24], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][24], 1);

	tdtuido2[playerid][25] = CreatePlayerTextDraw(playerid, 586.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][25], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][25], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][25], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][25], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][25], 1);

	tdtuido2[playerid][26] = CreatePlayerTextDraw(playerid, 608.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][26], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][26], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][26], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][26], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][26], 1);

	tdtuido2[playerid][27] = CreatePlayerTextDraw(playerid, 476.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][27], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][27], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][27], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][27], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][27], 1);

	tdtuido2[playerid][28] = CreatePlayerTextDraw(playerid, 498.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][28], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][28], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][28], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][28], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][28], 1);

	tdtuido2[playerid][29] = CreatePlayerTextDraw(playerid, 520.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][29], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][29], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][29], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][29], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][29], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][29], 1);

	tdtuido2[playerid][30] = CreatePlayerTextDraw(playerid, 542.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][30], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][30], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][30], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][30], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][30], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][30], 1);

	tdtuido2[playerid][31] = CreatePlayerTextDraw(playerid, 564.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][31], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][31], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][31], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][31], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][31], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][31], 1);

	tdtuido2[playerid][32] = CreatePlayerTextDraw(playerid, 586.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][32], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][32], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][32], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][32], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][32], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][32], 1);

	tdtuido2[playerid][33] = CreatePlayerTextDraw(playerid, 608.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][33], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][33], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][33], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][33], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][33], 1);

	tdtuido2[playerid][34] = CreatePlayerTextDraw(playerid, 476.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][34], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][34], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][34], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][34], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][34], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][34], 1);

	tdtuido2[playerid][35] = CreatePlayerTextDraw(playerid, 498.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][35], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][35], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][35], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][35], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][35], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][35], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][35], 1);

	tdtuido2[playerid][36] = CreatePlayerTextDraw(playerid, 520.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][36], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][36], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][36], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][36], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][36], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][36], 1);

	tdtuido2[playerid][37] = CreatePlayerTextDraw(playerid, 542.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][37], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][37], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][37], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][37], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][37], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][37], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][37], 1);

	tdtuido2[playerid][38] = CreatePlayerTextDraw(playerid, 564.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][38], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][38], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][38], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][38], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][38], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][38], 1);

	tdtuido2[playerid][39] = CreatePlayerTextDraw(playerid, 586.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][39], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][39], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][39], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][39], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][39], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][39], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][39], 1);

	tdtuido2[playerid][40] = CreatePlayerTextDraw(playerid, 608.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido2[playerid][40], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido2[playerid][40], 1);
	PlayerTextDrawColor(playerid, tdtuido2[playerid][40], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido2[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido2[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido2[playerid][40], 255);
	PlayerTextDrawFont(playerid, tdtuido2[playerid][40], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido2[playerid][40], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido2[playerid][40], 1);

	tdtuido3[playerid][41] = CreatePlayerTextDraw(playerid, 476.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][41], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][41], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][41], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][41], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][41], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][41], 1);

	tdtuido3[playerid][42] = CreatePlayerTextDraw(playerid, 498.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][42], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][42], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][42], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][42], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][42], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][42], 1);

	tdtuido3[playerid][43] = CreatePlayerTextDraw(playerid, 520.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][43], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][43], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][43], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][43], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][43], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][43], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][43], 1);

	tdtuido3[playerid][44] = CreatePlayerTextDraw(playerid, 542.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][44], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][44], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][44], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][44], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][44], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][44], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][44], 1);

	tdtuido3[playerid][45] = CreatePlayerTextDraw(playerid, 564.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][45], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][45], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][45], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][45], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][45], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][45], 1);

	tdtuido3[playerid][46] = CreatePlayerTextDraw(playerid, 586.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][46], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][46], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][46], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][46], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][46], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][46], 1);

	tdtuido3[playerid][47] = CreatePlayerTextDraw(playerid, 608.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][47], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][47], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][47], 255);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][47], 255);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][47], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][47], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido3[playerid][47], 1);

	tdtuido3[playerid][48] = CreatePlayerTextDraw(playerid, 448.000, 121.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][48], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][48], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][48], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][48], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][48], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][48], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][48], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][48], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][48], 348);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][48], 0.000, -33.000, 0.000, 1.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][48], 0, 0);

	tdtuido3[playerid][49] = CreatePlayerTextDraw(playerid, 466.000, 118.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][49], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][49], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][49], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][49], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][49], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][49], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][49], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][49], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][49], 353);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][49], 0.000, -37.000, 0.000, 3.398);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][49], 0, 0);

	tdtuido3[playerid][50] = CreatePlayerTextDraw(playerid, 488.000, 118.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][50], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][50], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][50], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][50], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][50], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][50], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][50], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][50], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][50], 355);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][50], 0.000, -45.000, 0.000, 5.598);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][50], 0, 0);

	tdtuido3[playerid][51] = CreatePlayerTextDraw(playerid, 511.000, 119.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][51], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][51], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][51], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][51], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][51], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][51], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][51], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][51], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][51], 351);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][51], 0.000, -45.000, 0.000, 5.598);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][51], 0, 0);

	tdtuido3[playerid][52] = CreatePlayerTextDraw(playerid, 531.000, 118.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][52], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][52], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][52], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][52], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][52], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][52], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][52], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][52], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][52], 356);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][52], 0.000, -45.000, 0.000, 5.598);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][52], 0, 0);

	tdtuido3[playerid][53] = CreatePlayerTextDraw(playerid, 554.000, 118.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][53], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][53], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][53], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][53], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][53], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][53], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][53], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][53], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][53], 358);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][53], 0.000, -45.000, 0.000, 5.598);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][53], 0, 0);

	tdtuido3[playerid][54] = CreatePlayerTextDraw(playerid, 576.000, 118.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][54], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][54], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][54], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][54], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][54], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][54], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][54], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][54], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][54], 349);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][54], 0.000, -45.000, 0.000, 6.098);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][54], 0, 0);

	tdtuido3[playerid][55] = CreatePlayerTextDraw(playerid, 448.000, 144.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][55], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][55], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][55], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][55], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][55], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][55], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][55], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][55], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][55], 372);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][55], 0.000, -33.000, 0.000, 2.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][55], 0, 0);

	tdtuido3[playerid][56] = CreatePlayerTextDraw(playerid, 467.000, 140.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][56], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][56], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][56], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][56], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][56], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][56], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][56], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][56], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][56], 1650);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][56], 0.000, -33.000, 0.000, 3.098);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][56], 0, 0);

	tdtuido3[playerid][57] = CreatePlayerTextDraw(playerid, 493.000, 147.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][57], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][57], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][57], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][57], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][57], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][57], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][57], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][57], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][57], 361);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][57], 65.000, -26.000, -330.000, 6.198);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][57], 0, 0);

	tdtuido3[playerid][58] = CreatePlayerTextDraw(playerid, 517.000, 148.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][58], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][58], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][58], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][58], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][58], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][58], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][58], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][58], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][58], 341);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][58], -77.000, -26.000, 329.000, 4.797);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][58], 0, 0);

	tdtuido3[playerid][59] = CreatePlayerTextDraw(playerid, 522.000, 136.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][59], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][59], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][59], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][59], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][59], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][59], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][59], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][59], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][59], 1207);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][59], 130.000, 372.000, -75.000, 2.999);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][59], 0, 0);

	tdtuido3[playerid][60] = CreatePlayerTextDraw(playerid, 549.000, 138.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido3[playerid][60], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido3[playerid][60], 1);
	PlayerTextDrawColor(playerid, tdtuido3[playerid][60], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido3[playerid][60], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido3[playerid][60], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido3[playerid][60], 0);
	PlayerTextDrawFont(playerid, tdtuido3[playerid][60], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido3[playerid][60], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido3[playerid][60], 1212);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido3[playerid][60], 65.000, -26.000, -330.000, 3.299);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido3[playerid][60], 0, 0);

	tdtuido4[playerid][61] = CreatePlayerTextDraw(playerid, 568.000, 133.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][61], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][61], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][61], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][61], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][61], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][61], 0);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][61], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][61], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido4[playerid][61], 19473);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido4[playerid][61], 65.000, -26.000, -330.000, 1.500);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido4[playerid][61], 0, 0);

	tdtuido4[playerid][62] = CreatePlayerTextDraw(playerid, 441.000, 165.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][62], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][62], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][62], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][62], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][62], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][62], 0);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][62], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][62], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido4[playerid][62], 19844);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido4[playerid][62], 65.000, -26.000, -330.000, 3.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido4[playerid][62], 0, 0);

	tdtuido4[playerid][63] = CreatePlayerTextDraw(playerid, 463.000, 165.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][63], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][63], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][63], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][63], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][63], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][63], 0);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][63], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][63], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido4[playerid][63], 19843);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido4[playerid][63], 65.000, -26.000, -330.000, 3.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido4[playerid][63], 0, 0);

	tdtuido4[playerid][64] = CreatePlayerTextDraw(playerid, 486.000, 165.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][64], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][64], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][64], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][64], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][64], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][64], 0);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][64], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][64], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido4[playerid][64], 19846);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido4[playerid][64], 65.000, -26.000, -330.000, 3.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido4[playerid][64], 0, 0);

	tdtuido4[playerid][65] = CreatePlayerTextDraw(playerid, 505.000, 162.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][65], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][65], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][65], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][65], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][65], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][65], 0);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][65], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][65], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido4[playerid][65], 19791);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido4[playerid][65], 65.000, -26.000, -330.000, 3.799);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido4[playerid][65], 0, 0);

	tdtuido4[playerid][66] = CreatePlayerTextDraw(playerid, 476.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][66], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][66], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][66], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][66], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][66], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][66], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][66], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][66], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][66], 1);

	tdtuido4[playerid][67] = CreatePlayerTextDraw(playerid, 498.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][67], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][67], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][67], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][67], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][67], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][67], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][67], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][67], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][67], 1);

	tdtuido4[playerid][68] = CreatePlayerTextDraw(playerid, 520.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][68], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][68], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][68], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][68], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][68], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][68], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][68], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][68], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][68], 1);

	tdtuido4[playerid][69] = CreatePlayerTextDraw(playerid, 542.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][69], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][69], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][69], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][69], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][69], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][69], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][69], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][69], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][69], 1);

	tdtuido4[playerid][70] = CreatePlayerTextDraw(playerid, 564.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][70], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][70], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][70], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][70], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][70], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][70], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][70], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][70], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][70], 1);

	tdtuido4[playerid][71] = CreatePlayerTextDraw(playerid, 586.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][71], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][71], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][71], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][71], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][71], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][71], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][71], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][71], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][71], 1);

	tdtuido4[playerid][72] = CreatePlayerTextDraw(playerid, 608.000, 145.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][72], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][72], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][72], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][72], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][72], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][72], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][72], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][72], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][72], 1);

	tdtuido4[playerid][73] = CreatePlayerTextDraw(playerid, 476.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][73], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][73], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][73], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][73], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][73], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][73], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][73], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][73], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][73], 1);

	tdtuido4[playerid][74] = CreatePlayerTextDraw(playerid, 498.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][74], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][74], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][74], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][74], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][74], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][74], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][74], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][74], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][74], 1);

	tdtuido4[playerid][75] = CreatePlayerTextDraw(playerid, 564.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][75], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][75], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][75], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][75], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][75], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][75], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][75], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][75], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][75], 1);

	tdtuido4[playerid][76] = CreatePlayerTextDraw(playerid, 542.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][76], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][76], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][76], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][76], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][76], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][76], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][76], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][76], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][76], 1);

	tdtuido4[playerid][77] = CreatePlayerTextDraw(playerid, 564.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][77], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][77], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][77], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][77], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][77], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][77], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][77], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][77], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][77], 1);

	tdtuido4[playerid][78] = CreatePlayerTextDraw(playerid, 586.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][78], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][78], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][78], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][78], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][78], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][78], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][78], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][78], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][78], 1);

	tdtuido4[playerid][79] = CreatePlayerTextDraw(playerid, 608.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][79], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][79], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][79], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][79], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][79], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][79], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][79], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][79], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][79], 1);

	tdtuido4[playerid][80] = CreatePlayerTextDraw(playerid, 476.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido4[playerid][80], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido4[playerid][80], 1);
	PlayerTextDrawColor(playerid, tdtuido4[playerid][80], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido4[playerid][80], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido4[playerid][80], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido4[playerid][80], 255);
	PlayerTextDrawFont(playerid, tdtuido4[playerid][80], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido4[playerid][80], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido4[playerid][80], 1);

	tdtuido5[playerid][81] = CreatePlayerTextDraw(playerid, 498.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][81], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][81], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][81], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][81], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][81], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][81], 1);

	tdtuido5[playerid][82] = CreatePlayerTextDraw(playerid, 520.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][82], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][82], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][82], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][82], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][82], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][82], 1);

	tdtuido5[playerid][83] = CreatePlayerTextDraw(playerid, 542.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][83], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][83], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][83], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][83], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][83], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][83], 1);

	tdtuido5[playerid][84] = CreatePlayerTextDraw(playerid, 564.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][84], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][84], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][84], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][84], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][84], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][84], 1);

	tdtuido5[playerid][85] = CreatePlayerTextDraw(playerid, 586.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][85], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][85], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][85], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][85], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][85], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][85], 1);

	tdtuido5[playerid][86] = CreatePlayerTextDraw(playerid, 608.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][86], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][86], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][86], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][86], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][86], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][86], 1);

	tdtuido5[playerid][87] = CreatePlayerTextDraw(playerid, 476.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][87], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][87], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][87], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][87], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][87], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][87], 1);

	tdtuido5[playerid][88] = CreatePlayerTextDraw(playerid, 498.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][88], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][88], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][88], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][88], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][88], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][88], 1);

	tdtuido5[playerid][89] = CreatePlayerTextDraw(playerid, 520.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][89], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][89], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][89], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][89], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][89], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][89], 1);

	tdtuido5[playerid][90] = CreatePlayerTextDraw(playerid, 542.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][90], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][90], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][90], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][90], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][90], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][90], 1);

	tdtuido5[playerid][91] = CreatePlayerTextDraw(playerid, 564.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][91], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][91], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][91], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][91], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][91], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][91], 1);

	tdtuido5[playerid][92] = CreatePlayerTextDraw(playerid, 586.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][92], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][92], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][92], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][92], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][92], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][92], 1);

	tdtuido5[playerid][93] = CreatePlayerTextDraw(playerid, 608.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][93], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][93], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][93], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][93], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][93], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][93], 1);

	tdtuido5[playerid][94] = CreatePlayerTextDraw(playerid, 476.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][94], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][94], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][94], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][94], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][94], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][94], 1);

	tdtuido5[playerid][95] = CreatePlayerTextDraw(playerid, 498.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][95], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][95], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][95], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][95], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][95], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][95], 1);

	tdtuido5[playerid][96] = CreatePlayerTextDraw(playerid, 520.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][96], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][96], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][96], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][96], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][96], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][96], 1);

	tdtuido5[playerid][97] = CreatePlayerTextDraw(playerid, 542.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][97], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][97], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][97], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][97], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][97], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][97], 1);

	tdtuido5[playerid][98] = CreatePlayerTextDraw(playerid, 564.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][98], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][98], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][98], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][98], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][98], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][98], 1);

	tdtuido5[playerid][99] = CreatePlayerTextDraw(playerid, 586.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][99], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][99], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][99], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][99], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][99], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][99], 1);

	tdtuido5[playerid][100] = CreatePlayerTextDraw(playerid, 608.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][100], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][100], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][100], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][100], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][100], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][100], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][100], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][100], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][100], 1);

	tdtuido5[playerid][81] = CreatePlayerTextDraw(playerid, 498.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][81], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][81], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][81], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][81], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][81], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][81], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][81], 1);

	tdtuido5[playerid][82] = CreatePlayerTextDraw(playerid, 520.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][82], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][82], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][82], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][82], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][82], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][82], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][82], 1);

	tdtuido5[playerid][83] = CreatePlayerTextDraw(playerid, 542.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][83], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][83], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][83], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][83], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][83], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][83], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][83], 1);

	tdtuido5[playerid][84] = CreatePlayerTextDraw(playerid, 564.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][84], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][84], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][84], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][84], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][84], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][84], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][84], 1);

	tdtuido5[playerid][85] = CreatePlayerTextDraw(playerid, 586.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][85], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][85], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][85], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][85], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][85], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][85], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][85], 1);

	tdtuido5[playerid][86] = CreatePlayerTextDraw(playerid, 608.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][86], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][86], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][86], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][86], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][86], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][86], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][86], 1);

	tdtuido5[playerid][87] = CreatePlayerTextDraw(playerid, 476.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][87], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][87], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][87], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][87], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][87], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][87], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][87], 1);

	tdtuido5[playerid][88] = CreatePlayerTextDraw(playerid, 498.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][88], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][88], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][88], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][88], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][88], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][88], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][88], 1);

	tdtuido5[playerid][89] = CreatePlayerTextDraw(playerid, 520.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][89], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][89], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][89], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][89], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][89], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][89], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][89], 1);

	tdtuido5[playerid][90] = CreatePlayerTextDraw(playerid, 542.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][90], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][90], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][90], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][90], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][90], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][90], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][90], 1);

	tdtuido5[playerid][91] = CreatePlayerTextDraw(playerid, 564.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][91], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][91], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][91], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][91], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][91], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][91], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][91], 1);

	tdtuido5[playerid][92] = CreatePlayerTextDraw(playerid, 586.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][92], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][92], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][92], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][92], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][92], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][92], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][92], 1);

	tdtuido5[playerid][93] = CreatePlayerTextDraw(playerid, 608.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][93], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][93], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][93], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][93], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][93], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][93], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][93], 1);

	tdtuido5[playerid][94] = CreatePlayerTextDraw(playerid, 476.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][94], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][94], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][94], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][94], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][94], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][94], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][94], 1);

	tdtuido5[playerid][95] = CreatePlayerTextDraw(playerid, 498.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][95], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][95], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][95], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][95], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][95], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][95], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][95], 1);

	tdtuido5[playerid][96] = CreatePlayerTextDraw(playerid, 520.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][96], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][96], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][96], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][96], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][96], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][96], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][96], 1);

	tdtuido5[playerid][97] = CreatePlayerTextDraw(playerid, 542.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][97], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][97], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][97], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][97], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][97], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][97], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][97], 1);

	tdtuido5[playerid][98] = CreatePlayerTextDraw(playerid, 564.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][98], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][98], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][98], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][98], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][98], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][98], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][98], 1);

	tdtuido5[playerid][99] = CreatePlayerTextDraw(playerid, 586.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][99], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][99], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][99], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][99], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][99], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][99], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][99], 1);

	tdtuido5[playerid][100] = CreatePlayerTextDraw(playerid, 608.000, 249.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido5[playerid][100], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido5[playerid][100], 1);
	PlayerTextDrawColor(playerid, tdtuido5[playerid][100], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido5[playerid][100], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido5[playerid][100], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido5[playerid][100], 255);
	PlayerTextDrawFont(playerid, tdtuido5[playerid][100], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido5[playerid][100], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido5[playerid][100], 1);

	tdtuido6[playerid][101] = CreatePlayerTextDraw(playerid, 520.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][101], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][101], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][101], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][101], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][101], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][101], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][101], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][101], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][101], 1);

	tdtuido6[playerid][102] = CreatePlayerTextDraw(playerid, 493.000, 147.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][102], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][102], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][102], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][102], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][102], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][102], 0);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][102], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][102], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido6[playerid][102], 361);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido6[playerid][102], 65.000, -26.000, -330.000, 6.197);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido6[playerid][102], 0, 0);

	tdtuido6[playerid][103] = CreatePlayerTextDraw(playerid, 520.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][103], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][103], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][103], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][103], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][103], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][103], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][103], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][103], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][103], 1);

	tdtuido6[playerid][104] = CreatePlayerTextDraw(playerid, 522.000, 136.000, "_");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][104], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][104], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][104], -1);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][104], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][104], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][104], 0);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][104], 5);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][104], 0);
	PlayerTextDrawSetPreviewModel(playerid, tdtuido6[playerid][104], 1207);
	PlayerTextDrawSetPreviewRot(playerid, tdtuido6[playerid][104], 130.000, 372.000, -75.000, 2.999);
	PlayerTextDrawSetPreviewVehCol(playerid, tdtuido6[playerid][104], 0, 0);

	tdtuido6[playerid][105] = CreatePlayerTextDraw(playerid, 564.000, 171.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][105], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][105], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][105], 0);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][105], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][105], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][105], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][105], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][105], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][105], 1);

	tdtuido6[playerid][106] = CreatePlayerTextDraw(playerid, 564.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][106], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][106], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][106], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][106], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][106], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][106], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][106], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][106], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][106], 1);

	tdtuido6[playerid][107] = CreatePlayerTextDraw(playerid, 476.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][107], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][107], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][107], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][107], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][107], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][107], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][107], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][107], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][107], 1);

	tdtuido6[playerid][108] = CreatePlayerTextDraw(playerid, 520.000, 223.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, tdtuido6[playerid][108], 21.000, 25.000);
	PlayerTextDrawAlignment(playerid, tdtuido6[playerid][108], 1);
	PlayerTextDrawColor(playerid, tdtuido6[playerid][108], -1061109505);
	PlayerTextDrawSetShadow(playerid, tdtuido6[playerid][108], 0);
	PlayerTextDrawSetOutline(playerid, tdtuido6[playerid][108], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtuido6[playerid][108], 255);
	PlayerTextDrawFont(playerid, tdtuido6[playerid][108], 4);
	PlayerTextDrawSetProportional(playerid, tdtuido6[playerid][108], 1);
	PlayerTextDrawSetSelectable(playerid, tdtuido6[playerid][108], 1);

	Loading[playerid][0] = CreatePlayerTextDraw(playerid, 221.000, 249.000, "mdl-2001:load");
	PlayerTextDrawTextSize(playerid, Loading[playerid][0], 210.000, 20.000);
	PlayerTextDrawAlignment(playerid, Loading[playerid][0], 1);
	PlayerTextDrawColor(playerid, Loading[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, Loading[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Loading[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Loading[playerid][0], 255);
	PlayerTextDrawFont(playerid, Loading[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, Loading[playerid][0], 1);

	Loading[playerid][2] = CreatePlayerTextDraw(playerid, 197.000, 197.000, "mdl-2001:gvrp");
	PlayerTextDrawTextSize(playerid, Loading[playerid][2], 223.000, 48.000);
	PlayerTextDrawAlignment(playerid, Loading[playerid][2], 1);
	PlayerTextDrawColor(playerid, Loading[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, Loading[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Loading[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Loading[playerid][2], 255);
	PlayerTextDrawFont(playerid, Loading[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, Loading[playerid][2], 1);

	Loading[playerid][1] = CreatePlayerTextDraw(playerid, 224.000, 241.000, "mdl-2001:load5");
	PlayerTextDrawTextSize(playerid, Loading[playerid][1], 210.000, 23.000);
	PlayerTextDrawAlignment(playerid, Loading[playerid][1], 1);
	PlayerTextDrawColor(playerid, Loading[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, Loading[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Loading[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Loading[playerid][1], 255);
	PlayerTextDrawFont(playerid, Loading[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, Loading[playerid][1], 1);

	LoginMobi[playerid][0] = CreatePlayerTextDraw(playerid, 241.000, 162.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][0], 174.000, 84.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][0], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][0], -2147483393);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][0], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][0], 1);

	LoginMobi[playerid][1] = CreatePlayerTextDraw(playerid, 244.000, 165.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][1], 168.000, 77.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][1], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][1], 1768516095);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][1], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][1], 1);

	LoginMobi[playerid][2] = CreatePlayerTextDraw(playerid, 370.000, 245.000, "Dang nhap");
	PlayerTextDrawLetterSize(playerid, LoginMobi[playerid][2], 0.250, 1.699);
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][2], 423.000, 14.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][2], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][2], -1306385665);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, LoginMobi[playerid][2], 1);

	LoginMobi[playerid][3] = CreatePlayerTextDraw(playerid, 247.000, 179.000, "HUD:radar_gangB");
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][3], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][3], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][3], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][3], 1);

	LoginMobi[playerid][4] = CreatePlayerTextDraw(playerid, 264.000, 180.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][4], 145.000, 17.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][4], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][4], -1061109505);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][4], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][4], 1);

	LoginMobi[playerid][5] = CreatePlayerTextDraw(playerid, 264.000, 211.000, "LD_SPAC:white"); //Nhap mat khau
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][5], 145.000, 17.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][5], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][5], -1061109505);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][5], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, LoginMobi[playerid][5], 1);

	LoginMobi[playerid][6] = CreatePlayerTextDraw(playerid, 246.000, 209.000, "HUD:arrow");
	PlayerTextDrawTextSize(playerid, LoginMobi[playerid][6], 18.000, 19.000);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][6], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][6], 255);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][6], 1);

	LoginMobi[playerid][7] = CreatePlayerTextDraw(playerid, 268.000, 182.000, "Master Vu");
	PlayerTextDrawLetterSize(playerid, LoginMobi[playerid][7], 0.290, 1.299);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][7], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][7], -2139062017);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][7], 1);

	LoginMobi[playerid][8] = CreatePlayerTextDraw(playerid, 268.000, 213.000, "");
	PlayerTextDrawLetterSize(playerid, LoginMobi[playerid][8], 0.290, 1.299);
	PlayerTextDrawAlignment(playerid, LoginMobi[playerid][8], 1);
	PlayerTextDrawColor(playerid, LoginMobi[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LoginMobi[playerid][8], 1);
	PlayerTextDrawSetOutline(playerid, LoginMobi[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, LoginMobi[playerid][8], -2139062017);
	PlayerTextDrawFont(playerid, LoginMobi[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, LoginMobi[playerid][8], 1);

	RegisterMobi[playerid][0] = CreatePlayerTextDraw(playerid, 241.000, 162.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][0], 174.000, 117.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][0], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][0], -2147483393);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][0], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][0], 1);

	RegisterMobi[playerid][1] = CreatePlayerTextDraw(playerid, 244.000, 165.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][1], 168.000, 108.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][1], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][1], 1768516095);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][1], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][1], 1);

	RegisterMobi[playerid][2] = CreatePlayerTextDraw(playerid, 373.000, 275.000, "Dang ky");
	PlayerTextDrawLetterSize(playerid, RegisterMobi[playerid][2], 0.250, 1.699);
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][2], 423.000, 14.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][2], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][2], -1306385665);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterMobi[playerid][2], 1);

	RegisterMobi[playerid][3] = CreatePlayerTextDraw(playerid, 247.000, 179.000, "HUD:radar_gangB");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][3], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][3], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][3], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][3], 1);

	RegisterMobi[playerid][4] = CreatePlayerTextDraw(playerid, 264.000, 180.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][4], 145.000, 17.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][4], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][4], -1061109505);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][4], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][4], 1);

	RegisterMobi[playerid][5] = CreatePlayerTextDraw(playerid, 264.000, 211.000, "LD_SPAC:white");//Mat khau
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][5], 145.000, 17.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][5], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][5], -1061109505);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][5], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterMobi[playerid][5], 1);

	RegisterMobi[playerid][6] = CreatePlayerTextDraw(playerid, 246.000, 209.000, "HUD:arrow");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][6], 18.000, 19.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][6], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][6], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][6], 1);

	RegisterMobi[playerid][7] = CreatePlayerTextDraw(playerid, 264.000, 241.000, "LD_SPAC:white");//Email
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][7], 145.000, 17.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][7], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][7], -1061109505);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][7], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterMobi[playerid][7], 1);

	RegisterMobi[playerid][8] = CreatePlayerTextDraw(playerid, 247.000, 242.000, "LD_CHAT:goodcha");
	PlayerTextDrawTextSize(playerid, RegisterMobi[playerid][8], 15.000, 16.000);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][8], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][8], 255);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][8], 1);

	RegisterMobi[playerid][9] = CreatePlayerTextDraw(playerid, 268.000, 182.000, "Master_Vu");//Ten
	PlayerTextDrawLetterSize(playerid, RegisterMobi[playerid][9], 0.290, 1.299);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][9], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][9], 1);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][9], 1);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][9], -2139062017);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][9], 1);

	RegisterMobi[playerid][10] = CreatePlayerTextDraw(playerid, 268.000, 213.000, "");//Matkhau
	PlayerTextDrawLetterSize(playerid, RegisterMobi[playerid][10], 0.290, 1.299);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][10], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][10], 1);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][10], -2139062017);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][10], 1);

	RegisterMobi[playerid][11] = CreatePlayerTextDraw(playerid, 268.000, 243.000, "");//Email
	PlayerTextDrawLetterSize(playerid, RegisterMobi[playerid][11], 0.290, 1.299);
	PlayerTextDrawAlignment(playerid, RegisterMobi[playerid][11], 1);
	PlayerTextDrawColor(playerid, RegisterMobi[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, RegisterMobi[playerid][11], 1);
	PlayerTextDrawSetOutline(playerid, RegisterMobi[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, RegisterMobi[playerid][11], -2139062017);
	PlayerTextDrawFont(playerid, RegisterMobi[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, RegisterMobi[playerid][11], 1);

	LoginPC[playerid][0] = CreatePlayerTextDraw(playerid, 179.000, 106.000, "mdl-2002:mainLG");
	PlayerTextDrawTextSize(playerid, LoginPC[playerid][0], 289.000, 206.000);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][0], 1);
	PlayerTextDrawColor(playerid, LoginPC[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][0], 255);
	PlayerTextDrawFont(playerid, LoginPC[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][0], 1);

	LoginPC[playerid][1] = CreatePlayerTextDraw(playerid, 202.000, 175.000, "mdl-2002:username");
	PlayerTextDrawTextSize(playerid, LoginPC[playerid][1], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][1], 1);
	PlayerTextDrawColor(playerid, LoginPC[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][1], 255);
	PlayerTextDrawFont(playerid, LoginPC[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPC[playerid][1], 1);

	LoginPC[playerid][2] = CreatePlayerTextDraw(playerid, 202.000, 203.000, "mdl-2002:password");
	PlayerTextDrawTextSize(playerid, LoginPC[playerid][2], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][2], 1);
	PlayerTextDrawColor(playerid, LoginPC[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][2], 255);
	PlayerTextDrawFont(playerid, LoginPC[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPC[playerid][2], 1);

	LoginPC[playerid][3] = CreatePlayerTextDraw(playerid, 202.000, 234.000, "mdl-2002:signup");
	PlayerTextDrawTextSize(playerid, LoginPC[playerid][3], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][3], 1);
	PlayerTextDrawColor(playerid, LoginPC[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][3], 255);
	PlayerTextDrawFont(playerid, LoginPC[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, LoginPC[playerid][3], 1);

	LoginPC[playerid][4] = CreatePlayerTextDraw(playerid, 262.000, 182.000, "Nguyen_Hoang_Vu");
	PlayerTextDrawLetterSize(playerid, LoginPC[playerid][4], 0.209, 0.898);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][4], 2);
	PlayerTextDrawColor(playerid, LoginPC[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][4], 150);
	PlayerTextDrawFont(playerid, LoginPC[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][4], 1);

	LoginPC[playerid][5] = CreatePlayerTextDraw(playerid, 262.000, 209.000, "");
	PlayerTextDrawLetterSize(playerid, LoginPC[playerid][5], 0.209, 0.898);
	PlayerTextDrawAlignment(playerid, LoginPC[playerid][5], 2);
	PlayerTextDrawColor(playerid, LoginPC[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, LoginPC[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, LoginPC[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LoginPC[playerid][5], 150);
	PlayerTextDrawFont(playerid, LoginPC[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, LoginPC[playerid][5], 1);
	
	RegisterPC[playerid][0] = CreatePlayerTextDraw(playerid, 179.000, 106.000, "mdl-2002:mainLG");
	PlayerTextDrawTextSize(playerid, RegisterPC[playerid][0], 289.000, 206.000);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][0], 1);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][0], 255);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][0], 1);

	RegisterPC[playerid][1] = CreatePlayerTextDraw(playerid, 202.000, 175.000, "mdl-2002:username");
	PlayerTextDrawTextSize(playerid, RegisterPC[playerid][1], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][1], 1);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][1], 255);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPC[playerid][1], 1);

	RegisterPC[playerid][2] = CreatePlayerTextDraw(playerid, 202.000, 203.000, "mdl-2002:password");
	PlayerTextDrawTextSize(playerid, RegisterPC[playerid][2], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][2], 1);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][2], 255);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPC[playerid][2], 1);

	RegisterPC[playerid][3] = CreatePlayerTextDraw(playerid, 202.000, 232.000, "mdl-2002:mail");
	PlayerTextDrawTextSize(playerid, RegisterPC[playerid][3], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][3], 1);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][3], 255);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPC[playerid][3], 1);

	RegisterPC[playerid][4] = CreatePlayerTextDraw(playerid, 202.000, 261.000, "mdl-2002:signup");
	PlayerTextDrawTextSize(playerid, RegisterPC[playerid][4], 106.000, 22.000);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][4], 1);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][4], 255);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterPC[playerid][4], 1);

	RegisterPC[playerid][5] = CreatePlayerTextDraw(playerid, 262.000, 182.000, "Nguyen_Hoang_Vu");
	PlayerTextDrawLetterSize(playerid, RegisterPC[playerid][5], 0.210, 0.899);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][5], 2);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][5], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][5], 150);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][5], 1);

	RegisterPC[playerid][6] = CreatePlayerTextDraw(playerid, 262.000, 209.000, "");
	PlayerTextDrawLetterSize(playerid, RegisterPC[playerid][6], 0.210, 0.899);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][6], 2);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][6], 150);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][6], 1);

	RegisterPC[playerid][7] = CreatePlayerTextDraw(playerid, 262.000, 239.000, "");
	PlayerTextDrawLetterSize(playerid, RegisterPC[playerid][7], 0.210, 0.899);
	PlayerTextDrawAlignment(playerid, RegisterPC[playerid][7], 2);
	PlayerTextDrawColor(playerid, RegisterPC[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, RegisterPC[playerid][7], 1);
	PlayerTextDrawSetOutline(playerid, RegisterPC[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, RegisterPC[playerid][7], 150);
	PlayerTextDrawFont(playerid, RegisterPC[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, RegisterPC[playerid][7], 1);

	MenuPC[playerid][0] = CreatePlayerTextDraw(playerid, 75.000, 133.000, "mdl-2003:shop");
	PlayerTextDrawTextSize(playerid, MenuPC[playerid][0], 107.000, 66.000);
	PlayerTextDrawAlignment(playerid, MenuPC[playerid][0], 1);
	PlayerTextDrawColor(playerid, MenuPC[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, MenuPC[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, MenuPC[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, MenuPC[playerid][0], 255);
	PlayerTextDrawFont(playerid, MenuPC[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, MenuPC[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, MenuPC[playerid][0], 1);

	MenuPC[playerid][1] = CreatePlayerTextDraw(playerid, 75.000, 192.000, "mdl-2003:update");
	PlayerTextDrawTextSize(playerid, MenuPC[playerid][1], 107.000, 66.000);
	PlayerTextDrawAlignment(playerid, MenuPC[playerid][1], 1);
	PlayerTextDrawColor(playerid, MenuPC[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, MenuPC[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, MenuPC[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, MenuPC[playerid][1], 255);
	PlayerTextDrawFont(playerid, MenuPC[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, MenuPC[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, MenuPC[playerid][1], 1);

	MenuPC[playerid][2] = CreatePlayerTextDraw(playerid, 75.000, 251.000, "mdl-2003:event");
	PlayerTextDrawTextSize(playerid, MenuPC[playerid][2], 107.000, 66.000);
	PlayerTextDrawAlignment(playerid, MenuPC[playerid][2], 1);
	PlayerTextDrawColor(playerid, MenuPC[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, MenuPC[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, MenuPC[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, MenuPC[playerid][2], 255);
	PlayerTextDrawFont(playerid, MenuPC[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, MenuPC[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, MenuPC[playerid][2], 1);

	MenuPC[playerid][3] = CreatePlayerTextDraw(playerid, 75.000, 310.000, "mdl-2003:credits");
	PlayerTextDrawTextSize(playerid, MenuPC[playerid][3], 107.000, 66.000);
	PlayerTextDrawAlignment(playerid, MenuPC[playerid][3], 1);
	PlayerTextDrawColor(playerid, MenuPC[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, MenuPC[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, MenuPC[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, MenuPC[playerid][3], 255);
	PlayerTextDrawFont(playerid, MenuPC[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, MenuPC[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, MenuPC[playerid][3], 1);

	MenuPC[playerid][4] = CreatePlayerTextDraw(playerid, 167.000, 378.000, "mdl-2003:start");
	PlayerTextDrawTextSize(playerid, MenuPC[playerid][4], 81.000, 20.000);
	PlayerTextDrawAlignment(playerid, MenuPC[playerid][4], 1);
	PlayerTextDrawColor(playerid, MenuPC[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, MenuPC[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, MenuPC[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, MenuPC[playerid][4], 255);
	PlayerTextDrawFont(playerid, MenuPC[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, MenuPC[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, MenuPC[playerid][4], 1);

	CreditsMobi[playerid][0] = CreatePlayerTextDraw(playerid, 252.000, 141.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, CreditsMobi[playerid][0], 340.000, 223.000);
	PlayerTextDrawAlignment(playerid, CreditsMobi[playerid][0], 1);
	PlayerTextDrawColor(playerid, CreditsMobi[playerid][0], -376014081);
	PlayerTextDrawSetShadow(playerid, CreditsMobi[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, CreditsMobi[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, CreditsMobi[playerid][0], 255);
	PlayerTextDrawFont(playerid, CreditsMobi[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, CreditsMobi[playerid][0], 1);

	CreditsMobi[playerid][1] = CreatePlayerTextDraw(playerid, 258.000, 147.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, CreditsMobi[playerid][1], 329.000, 212.000);
	PlayerTextDrawAlignment(playerid, CreditsMobi[playerid][1], 1);
	PlayerTextDrawColor(playerid, CreditsMobi[playerid][1], 1768516095);
	PlayerTextDrawSetShadow(playerid, CreditsMobi[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, CreditsMobi[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, CreditsMobi[playerid][1], 255);
	PlayerTextDrawFont(playerid, CreditsMobi[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, CreditsMobi[playerid][1], 1);

	CreditsMobi[playerid][2] = CreatePlayerTextDraw(playerid, 363.000, 133.000, "Credits Server GV:RP");
	PlayerTextDrawLetterSize(playerid, CreditsMobi[playerid][2], 0.379, 2.199);
	PlayerTextDrawAlignment(playerid, CreditsMobi[playerid][2], 1);
	PlayerTextDrawColor(playerid, CreditsMobi[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, CreditsMobi[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, CreditsMobi[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, CreditsMobi[playerid][2], 150);
	PlayerTextDrawFont(playerid, CreditsMobi[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, CreditsMobi[playerid][2], 1);

	CreditsMobi[playerid][3] = CreatePlayerTextDraw(playerid, 270.000, 170.000, "Owner: Tam    Script: Jake    Manage: Tom    Co-Founder: Pu_Nat");
	PlayerTextDrawLetterSize(playerid, CreditsMobi[playerid][3], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, CreditsMobi[playerid][3], 578.000, 0.000);
	PlayerTextDrawAlignment(playerid, CreditsMobi[playerid][3], 1);
	PlayerTextDrawColor(playerid, CreditsMobi[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, CreditsMobi[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, CreditsMobi[playerid][3], 150);
	PlayerTextDrawSetShadow(playerid, CreditsMobi[playerid][3], 1);
	PlayerTextDrawSetOutline(playerid, CreditsMobi[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, CreditsMobi[playerid][3], 150);
	PlayerTextDrawFont(playerid, CreditsMobi[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, CreditsMobi[playerid][3], 1);

	ShopPC[playerid][5] = CreatePlayerTextDraw(playerid, 220.000, 107.000, "mdl-2004:bg");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][5], 406.000, 264.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][5], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][5], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][5], 1);

	ShopPC[playerid][6] = CreatePlayerTextDraw(playerid, 237.000, 160.000, "mdl-2004:gvip");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][6], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][6], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][6], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][6], 1);

	ShopPC[playerid][7] = CreatePlayerTextDraw(playerid, 302.000, 160.000, "mdl-2004:svip");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][7], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][7], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][7], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][7], 1);

	ShopPC[playerid][8] = CreatePlayerTextDraw(playerid, 371.000, 160.000, "mdl-2004:house");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][8], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][8], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][8], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][8], 1);

	ShopPC[playerid][9] = CreatePlayerTextDraw(playerid, 442.000, 162.000, "mdl-2004:car");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][9], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][9], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][9], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][9], 1);

	ShopPC[playerid][10] = CreatePlayerTextDraw(playerid, 234.000, 262.000, "mdl-2004:dollar");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][10], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][10], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][10], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][10], 1);

	ShopPC[playerid][11] = CreatePlayerTextDraw(playerid, 300.000, 262.000, "mdl-2004:rimkit");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][11], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][11], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][11], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][11], 1);

	ShopPC[playerid][12] = CreatePlayerTextDraw(playerid, 370.000, 262.000, "mdl-2004:mk");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][12], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][12], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][12], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][12], 1);

	ShopPC[playerid][13] = CreatePlayerTextDraw(playerid, 435.000, 262.000, "mdl-2004:mkvip");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][13], 58.000, 80.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][13], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][13], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][13], 1);

	ShopPC[playerid][14] = CreatePlayerTextDraw(playerid, 515.000, 160.000, "");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][14], 99.000, 141.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][14], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][14], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][14], 1);

	ShopPC[playerid][15] = CreatePlayerTextDraw(playerid, 524.000, 320.000, "mdl-2004:mua");
	PlayerTextDrawTextSize(playerid, ShopPC[playerid][15], 69.000, 31.000);
	PlayerTextDrawAlignment(playerid, ShopPC[playerid][15], 1);
	PlayerTextDrawColor(playerid, ShopPC[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, ShopPC[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, ShopPC[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, ShopPC[playerid][15], 255);
	PlayerTextDrawFont(playerid, ShopPC[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, ShopPC[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, ShopPC[playerid][15], 1);

	Event[playerid][5] = CreatePlayerTextDraw(playerid, 243.000, 118.000, "mdl-2005:event1");
	PlayerTextDrawTextSize(playerid, Event[playerid][5], 388.000, 256.000);
	PlayerTextDrawAlignment(playerid, Event[playerid][5], 1);
	PlayerTextDrawColor(playerid, Event[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, Event[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Event[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Event[playerid][5], 255);
	PlayerTextDrawFont(playerid, Event[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, Event[playerid][5], 1);

	Event[playerid][6] = CreatePlayerTextDraw(playerid, 317.000, 371.000, "mdl-2004:next");
	PlayerTextDrawTextSize(playerid, Event[playerid][6], 28.000, 16.000);
	PlayerTextDrawAlignment(playerid, Event[playerid][6], 1);
	PlayerTextDrawColor(playerid, Event[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, Event[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Event[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Event[playerid][6], 255);
	PlayerTextDrawFont(playerid, Event[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, Event[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, Event[playerid][6], 1);

	Event[playerid][7] = CreatePlayerTextDraw(playerid, 360.000, 371.000, "mdl-2004:back");
	PlayerTextDrawTextSize(playerid, Event[playerid][7], 28.000, 16.000);
	PlayerTextDrawAlignment(playerid, Event[playerid][7], 1);
	PlayerTextDrawColor(playerid, Event[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, Event[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, Event[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, Event[playerid][7], 255);
	PlayerTextDrawFont(playerid, Event[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, Event[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, Event[playerid][7], 1);
}

stock CreatePlayerTextDraws(playerid)
{
	
	Lumber[playerid][0] = CreatePlayerTextDraw(playerid, 501.000, 154.000, "");
	PlayerTextDrawLetterSize(playerid, Lumber[playerid][0], 0.190, 0.999);
	PlayerTextDrawTextSize(playerid, Lumber[playerid][0], 620.000, 88.000);
	PlayerTextDrawAlignment(playerid, Lumber[playerid][0], 1);
	PlayerTextDrawColor(playerid, Lumber[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, Lumber[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Lumber[playerid][0], 150);
	PlayerTextDrawSetShadow(playerid, Lumber[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, Lumber[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, Lumber[playerid][0], -849584897);
	PlayerTextDrawFont(playerid, Lumber[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, Lumber[playerid][0], 1);

	Lumber[playerid][1] = CreatePlayerTextDraw(playerid, 488.000, 143.000, "HUD:radar_gangG");
	PlayerTextDrawTextSize(playerid, Lumber[playerid][1], 15.000, 17.000);
	PlayerTextDrawAlignment(playerid, Lumber[playerid][1], 1);
	PlayerTextDrawColor(playerid, Lumber[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, Lumber[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Lumber[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Lumber[playerid][1], 255);
	PlayerTextDrawFont(playerid, Lumber[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, Lumber[playerid][1], 1);
	
	//

	//taixi
	PlayerInfo[playerid][pTextdraws][2] = CreatePlayerTextDraw(playerid, 326.250000, 337.112670, "~r~Footer text.");
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTextdraws][2], 0.240998, 1.267497);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTextdraws][2], 2);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTextdraws][2], -1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTextdraws][2], 0);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTextdraws][2], 1);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTextdraws][2], 255);
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTextdraws][2], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTextdraws][2], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTextdraws][2], 0);

	// Notice Box Text.
	PlayerInfo[playerid][pTextdraws][3] = CreatePlayerTextDraw(playerid, 22.474441, 118.250000, "~>~Hello, what do you think about this box ?");
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTextdraws][3], 0.214465, 0.929166);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTextdraws][3], 125.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTextdraws][3], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTextdraws][3], -1);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTextdraws][3], 1);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTextdraws][3], 102);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTextdraws][3], 0);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTextdraws][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTextdraws][3], 255);
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTextdraws][3], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTextdraws][3], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTextdraws][3], 0);


	//


	//Shop Notice Textdraw
	ShopNotice[playerid] = CreatePlayerTextDraw(playerid,16.000000, 193.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, ShopNotice[playerid], 255);
	PlayerTextDrawFont(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ShopNotice[playerid], 0.289999, 1.299999);
	PlayerTextDrawColor(playerid, ShopNotice[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ShopNotice[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawUseBox(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ShopNotice[playerid], 75);
	PlayerTextDrawTextSize(playerid, ShopNotice[playerid], 186.000000, 63.000000);
	PlayerTextDrawSetSelectable(playerid, ShopNotice[playerid], 0);
	
	//LEO Textdraws
	BackupText[playerid] = CreatePlayerTextDraw(playerid, 505 ,179 , "~r~Backup call active");
	PlayerTextDrawFont(playerid,BackupText[playerid] , 1);
	PlayerTextDrawLetterSize(playerid,BackupText[playerid] , 0.270000, 2.000000);
	PlayerTextDrawColor(playerid,BackupText[playerid] , -1);
	PlayerTextDrawSetOutline(playerid,BackupText[playerid] , true);
	PlayerTextDrawSetProportional(playerid,BackupText[playerid] , true);
	PlayerTextDrawSetShadow(playerid, BackupText[playerid] , 1);
	
	//Hunger Games Textdraws
	_hungerText[playerid] = CreatePlayerTextDraw(playerid, 633.000000, 430.000000, "");
	PlayerTextDrawAlignment(playerid, _hungerText[playerid], 3);
	PlayerTextDrawBackgroundColor(playerid, _hungerText[playerid], 255);
	PlayerTextDrawFont(playerid, _hungerText[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _hungerText[playerid], 0.390000, 1.500000);
	PlayerTextDrawColor(playerid, _hungerText[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _hungerText[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _hungerText[playerid], 1);

	if (PlayerInfo[playerid][pAdmin] < 2) // not an admin
	{
		PlayerTextDrawShow(playerid, _hungerText[playerid]);
		_hungerTextVisible[playerid] = 1;
	}
	else
	{
		_hungerTextVisible[playerid] = 0;
	}
	
	//Vehicle Textdraws
	_vhudFlash[playerid] = CreatePlayerTextDraw(playerid, -20.000000, 2.000000,"|");
	PlayerTextDrawUseBox(playerid,_vhudFlash[playerid],1);
 	PlayerTextDrawBoxColor(playerid,_vhudFlash[playerid],0xffffff55);
  	PlayerTextDrawTextSize(playerid,_vhudFlash[playerid],660.000000,22.000000);
   	PlayerTextDrawAlignment(playerid,_vhudFlash[playerid],0);
   	PlayerTextDrawBackgroundColor(playerid,_vhudFlash[playerid],0x000000ff);
    PlayerTextDrawFont(playerid,_vhudFlash[playerid],3);
    PlayerTextDrawLetterSize(playerid,_vhudFlash[playerid],1.000000,52.200000);
    PlayerTextDrawColor(playerid,_vhudFlash[playerid],0xffffffff);
    PlayerTextDrawSetOutline(playerid,_vhudFlash[playerid], 1);
    PlayerTextDrawSetProportional(playerid,_vhudFlash[playerid], 1);
    PlayerTextDrawSetShadow(playerid, _vhudFlash[playerid], 1);

	_vhudTextFuel[playerid] = CreatePlayerTextDraw(playerid, 495.000000, 133.000000, "~b~Xang: N/A");
	PlayerTextDrawBackgroundColor(playerid, _vhudTextFuel[playerid], 255);
	PlayerTextDrawFont(playerid, _vhudTextFuel[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _vhudTextFuel[playerid], 0.270000, 2.000000);
	PlayerTextDrawColor(playerid, _vhudTextFuel[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudTextFuel[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _vhudTextFuel[playerid], 1);

	_vhudTextSpeed[playerid] = CreatePlayerTextDraw(playerid, 555.000000, 133.000000, "~b~MPH: N/A");
	PlayerTextDrawBackgroundColor(playerid, _vhudTextSpeed[playerid], 255);
	PlayerTextDrawFont(playerid, _vhudTextSpeed[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _vhudTextSpeed[playerid], 0.270000, 2.000000);
	PlayerTextDrawColor(playerid, _vhudTextSpeed[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudTextSpeed[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _vhudTextSpeed[playerid], 1);

	_vhudSeatBelt[playerid] = CreatePlayerTextDraw(playerid, 555.000000, 150.000000, "~b~SB: ~r~TAT");
	PlayerTextDrawBackgroundColor(playerid, _vhudSeatBelt[playerid], 255);
	PlayerTextDrawFont(playerid, _vhudSeatBelt[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _vhudSeatBelt[playerid], 0.270000, 2.000000);
	PlayerTextDrawColor(playerid, _vhudSeatBelt[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudSeatBelt[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _vhudSeatBelt[playerid], 1);

	_vhudLights[playerid] = CreatePlayerTextDraw(playerid, 495.000000, 150.000000, "~b~Den: ~r~TAT");
	PlayerTextDrawBackgroundColor(playerid, _vhudLights[playerid], 255);
	PlayerTextDrawFont(playerid, _vhudLights[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _vhudLights[playerid], 0.270000, 2.000000);
	PlayerTextDrawColor(playerid, _vhudLights[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _vhudLights[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _vhudLights[playerid], 1);
	
	_crTextTarget[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 388.000000, "Target Vehicle: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTextTarget[playerid], 2);
	PlayerTextDrawBackgroundColor(playerid, _crTextTarget[playerid], 255);
	PlayerTextDrawFont(playerid, _crTextTarget[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTextTarget[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTextTarget[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextTarget[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTextTarget[playerid], 1);

	_crTextSpeed[playerid] = CreatePlayerTextDraw(playerid, 190.000000, 410.000000, "Toc do: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, _crTextSpeed[playerid], 255);
	PlayerTextDrawFont(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTextSpeed[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTextSpeed[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTextSpeed[playerid], 1);
	
	_crTickets[playerid] = CreatePlayerTextDraw(playerid, 340.000000, 410.000000, "Tickets: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTickets[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, _crTickets[playerid], 255);
	PlayerTextDrawFont(playerid, _crTickets[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTickets[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTickets[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTickets[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTickets[playerid], 1);
	
	_vhudVisible[playerid] = 0;
	return 1;
}
