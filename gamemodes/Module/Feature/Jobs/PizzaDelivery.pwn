#include <YSI\y_hooks>

enum PizzaJobArray
{
	Float:PosX,
	Float:PosY,
	Float:PosZ
}

new PizzaDropoffs[][PizzaJobArray] =
{
	// Thuc pham va Do uong
	{2156.2510,-1012.0280,62.5323},
	{1213.1342,-888.4601,42.4838},
	{1038.3160,-1334.1187,13.1153},
	{820.1288,-1618.9045,13.1147},
	{1828.4835,-1682.0027,13.1147},
	{2095.4299,-1806.8080,13.1193},

	// Quan ao
	{2245.5913,-1661.1849,15.0368},
	{1458.6931,-1139.5887,23.6371},
	{455.4829,-1501.3038,30.6125},

	// Vat lieu
	{1025.5007,-1553.3496,13.1311},
	{1088.8427,-1377.5574,13.3476},
	{1246.6122,-1248.9399,13.0978},
	{1363.0106,-1280.3160,13.1144},
	{1518.3348,-1266.2706,14.0959},
	{1383.2855,-1752.7482,13.1147},
	{1852.8660,-1863.2513,13.1459},
	{1758.9631,-1663.2443,13.1235},

	// 24/7
	{2865.9226,-1439.0769,10.9658},
	{2717.3730,-1110.0796,69.1410},
	{2702.3506,-1091.7490,68.9529},
	{2667.7202,-1091.9393,68.9663},
	{2706.7954,-1273.7731,57.7328},
	{2145.4255,-1162.9221,23.3881},
	{1830.1537,-1176.3021,23.2006},
	{1315.7377,-913.5919,37.5783},
	{1357.8263,-1751.8026,12.9380},
	{1841.2267,-1444.3304,13.1265},
	{1934.3373,-1776.7810,12.9506},
	{1836.8495,-1856.4449,12.9538},




	// Vu khi
	{1702.5061,-1474.0844,13.1176},
	{1364.0159,-1647.2958,12.9506},
	
	{2747.2102,-1468.8180,30.0209},

	// can sa
	{2517.5449,-1272.6857,34.4304},
	{2429.3989,-1229.0930,24.6443},
	{2350.2468,-1164.0730,26.9490},
	{2227.2268,-1159.9386,25.3445},
	{1612.8956,-1551.9611,13.1569},
	{2812.7896,-1183.7185,25.3702},
	{2517.5449,-1272.6857,34.4304},
	{2429.3989,-1229.0930,24.6443},
	{2350.2468,-1164.0730,26.9490},
	{2227.2268,-1159.9386,25.3445},

	// Vat lieu bat hop phap
	{2766.7864,-1373.3538,39.4754},
	{2661.4053,-1434.9727,30.0588},
	{985.0507,-1759.8545,13.2594},
	{1098.7155,-1878.6000,13.1148},
	{1422.0540,-1299.4691,13.1225},
	{1602.9863,-1551.6974,13.1532},
	{2818.6089,-1088.6528,30.8296}
};

hook OnGameModeInit()
{
	PizzaVehicles[0] = AddStaticVehicle(448,2105.1096,-1782.9471,12.9748,359.5443,3,6); // Pizza
	PizzaVehicles[1] = AddStaticVehicle(448,2109.0010,-1782.8856,12.9748,3.2650,0.0,3,6); // Pizza
	PizzaVehicles[2] = AddStaticVehicle(448,2112.7903,-1783.0819,12.9748,2.2004,3,6); // Pizza
	PizzaVehicles[3] = AddStaticVehicle(448,2116.9312,-1783.0796,12.9748,359.6660,3,6); // Pizza
	PizzaVehicles[4] = AddStaticVehicle(448,2120.9204,-1782.7073,12.9748,358.7094,3,6); // Pizza

    CreateDynamic3DTextLabel("Pizza Boy Job\n{0796EA}/nhanviec{d31b15}\n/nghiviec", -1, 2107.2329,-1793.1945,13.3830+0.5, 20.0);// Pizza Boy Job
	CreateActor(155, 2107.2329,-1793.1945,13.3830, 89.8933); // Pizza Boy Job
	CreateDynamic3DTextLabel("Dia diem lay banh\n{ffffff}/laybanh!",COLOR_YELLOW,2088.9224,-1806.8473,13.5469, 20.0); // Pizza Boy Job
	CreateDynamicPickup(1582, 23, 2088.9224,-1806.8473,13.5469, -1); // Pizza Boy Job	
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
	// Pizza Delivery
	if(GetPVarInt(playerid, "Pizza") > 0 && IsPlayerInRangeOfPoint(playerid, 5.0, PizzaDropoffs[GetPVarInt(playerid, "Pizza")][PosX], PizzaDropoffs[GetPVarInt(playerid, "Pizza")][PosY], PizzaDropoffs[GetPVarInt(playerid, "Pizza")][PosZ]))
	{
	    new string[128];
		if (GetPVarInt(playerid, "tpPizzaTimer") != 0)
		{
			format(string, sizeof(string), "{AA3333}AdmWarning{FFFF00}: %s (ID %d) is possibly teleport pizzarunning.", GetPlayerNameEx(playerid), playerid);
  			ABroadCast( COLOR_YELLOW, string, 2 );
		}
		Misc_Save();
		SendClientMessageEx(playerid, COLOR_WHITE, string);
		DeletePVar(playerid, "Pizza");
		DisablePlayerCheckpoint(playerid);

		new payment;
		new level = PlayerInfo[playerid][pPizzaSkill];
		if(level >= 0 && level <= 100) payment = 10000;
		else if(level >= 101 && level <= 200) payment = 12000;
		else if(level >= 201 && level <= 500) payment = 15000;
		else if(level >= 501 && level <= 1000) payment = 18000;
		else if(level >= 1001) payment = 20000;
		format(string, sizeof string, "{ffffff}Ban nhan duoc {ffff00}$%d{ffffff} cho viec van chuyen banh Pizza", payment);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Job - Pizza Boy", string, "OK", "");
		GivePlayerCash(playerid, payment);		
		if(camfam == 0)
		{
			PlayerInfo[playerid][pKimCuong] += 1;
			format(string, sizeof(string), "{ff5b4f}[SU KIEN KIM CUONG]{efe4dc} Ban nhan duoc 1 {ff5b4f}KIM CUONG{efe4dc} - hien tai: {ff5b4f}%d{efe4dc} ", PlayerInfo[playerid][pKimCuong]);
			SendClientMessageEx(playerid, COLOR_WHITE, string);
		}
	}	
}

CMD:laybanh(playerid, params[]) {
	return cmd_getpizza(playerid, params);
}

CMD:getpizza(playerid, params[]) {
	if(PlayerInfo[playerid][pJob] != 21 && PlayerInfo[playerid][pJob2] != 21) {
		SendClientMessageEx(playerid,COLOR_GREY,"Ban khong phai la Pizza Boy!");
	}
    else if(!IsAPizzaCar(GetPlayerVehicleID(playerid))) {
	    SendClientMessageEx(playerid,COLOR_GREY,"Day khong phai la xe cua cua hang Pizza!");
	}
	else if(GetPlayerSkin(playerid) != 155) {
	    SendClientMessageEx(playerid,COLOR_GREY,"Ban can phai co dong phuc Pizza!");
	}
	else if(GetPVarType(playerid, "Pizza")) {
		SendClientMessageEx(playerid, COLOR_GREY, "Ban da cung cap banh pizza!");
	}
	else if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2088.9224,-1806.8473,13.5469)) {
		SendClientMessageEx(playerid,COLOR_GREY,"   Ban dang khong o Pizza Stack pickup!");
	}
	else {
		new rand = random(sizeof(PizzaDropoffs));
		new
			iDist = floatround(GetPlayerDistanceFromPoint(playerid, PizzaDropoffs[rand][PosX], PizzaDropoffs[rand][PosY], PizzaDropoffs[rand][PosZ])),
			szMessage[86];

		SetPVarInt(playerid, "tpPizzaTimer", iDist / 80);
		SetPVarInt(playerid, "pizzaTotal", iDist / 10);
		SetPVarInt(playerid, "pizzaTimer", iDist / 10);
		SetPVarInt(playerid, "Pizza", rand);

		SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_TPPIZZARUNTIMER);
		SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_PIZZATIMER);

		format(szMessage, sizeof(szMessage), "Ban cung cap pizza. Ban co %d giay de cung cap no!", iDist / 10);
		SendClientMessageEx(playerid, COLOR_WHITE, szMessage);

		SetPlayerCheckpoint(playerid, PizzaDropoffs[rand][PosX], PizzaDropoffs[rand][PosY], PizzaDropoffs[rand][PosZ], 5);
	}
	return 1;
}
