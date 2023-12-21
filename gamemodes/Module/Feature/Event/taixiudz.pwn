#include <a_samp>
#include <YSI\y_hooks>

new PhiensoTai[MAX_PLAYERS];
new PhiensoXiu[MAX_PLAYERS];
new Dongtaixiu = 1;
new PlayerText:tdtaixiu[MAX_PLAYERS][8];
new HeThongTaiXiu;

enum txInfo {
	Tai,
	Xiu,
	Phienso,
	SonguoiTai,
	SonguoiXiu,
	PhiensoTaiz,
	PhiensoXiuz,
};
new TaiXiu[txInfo];

hook OnPlayerConnect(playerid)
{
	ShowTaiXiu(playerid);
    PlayerInfo[playerid][pTai] = 0;
    PlayerInfo[playerid][pXiu] = 0;
}

stock ShowTaiXiu(playerid)
{
	tdtaixiu[playerid][0] = CreatePlayerTextDraw(playerid, 453.666687, 202.444427, "box");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][0], 0.000000, 6.999997);
	PlayerTextDrawTextSize(playerid, tdtaixiu[playerid][0], 678.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][0], 16777215);
	PlayerTextDrawUseBox(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, tdtaixiu[playerid][0], 200);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][0], 5);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][0], 16777215);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][0], 14869218);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][0], 0);

	tdtaixiu[playerid][1] = CreatePlayerTextDraw(playerid, 626.666625, 249.733291, "000000000");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][1], 0.292333, 1.197628);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][1], 3);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][1], -16711681);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][1], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][1], 0);

	tdtaixiu[playerid][2] = CreatePlayerTextDraw(playerid, 467.666534, 249.733154, "000000000");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][2], 0.284666, 1.164443);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][2], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][2], 16777215);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][2], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][2], 0);

	tdtaixiu[playerid][3] = CreatePlayerTextDraw(playerid, 462.666595, 218.622253, "TAI");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][3], 0.542999, 1.342815);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][3], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][3], 16777215);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][3], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][3], 0);

	tdtaixiu[playerid][4] = CreatePlayerTextDraw(playerid, 590.999572, 216.962966, "XIU");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][4], 0.542999, 1.342815);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][4], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][4], -16711681);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][4], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][4], 0);

	tdtaixiu[playerid][5] = CreatePlayerTextDraw(playerid, 466.666381, 234.385223, "nnnguoi");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][5], 0.370332, 1.185184);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][5], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][5], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][5], 0);

	tdtaixiu[playerid][6] = CreatePlayerTextDraw(playerid, 577.333190, 234.800048, "nguoi");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][6], 0.392666, 0.952888);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][6], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][6], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][6], 0);

	tdtaixiu[playerid][7] = CreatePlayerTextDraw(playerid, 531.666381, 202.444412, "Time");
	PlayerTextDrawLetterSize(playerid, tdtaixiu[playerid][7], 0.456333, 1.662222);
	PlayerTextDrawAlignment(playerid, tdtaixiu[playerid][7], 1);
	PlayerTextDrawColor(playerid, tdtaixiu[playerid][7], -16776961);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, tdtaixiu[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, tdtaixiu[playerid][7], 255);
	PlayerTextDrawFont(playerid, tdtaixiu[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, tdtaixiu[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, tdtaixiu[playerid][7], 0);
	return 1;
}


stock HideTaixiuTD(playerid)
{
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][0]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][1]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][2]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][3]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][4]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][5]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][6]);
	PlayerTextDrawHide(playerid, tdtaixiu[playerid][7]);
	return 1;
}
stock ShowTaixiuTD(playerid)
{
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][0]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][1]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][2]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][3]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][4]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][5]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][6]);
	PlayerTextDrawShow(playerid, tdtaixiu[playerid][7]);
	return 1;
}


forward NgauNhienTaiXiu(playerid);
public NgauNhienTaiXiu(playerid)
{
		if(Dongtaixiu > 0)
		{
			return 1;
		}
		new string[128];
		if(HeThongTaiXiu == 1) //tai
		{
			new tongsotienz = TaiXiu[Tai];
            format(string, sizeof(string), "[TAI XIU]: Phien tai xiu so %d tuyen bo: {ff0092}Tai {FFFFFF}thang (( Tong so tien: $%s ))", TaiXiu[Phienso], number_format(tongsotienz*2));
			OOCOff(COLOR_WHITE, string);
            foreach(new i: Player)
	        {
			    if(PhiensoTai[i] == 1)
			    {
                    new amount = PlayerInfo[i][pTai];
					PlayerInfo[i][pCash] += amount*2;
					format(string, sizeof(string), "Chuc mung ban da chien thang o phien tai xiu so %d va nhan duoc $%s", TaiXiu[Phienso], number_format(amount*2));
					SendClientMessageEx(i, COLOR_WHITE, string);
			    }
		    }
		}
		else if(HeThongTaiXiu == 2) //xiu
		{
			new tongsotien = TaiXiu[Xiu];
            format(string, sizeof(string), "[TAI XIU]: Phien tai xiu so %d tuyen bo: {1f9dc4}Xiu {FFFFFF}thang (( Tong so tien: $%s ))", TaiXiu[Phienso], number_format(tongsotien*2));
			OOCOff(COLOR_WHITE, string);
			foreach(new i: Player)
	        {
			    if(PhiensoXiu[i] == 1)
			    {
                    new amountz = PlayerInfo[i][pXiu];
					PlayerInfo[i][pCash] += amountz*2;
					format(string, sizeof(string), "Chuc mung ban da chien thang o phien tai xiu so %d va nhan duoc $%s", TaiXiu[Phienso], number_format(amountz*2));
					SendClientMessageEx(i, COLOR_WHITE, string);
			    }
		    }
		}
		else if(HeThongTaiXiu == 0)
		{
			switch(random(2))
			{
				case 0: // Tai
				{
					new tongsotienz = TaiXiu[Tai];
					format(string, sizeof(string), "[TAI XIU]: Phien tai xiu so %d tuyen bo: {ff0092}Tai {FFFFFF}thang (( Tong so tien: $%s ))", TaiXiu[Phienso], number_format(tongsotienz*2));
					OOCOff(COLOR_WHITE, string);
					foreach(new i: Player)
					{
						if(PhiensoTai[i] == 1)
						{
							new amount = PlayerInfo[i][pTai];
							PlayerInfo[i][pCash] += amount*2;
							format(string, sizeof(string), "Chuc mung ban da chien thang o phien tai xiu so %d va nhan duoc $%s", TaiXiu[Phienso], number_format(amount*2));
							SendClientMessageEx(i, COLOR_WHITE, string);
						}
					}
				}
				case 1:
				{
					new tongsotien = TaiXiu[Xiu];
					format(string, sizeof(string), "[TAI XIU]: Phien tai xiu so %d tuyen bo: {1f9dc4}Xiu {FFFFFF}thang (( Tong so tien: $%s ))", TaiXiu[Phienso], number_format(tongsotien*2));
					OOCOff(COLOR_WHITE, string);
					foreach(new i: Player)
					{
						if(PhiensoXiu[i] == 1)
						{
							new amountz = PlayerInfo[i][pXiu];
							PlayerInfo[i][pCash] += amountz*2;
							format(string, sizeof(string), "Chuc mung ban da chien thang o phien tai xiu so %d va nhan duoc $%s", TaiXiu[Phienso], number_format(amountz*2));
							SendClientMessageEx(i, COLOR_WHITE, string);
						}
					}
				}
			}	
		}
		SetTimer("ResetTaiXiu", 1000, 0);
		return 1;
}

forward ResetTaiXiu(playerid);
public ResetTaiXiu(playerid)
{
    TaiXiu[Phienso] += 1;
	TaiXiu[Tai] = 0;
	TaiXiu[Xiu] = 0;
	TaiXiu[SonguoiTai] = 0;
	TaiXiu[SonguoiXiu] = 0;
	TaiXiu[PhiensoTaiz] = 0;
	TaiXiu[PhiensoXiuz] = 0;
	SetTimer("HoanThanhTaiXiu", 1000, 0);
	return 1;
}

forward HoanThanhTaiXiu();
public HoanThanhTaiXiu()
{
	if(Dongtaixiu > 0)
	{
	foreach(new i: Player)
	{
	    SetPVarInt(i, "Taixiutime", gettime() + 60);
	    PlayerInfo[i][pTai] = 0;
	    PlayerInfo[i][pXiu] = 0;
	    PhiensoXiu[i] = 0;
        PhiensoTai[i] = 0;
	}
	return 1;
	}
    foreach(new i: Player)
	{
	    SetPVarInt(i, "Taixiutime", gettime() + 60);
	    PlayerInfo[i][pTai] = 0;
	    PlayerInfo[i][pXiu] = 0;
	    PhiensoXiu[i] = 0;
        PhiensoTai[i] = 0;
	    SendClientMessageEx(i, COLOR_WHITE, "[TAI XIU]: Ban da co the dat cuoc , dung dat cham qua se bi mat tien oan.");
	}
	return 1;
}

hook OnPlayerUpdate(playerid)
{
		//taixiu
	new stringb [200], stringc [200], stringy [200], stringz [200], time [200];
	format(time, sizeof(time), "%d", GetPVarInt(playerid, "Taixiutime") - gettime());
	PlayerTextDrawSetString(playerid, tdtaixiu[playerid][7], time);
	format(stringb, 200, "%d", TaiXiu[Tai]);
	PlayerTextDrawSetString(playerid, tdtaixiu[playerid][2], stringb);
	format(stringc, 200, "%d", TaiXiu[Xiu]);
	PlayerTextDrawSetString(playerid, tdtaixiu[playerid][1], stringc);
	format(stringy, 200, "%d nguoi", TaiXiu[SonguoiTai]);
	PlayerTextDrawSetString(playerid, tdtaixiu[playerid][5], stringy);
	format(stringz, 200, "%d nguoi", TaiXiu[SonguoiXiu]);
	PlayerTextDrawSetString(playerid, tdtaixiu[playerid][6], stringz);
	//
}

CMD:togtaixiu(playerid, params[])
{
	if(GetPVarInt(playerid, "togtx") > 0)
	{
		ShowTaixiuTD(playerid);
		SetPVarInt(playerid, "togtx", 0);
		return 1;
	}
	else
	{
		ShowTaixiuTD(playerid);
		SetPVarInt(playerid, "togtx", 1);
		return 1;
	}
}


CMD:edittxgvrpasd(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 99999)
    {
        new chon[32];
        if(sscanf(params, "s[32]", chon))
        {
            SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /edittaixiu [ chon ]");
            SendClientMessageEx(playerid, COLOR_GREY, "chon: tai - xiu - ngaunhien - dong - mo");
            return 1;
        }
        else if(strcmp(chon,"tai",true) == 0)
        {
            HeThongTaiXiu = 1;
            SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [TAI]");
        }
        else if(strcmp(chon,"xiu",true) == 0)
        {
            HeThongTaiXiu = 2;
            SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [XIU]");
        }
        else if(strcmp(chon,"ngaunhien",true) == 0)
        {
            HeThongTaiXiu = 0;
            SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [Ngau Nhien]");
        }
        else if(strcmp(chon,"dong",true) == 0)
        {
            Dongtaixiu = 1;
            SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [DONG]");
        }
        else if(strcmp(chon,"mo",true) == 0)
        {
            Dongtaixiu = 0;
            SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [MO]");
        }
    }
	return 1;
}

CMD:taixiu(playerid, params[])
{
	if(Dongtaixiu > 0)
	{
		SendClientMessage(playerid,COLOR_GREY,"kenh tai xiu dang bi dong boi administrator.");
		return 1;
	}
	if(GetPVarInt(playerid, "Taixiutime") - gettime() < 20)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "[TAI XIU] DA HET GIO DAT TAI XIU");
		return 1;
	}
	new itemid, amount, string[128];
	if(!IsPlayerConnected(playerid))
	{
        SendClientMessageEx(playerid, COLOR_GREY, " Ban chua dang nhap.");
        return 1;
    }
	if(sscanf(params, "dd", itemid, amount) || (itemid < 1 || itemid > 5))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /taixiu [ID] [so tien]");
		SendClientMessageEx(playerid, COLOR_WHITE, "Chon: 1.TAI - 2.XIU");
		return 1;
	}
	if(amount > 500000) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the dat tren 500k SAD");
	if(amount < 20000) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the dat duoi 20000 SAD.");
	if(PlayerInfo[playerid][pCash] < amount)
	{
          SendClientMessageEx(playerid, COLOR_GREY, "  Ban khong du tien de dat cuoc.");
          return 1;
    }
	if(PlayerInfo[playerid][pTai] == 0 && PlayerInfo[playerid][pXiu] == 0)
	{
		switch(itemid)
		{
			case 1: // Tai
			{
				PlayerInfo[playerid][pCash] -= amount;
				PlayerInfo[playerid][pTai] = amount;
				format(string, sizeof(string), "[TAI XIU]: Ban da dat cuoc $%s vao {FF0000}Tai{FFFFFF} o phien tai xiu so %d", number_format(amount), TaiXiu[Phienso]);
				SendClientMessageEx(playerid, COLOR_WHITE, string);
                TaiXiu[Tai] += amount;
                PhiensoTai[playerid] = 1;
                TaiXiu[PhiensoTaiz] += 1;
                TaiXiu[SonguoiTai] += 1;
			}
			case 2: // Xiu
			{

				PlayerInfo[playerid][pCash] -= amount;
				PlayerInfo[playerid][pXiu] = amount;
				format(string, sizeof(string), "[TAI XIU]: Ban da dat cuoc $%s vao {33FF00}Xiu{FFFFFF} o phien tai xiu so %d", number_format(amount), TaiXiu[Phienso]);
				SendClientMessageEx(playerid, COLOR_WHITE, string);
				PhiensoXiu[playerid] = 1;
                TaiXiu[Xiu] += amount;
                TaiXiu[PhiensoXiuz] += 1;
                TaiXiu[SonguoiXiu] += 1;
			}
		}
	}
	else
	{
        SendClientMessageEx(playerid, COLOR_WHITE, "[TAI XIU]: Ban da dat cuoc phien tai xiu nay roi!");
    }
	return 1;
}

