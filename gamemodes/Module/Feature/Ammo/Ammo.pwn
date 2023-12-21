#include <YSI\y_hooks>



hook OnGameModeInit()
{
	Actorvukhi = CreateActor(287,1367.2170,-1276.5676,13.5469,91.5578);
	CreateDynamic3DTextLabel("{ffff00}<WEAPON AMMO>{ffffff}\n---Nhan {00ffff}Y{FFFFFF} de tim hieu---",COLOR_YELLOW,1367.2170,-1276.5676,13.5469+0.6,5.0);
}
CMD:chetaobangdanadmin(playerid, params[])
{
	ShowPlayerDialog(playerid, CHETAODAN, DIALOG_STYLE_TABLIST_HEADERS, "Che tao dan",
	"Ten dan\tVat Lieu\tBang Dan\n\
	9mm\t1000\t1\n\
	Sdpistol\t1000\t1\n\
	Shotgun\t1000\t1\n\
	Uzi\t1000\t1\n\
	Tec9\t1000\t1\n\
	MP5\t1000\t1\n\
	Deagle\t1000\t1\n\
	rifle\t1000\t1\n\
	Ak47\t1000\t1\n\
	M4\t1000\t1\n\
	Spas12\t1000\t1\n\
	Sniper\t1000\t1",
	"Che tao", "Huy bo");
}

CMD:thaydan(playerid, params[])
{
	new choice[32];
	new weapon, ammosd;
	if(sscanf(params, "s[32]", choice))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /thaydan [name]");
	    SendClientMessageEx(playerid, COLOR_YELLOW,"- - - - - - - - - - - - - - - - - - -");
	    SendClientMessageEx(playerid, COLOR_WHITE,"Deagle, Shotgun, Mp5, Sdpistol");
	    SendClientMessageEx(playerid, COLOR_WHITE,"9mm, Uzi, Tec-9, Spass-12");
	    SendClientMessageEx(playerid, COLOR_WHITE,"Sniper, M4, Ak-47, Rilfe");
	    SendClientMessageEx(playerid, COLOR_YELLOW,"- - - - - - - - - - - - - - - - - - -");
		return 1;
	}

	if(PlayerInfo[playerid][pJailTime] > 0)
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the su dung trong nha tu.");
		return 1;
	}

	else if(strcmp(choice,"9mm",true) == 0)
	{

        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 22)
        {
	        if(PlayerInfo[playerid][pBangDan][ 1 ] > 0)
	        {
		        PlayerInfo[playerid][pAmmo][ 1 ] = 0;
		        GivePlayerAmmoEx(playerid, weapon, 18);
		        SetPlayerArmedWeapon(playerid, 0);
		        PlayerInfo[playerid][pBangDan][ 1 ] -= 1;
		        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan 9mm thanh cong.");
		        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
	        }
	        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan 9mm.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
	    return 1;
	}


	else if(strcmp(choice,"sdpistol",true) == 0)
	{

        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 23)
        {
        if(PlayerInfo[playerid][pBangDan][ 1 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 1 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 18);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 1 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Sdpistol thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Sdpistol.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

 	else if(strcmp(choice,"shotgun",true) == 0)
	{
        GetPlayerWeaponData(playerid, 3, weapon, ammosd);
        if(weapon == 25)
        {
        	if(PlayerInfo[playerid][pBangDan][ 2 ] > 0)
        	{
				PlayerInfo[playerid][pAmmo][ 2 ] = 0;
				GivePlayerAmmoEx(playerid, weapon, 11);
				SetPlayerArmedWeapon(playerid, 25);
				PlayerInfo[playerid][pBangDan][ 2 ] -= 1;
				SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Shotgun thanh cong.");
				ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
				GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        	}
        	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Shotgun.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

	else if(strcmp(choice,"m4",true) == 0)
	{
        GetPlayerWeaponData(playerid, 5, weapon, ammosd);
        if(weapon == 31)
        {
        if(PlayerInfo[playerid][pBangDan][ 9 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 4 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 51);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 9 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan M4 thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan M4.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"ak47",true) == 0)
	{
        GetPlayerWeaponData(playerid, 5, weapon, ammosd);
        if(weapon == 30)
        {
        if(PlayerInfo[playerid][pBangDan][ 8 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 4 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 31);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 8 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Ak-47 thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Ak-47.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"Uzi",true) == 0)
	{
        GetPlayerWeaponData(playerid, 4, weapon, ammosd);
        if(weapon == 28)
        {
        if(PlayerInfo[playerid][pBangDan][ 3 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 3 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 31);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 3 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Uzi thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Uzi.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"Tec9",true) == 0)
	{
        GetPlayerWeaponData(playerid, 4, weapon, ammosd);
        if(weapon == 32)
        {
        if(PlayerInfo[playerid][pBangDan][ 4 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 3 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 31);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 4 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Tec-9 thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Tec-9.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

	else if(strcmp(choice,"spass-12",true) == 0)
	{
        GetPlayerWeaponData(playerid, 3, weapon, ammosd);
        if(weapon == 27)
        {
        if(PlayerInfo[playerid][pBangDan][ 10 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 2 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 8);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 10 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Spas-12 thanh cong.");
        ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Spas-12.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"sniper",true) == 0)
	{
        GetPlayerWeaponData(playerid, 6, weapon, ammosd);
        if(weapon == 34)
        {
        if(PlayerInfo[playerid][pBangDan][ 11 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 5 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 15);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 11 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Sniper thanh cong.");
        ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Sniper.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"rilfe",true) == 0)
	{
        GetPlayerWeaponData(playerid, 6, weapon, ammosd);
        if(weapon == 33)
        {
        if(PlayerInfo[playerid][pBangDan][ 7 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 5 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 15);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 7 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Rilfe thanh cong.");
        ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Rilfe.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}

    else if(strcmp(choice,"deagle",true) == 0)
	{
        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 24)
        {
        if(PlayerInfo[playerid][pBangDan][ 6 ] > 0)
        {
        PlayerInfo[playerid][pAmmo][ 1 ] = 0;
        GivePlayerAmmoEx(playerid, weapon, 8);
        SetPlayerArmedWeapon(playerid, 0);
        PlayerInfo[playerid][pBangDan][ 6 ] -= 1;
        SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Deagle thanh cong.");
        ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
        GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
        }
        else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Deagle.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
		return 1;
	}
 	else if(strcmp(choice,"mp5",true) == 0)
	{
        GetPlayerWeaponData(playerid, 4, weapon, ammosd);
        if(weapon == 29)
        {
			if(PlayerInfo[playerid][pBangDan][ 5 ] > 0)
			{
				PlayerInfo[playerid][pAmmo][ 3 ] = 0;
				GivePlayerAmmoEx(playerid, weapon, 31);
				SetPlayerArmedWeapon(playerid, 0);
				PlayerInfo[playerid][pBangDan][ 5 ] -= 1;
				SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban da thay 1 bang dan Mp5 thanh cong.");
				ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
				GameTextForPlayer(playerid, "Dang Thay Dan", 2000, 3);
			}
        	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co bang dan Mp5.");
        }
        else SendClientMessageEx(playerid, COLOR_GREEN, "[!] Ban khong co so huu vu khi nay nen khong the thay dan.");
    }
	return 1;
}

CMD:duabangdan(playerid, params[])
{
	if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "   Ban khong the lam dieu nay khi dang trong su kien Hunger Games!");
	if(GetPVarInt(playerid, "IsInArena") >= 0)
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay trong dau truong!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the lam dieu nay khi dang trong su kien.");
		return 1;
	}
	new Float:health;
	GetPlayerHealth(playerid, health);
	if (health < 80)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "EY , may dang bi thuong , dua bang dan kieu gi ha tml ?");
		return 1;
	}

	if(GetPVarInt(playerid, "Injured") != 0||PlayerCuffed[playerid]!=0||PlayerInfo[playerid][pHospital]!=0||GetPlayerState(playerid) == 7)
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the lam dieu nay vao luc nay.");
		return 1;
	}
	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong co the dua bang dan khi dang tren xe!");
		return 1;
	}

	if (GetPVarInt(playerid, "GiveWeaponTimer") > 0)
	{
		new string[58];
		format(string, sizeof(string), "Ban phai doi  %d giay moi co the dua bang dan.", GetPVarInt(playerid, "GiveWeaponTimer"));
		SendClientMessageEx(playerid,COLOR_GREY,string);
		return 1;
	}

	new string[128], giveplayerid, weapon[64];
	if(sscanf(params, "us[64]", giveplayerid, weapon))
	{
	    SendClientMessageEx(playerid, COLOR_GREY,"/duabangdan [playerid] [ten bang dan]");
	    SendClientMessageEx(playerid, COLOR_YELLOW,"- - - - - - - - - - - - - - - - - - -");
	    SendClientMessageEx(playerid, COLOR_WHITE,"Deagle, Shotgun, Mp5, Sdpistol");
	    SendClientMessageEx(playerid, COLOR_WHITE,"9mm, Uzi, Tec-9, Spas-12");
	    SendClientMessageEx(playerid, COLOR_WHITE,"Sniper, M4, Ak-47, Rilfe");
	    SendClientMessageEx(playerid, COLOR_YELLOW,"- - - - - - - - - - - - - - - - - - -");
		return 1;
	}
	if (!IsPlayerConnected(giveplayerid)) {
		return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
	}
	if(IsPlayerInAnyVehicle(giveplayerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not give weapons to players in vehicles!");
		return 1;
	}
	if(giveplayerid == playerid)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give a weapon to yourself!");
		return 1;
	}
	if(!ProxDetectorS(3.0, playerid, giveplayerid))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do khong gan ban.");
		return 1;
	}
	if(PlayerInfo[playerid][pMember] != PlayerInfo[giveplayerid][pMember] && PlayerInfo[playerid][pMember] != INVALID_GROUP_ID)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give weapons to players outside your faction!");
		return 1;
	}
	if(PlayerInfo[giveplayerid][pConnectHours] < 2 || PlayerInfo[giveplayerid][pWRestricted] > 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "That person is currently restricted from possessing weapons");
	if(IsPlayerInAnyVehicle(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Please exit the vehicle, before using this command.");
	if(strcmp(weapon, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 6 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 6 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 6 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Deagle");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Deagle", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 6 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 2 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 2 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 2 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Shotgun");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Shotgun", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 2 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Shotgun!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
 	if(strcmp(weapon, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 1 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 1 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 1 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan 9mm");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan 9mm", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 1 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan 9mm!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 1 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 1 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 1 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan sdpistol");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan sdpistol", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 1 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan sdpistol!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "Uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 3 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 3 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 3 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Uzi");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Uzi", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 3 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Uzi!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 4 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 4 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 4 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Tec-9");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Tec-9", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 4 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan sdpistol!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 9 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 9 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 9 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan M4");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan M4", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 9 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan M4!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 8 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 8 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 8 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Ak-47");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Ak-47", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 8 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan sdpistol!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 10 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 10 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 10 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Spas-12");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Spas-12", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 10 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Spas-12!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "Sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 11 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 11 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 11 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Sniper");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Sniper", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 11 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Sniper!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "rilfe", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 7 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 7 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 7 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan Rilfe");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan Rilfe", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 7 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Rilfe!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	if(strcmp(weapon, "Mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pBangDan][ 5 ] > 1)
		{
			if(PlayerInfo[playerid][pBangDan][ 5 ] > 1)
			{
                PlayerInfo[playerid][pBangDan][ 5 ] -= 1;
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho anh ta bang dan MP5");
				format(string, sizeof(string), "* %s da dua cho %s mot bang dan MP5", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				PlayerInfo[giveplayerid][pBangDan][ 5 ] += 1;
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ban khong co bang dan Mp5!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong du bang dan!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban da sai ten bang dan vui long nhap lai");
	}
	return 1;
}


CMD:bangdan(playerid, params[])
{
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], name[1280];
    format(str1, sizeof(str), "{FFFF33}Bang Dan - 9mm, Sdpistol: {e34646}%d/30 {FFFF33}Bang Dan" , PlayerInfo[playerid][pBangDan][ 1 ]);
    format(str2, sizeof(str), "{FFFF33}Bang Dan - Deagle: {e34646}%d/30 {FFFF33}Bang Dan" , PlayerInfo[playerid][pBangDan][ 6 ]);
    format(str3, sizeof(str), "{FFFF33}Bang Dan - Shotgun: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 2 ]);
    format(str4, sizeof(str), "{FFFF33}Bang Dan - Mp5: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 5 ]);
    format(str5, sizeof(str), "{FFFF33}Bang Dan - Uzi: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 3 ]);
    format(str6, sizeof(str), "{FFFF33}Bang Dan - TEC-9: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 4 ]);
    format(str7, sizeof(str), "{FFFF33}Bang Dan - M4A1: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 9 ]);
    format(str8, sizeof(str), "{FFFF33}Bang Dan - AK-47: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 8 ]);
    format(str9, sizeof(str), "{FFFF33}Bang Dan - Spass-12: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 10 ]);
    format(str10, sizeof(str), "{FFFF33}Bang Dan - Sniper: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 11 ]);
    format(str11, sizeof(str), "{FFFF33}Bang Dan - Rilfe: {e34646}%d/30 {FFFF33}Bang Dan", PlayerInfo[playerid][pBangDan][ 7 ]);
    format(str, sizeof(str), "%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11);
    format(name, sizeof(name), "Tui Bang Dan Cua %s",GetPlayerNameEx(playerid));
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong Lai", "");
	return 1;
}

stock GivePlayerAmmoEx(Player, weapon, Ammo)
{
switch(weapon)
{
case 16, 17, 18, 39: // SATCHEL, GRENADE, TEARGAS, MOLTOV
{
PlayerInfo[Player][pAmmo][ 7 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 7 ]);
}
case 22, 23, 24: // 9mm, sdpid, DE
{
PlayerInfo[Player][pAmmo][ 1 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 1 ]);
}
case 25,26,27:// Shotgun, spawn-off, combat shotgun
{
PlayerInfo[Player][pAmmo][ 2 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 2 ]);
}
case 28,29,32: // Uzi, Tec9, Mp5
{
PlayerInfo[Player][pAmmo][ 3 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 3 ]);
}
case 30,31: // M4, Ak 47
{
PlayerInfo[Player][pAmmo][ 4 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 4 ]);
}
case 33,34: // rifle, sniper
{
PlayerInfo[Player][pAmmo][ 5 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 5 ]);
}
case 35,36,37,38: // Bazoka, RPG, Firegun, minigun
{
PlayerInfo[Player][pAmmo][ 6 ] += Ammo;
SetPlayerAmmo(Player, weapon, PlayerInfo[Player][pAmmo][ 6 ]);
}
}
DeletePVar(Player, "CurrentAmmoSlot");
DeletePVar(Player, "CurrentWeaponSlot");
return 1;
}

hook OnPlayerUpdate(playerid)
{
    new weapon, ammosd, string[128];
    GetPlayerWeaponData(playerid, 2, weapon, ammosd);
    if(weapon == 24 && PlayerInfo[playerid][pAmmo][ 1 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 6 ] >= 1)
		{
            RemovePlayerWeapon(playerid, 24);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    PlayerInfo[playerid][pBangDan][ 6 ]  -= 1;
		    GivePlayerAmmoEx(playerid, weapon, 7);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 3, weapon, ammosd);
	if(weapon == 25 && PlayerInfo[playerid][pAmmo][ 2 ] == 1)
    {
        if(PlayerInfo[playerid][pBangDan][ 2 ]  >= 1)
		{
            RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    PlayerInfo[playerid][pBangDan][ 2 ]  -= 1;
		    GivePlayerAmmoEx(playerid, weapon, 11);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "BUDDY", "buddy_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 3, weapon, ammosd);
    if(weapon == 27 && PlayerInfo[playerid][pAmmo][ 2 ] == 1)
    {
        if(PlayerInfo[playerid][pBangDan][ 10 ]  >= 1)
		{
            RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    PlayerInfo[playerid][pBangDan][ 10 ]  -= 1;
		    GivePlayerAmmoEx(playerid, weapon, 7);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 5, weapon, ammosd);
    if(weapon == 31 && PlayerInfo[playerid][pAmmo][ 4 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 9 ]  >= 1)
		{
            RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    PlayerInfo[playerid][pBangDan][ 9 ]  -= 1;
		    GivePlayerAmmoEx(playerid, weapon, 50);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 5, weapon, ammosd);
    if(weapon == 30 && PlayerInfo[playerid][pAmmo][ 4 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 8 ]  >= 1)
		{
		    PlayerInfo[playerid][pBangDan][ 8 ]  -= 1;
		    RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    GivePlayerAmmoEx(playerid, weapon, 30);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
	if(weapon == 29 && PlayerInfo[playerid][pAmmo][ 3 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 5 ]  >= 1)
		{
		    PlayerInfo[playerid][pBangDan][ 5 ]  -= 1;
		    RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    GivePlayerAmmoEx(playerid, weapon, 30);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
    if(weapon == 28 && PlayerInfo[playerid][pAmmo][ 3 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 3 ]  >= 1)
		{
		    PlayerInfo[playerid][pBangDan][ 3 ] -= 1;
		    RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    GivePlayerAmmoEx(playerid, weapon, 30);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
    if(weapon == 32 && PlayerInfo[playerid][pAmmo][ 3 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 4 ]  >= 1)
		{
		    PlayerInfo[playerid][pBangDan][ 4 ]  -= 1;
		    RemovePlayerWeapon(playerid, weapon);
            GivePlayerValidWeapon(playerid, weapon, 1);
		    GivePlayerAmmoEx(playerid, weapon, 30);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 6, weapon, ammosd);
    if(weapon == 33 && PlayerInfo[playerid][pAmmo][ 5 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 7 ]  >= 1)
		{
			///
			PlayerInfo[playerid][pBangDan][ 7 ]  -= 1;
			RemovePlayerWeapon(playerid, 33);
            GivePlayerValidWeapon(playerid, 33, 0);
		    GivePlayerAmmoEx(playerid, 33, 12);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 6, weapon, ammosd);
    if(weapon == 34 && PlayerInfo[playerid][pAmmo][ 5 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 11 ]  >= 1)
		{
			///
			PlayerInfo[playerid][pBangDan][ 11 ]  -= 1;
			RemovePlayerWeapon(playerid, 34);
            GivePlayerValidWeapon(playerid, 34, 0);
		    GivePlayerAmmoEx(playerid, 34, 12);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }
    GetPlayerWeaponData(playerid, 2, weapon, ammosd);
    if(weapon == 22 && PlayerInfo[playerid][pAmmo][ 1 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 1 ]  >= 1)
		{
			///
			PlayerInfo[playerid][pBangDan][ 1 ]  -= 1;
			RemovePlayerWeapon(playerid, 22);
            GivePlayerValidWeapon(playerid, 22, 0);
		    GivePlayerAmmoEx(playerid, 22, 18);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }

    GetPlayerWeaponData(playerid, 2, weapon, ammosd);
    if(weapon == 23 && PlayerInfo[playerid][pAmmo][ 1 ] == 1)
    {
		if(PlayerInfo[playerid][pBangDan][ 1 ]  >= 1)
		{
			///
			PlayerInfo[playerid][pBangDan][ 1 ]  -= 1;
			RemovePlayerWeapon(playerid, 23);
            GivePlayerValidWeapon(playerid, 23, 0);
		    GivePlayerAmmoEx(playerid, 23, 18);
		    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dang thay dan..", GetPlayerNameEx(playerid));
		    ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
		    SetPlayerArmedWeapon(playerid, weapon);
		    GameTextForPlayer(playerid, "~y~Dang thay dan", 5000, 3);
		}
    }

	if(PlayerInfo[playerid][pBangDan][ 6 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 24 && PlayerInfo[playerid][pAmmo][1] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 1 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 23 && PlayerInfo[playerid][pAmmo][1] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 1 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 22 && PlayerInfo[playerid][pAmmo][1] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 2 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 25 && PlayerInfo[playerid][pAmmo][2] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 10 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 27 && PlayerInfo[playerid][pAmmo][2] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 5 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 29 && PlayerInfo[playerid][pAmmo][3] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 4 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 28 && PlayerInfo[playerid][pAmmo][3] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 3 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 32 && PlayerInfo[playerid][pAmmo][3] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 9 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 31 && PlayerInfo[playerid][pAmmo][4] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 7 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 33 && PlayerInfo[playerid][pAmmo][5] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 11 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 34 && PlayerInfo[playerid][pAmmo][5] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
	if(PlayerInfo[playerid][pBangDan][ 8 ] == 0)
	{
		if(GetPlayerWeapon( playerid ) == 30 && PlayerInfo[playerid][pAmmo][4] == 1)
		{
            SetPlayerArmedWeapon(playerid, 0);
            GameTextForPlayer(playerid, "~y~Het dan", 5000, 3);
        }
    }
}


CMD:duavukhi(playerid, params[])	{
	return cmd_giveweapon(playerid, params);
}

CMD:giveweapon(playerid, params[])
{
	if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "   Ban khong the lam dieu nay khi dang trong su kien Hunger Games!");
	if(GetPVarInt(playerid, "IsInArena") >= 0)
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay trong dau truong!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the lam dieu nay khi dang trong su kien.");
		return 1;
	}
	new Float:health;
	GetPlayerHealth(playerid, health);
	if (health < 80)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give weapons if your health is below 80!");
		return 1;
	}

	if(GetPVarInt(playerid, "Injured") != 0||PlayerCuffed[playerid]!=0||PlayerInfo[playerid][pHospital]!=0||GetPlayerState(playerid) == 7)
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the lam dieu nay vao luc nay.");
		return 1;
	}
	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not give weapons in a vehicle!");
		return 1;
	}

	if (GetPVarInt(playerid, "GiveWeaponTimer") > 0)
	{
		new string[58];
		format(string, sizeof(string), "Ban phai doi  %d giay before giving another weapon.", GetPVarInt(playerid, "GiveWeaponTimer"));
		SendClientMessageEx(playerid,COLOR_GREY,string);
		return 1;
	}

	new string[128], giveplayerid, weapon[64];
	if(sscanf(params, "us[64]", giveplayerid, weapon))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /giveweapon [player] [weapon name]");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Ten co san : sdpistol, shotgun, 9mm, mp5, uzi, tec9, rifle, deagle, ak47, m4, spas12, sniper");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Ten co san : flowers, knuckles, baseballbat, cane, shovel, poolcue, golfclub, katana, dildo, parachute");
		return 1;
	}
	if (!IsPlayerConnected(giveplayerid)) {
		return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
	}
	if(IsPlayerInAnyVehicle(giveplayerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "You can not give weapons to players in vehicles!");
		return 1;
	}
	if(giveplayerid == playerid)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give a weapon to yourself!");
		return 1;
	}
	if(!ProxDetectorS(3.0, playerid, giveplayerid))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do khong gan ban.");
		return 1;
	}
	if(PlayerInfo[playerid][pMember] != PlayerInfo[giveplayerid][pMember] && PlayerInfo[playerid][pMember] != INVALID_GROUP_ID)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give weapons to players outside your faction!");
		return 1;
	}
	if(PlayerInfo[giveplayerid][pConnectHours] < 2 || PlayerInfo[giveplayerid][pWRestricted] > 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "That person is currently restricted from possessing weapons");
	if(IsPlayerInAnyVehicle(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Please exit the vehicle, before using this command.");
	if(strcmp(weapon, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 23)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 23 && PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
			    if(PlayerInfo[playerid][pDonateRank] > 2)
					return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");


				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your silenced pistol.");
				format(string, sizeof(string), "* %s has given %s their silenced pistol.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 23);
				GivePlayerValidWeapon(giveplayerid, 23, 1);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a silenced pistol or Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	if(strcmp(weapon, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 22)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 22 && PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your 9mm pistol.");
				format(string, sizeof(string), "* %s has given %s their 9mm pistol.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 22);
				GivePlayerValidWeapon(giveplayerid, 22, 1);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a silenced pistol or Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 25)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 3 ] != 25 && PlayerInfo[giveplayerid][pGuns][ 3 ] != 27)
			{
			    if(PlayerInfo[playerid][pDonateRank] > 2)
					return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your shotgun.");
				format(string, sizeof(string), "* %s has given %s their shotgun.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 25);
				GivePlayerValidWeapon(giveplayerid, 25, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 29)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
			    if(PlayerInfo[playerid][pDonateRank] > 2)
					return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your MP5.");
				format(string, sizeof(string), "* %s has given %s their MP5.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 29);
				GivePlayerValidWeapon(giveplayerid, 29, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 28)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Micro SMG.");
				format(string, sizeof(string), "* %s has given %s their Micro SMG.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 28);
				GivePlayerValidWeapon(giveplayerid, 28, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 32)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Tec-9.");
				format(string, sizeof(string), "* %s has given %s their Tec-9.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 32);
				GivePlayerValidWeapon(giveplayerid, 32, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a MP5, Micro SMG or Tec-9!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 24)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
			    if(PlayerInfo[playerid][pDonateRank] > 2)
					return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your Desert Eagle.");
				format(string, sizeof(string), "* %s has given %s their Desert Eagle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 24);
				GivePlayerValidWeapon(giveplayerid, 24, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a Desert Eeagle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "rifle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 33)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 6 ] != 33 && PlayerInfo[giveplayerid][pGuns][ 6 ] != 34)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your rifle.");
				format(string, sizeof(string), "* %s has given %s their rifle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 33);
				GivePlayerValidWeapon(giveplayerid, 33, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a rifle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 30)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 5 ] != 30 && PlayerInfo[giveplayerid][pGuns][ 5 ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your AK-47.");
				format(string, sizeof(string), "* %s has given %s their AK-47.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 30);
				GivePlayerValidWeapon(giveplayerid, 30, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a AK-47 or M4!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 31)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 5 ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your M4.");
				format(string, sizeof(string), "* %s has given %s their M4.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 31);
				GivePlayerValidWeapon(giveplayerid, 31, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a M4!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 27)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 3 ] != 27)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your SPAS-12.");
				format(string, sizeof(string), "* %s has given %s their SPAS-12.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 27);
				GivePlayerValidWeapon(giveplayerid, 27, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a SPAS-12!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 34)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 6 ] != 34)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your sniper rifle.");
				format(string, sizeof(string), "* %s has given %s their sniper rifle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 34);
				GivePlayerValidWeapon(giveplayerid, 34, 1);
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "That person already has a sniper rifle!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "flowers", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 14)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your flowers.");
			format(string, sizeof(string), "* %s has given %s their flowers.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 14);
			GivePlayerValidWeapon(giveplayerid, 14, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "knuckles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 0 ] == 1)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your brass knuckles.");
			format(string, sizeof(string), "* %s has given %s their brass knuckles.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 1);
			GivePlayerValidWeapon(giveplayerid, 1, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "baseballbat", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 5)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your baseball bat.");
			format(string, sizeof(string), "* %s has given %s their baseball bat.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 5);
			GivePlayerValidWeapon(giveplayerid, 5, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "cane", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 15)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your cane.");
			format(string, sizeof(string), "* %s has given %s their cane.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 15);
			GivePlayerValidWeapon(giveplayerid, 15, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "shovel", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 6)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your shovel.");
			format(string, sizeof(string), "* %s has given %s their shovel.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 6);
			GivePlayerValidWeapon(giveplayerid, 6, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "golfclub", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 2)
		{
		    if(PlayerInfo[playerid][pDonateRank] > 2)
				return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your golf club.");
			format(string, sizeof(string), "* %s has given %s golf club.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 2);
			GivePlayerValidWeapon(giveplayerid, 2, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "katana") == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 8)
		{
		    if(PlayerInfo[playerid][pDonateRank] > 2)
				return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your katana.");
			format(string, sizeof(string), "* %s has given %s their katana.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 8);
			GivePlayerValidWeapon(giveplayerid, 8, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "dildo", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 10)
		{
		    if(PlayerInfo[playerid][pDonateRank] > 2)
				return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your dildo.");
			format(string, sizeof(string), "* %s has given %s their dildo.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 10);
			GivePlayerValidWeapon(giveplayerid, 10, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else if(strcmp(weapon, "parachute", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 11 ] == 46)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have given away your parachute.");
			format(string, sizeof(string), "* %s has given %s their parachute.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 46);
			GivePlayerValidWeapon(giveplayerid, 46, 1);
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "You have entered an invalid weapon name.");
	}
	return 1;
}