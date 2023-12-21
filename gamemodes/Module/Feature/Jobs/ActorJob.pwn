#include <a_samp>
#include <YSI\y_hooks>

#define 		KEY_AIM 		 			KEY_HANDBRAKE

new ActorBocVac;
new ActorXinViecContainer;
new ActorXinviecTrucker;
new ActorXinViecJob;
new ActorXinViecJob1;
new ActorQuanBar;

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if (IsPlayerInRangeOfPoint(playerid,3.0,2176.1968,-2258.1108,14.7734))
		{
			Dialog_Show(playerid, DIALOG_XINVIECBOCVAC, DIALOG_STYLE_LIST, "{FFFFFF}> Poster", "[+] {009600}Xin viec\n{ffffff}[-] {ff0000}Nghi viec", "Chon", "");
		}
		if (IsPlayerInRangeOfPoint(playerid,3.0,2794.7161,-2396.2034,13.6320))
		{
			Dialog_Show(playerid, DIALOG_XINVIECCONTAINER, DIALOG_STYLE_LIST, "{FFFFFF}> Container Job", "[+] {009600}Xin viec\n{ffffff}[-] {ff0000}Nghi viec", "Chon", "");			
		}
	}
	if(newkeys & KEY_NO)
    {
  		if(IsPlayerInRangeOfPoint(playerid, 7.0, 1508.6183,-1567.1193,13.7088))
		{
			if(GetPlayerSkin(playerid) != 240) return SendClientMessage(playerid,COLOR_YELLOW, "Dong khong khong dung voi quy dinh, vui long (/timduong) de di thay trang phuc");
			ShowPlayerDialog(playerid, 7484, DIALOG_STYLE_LIST, "Job Center", "Tham tu\nLuat su\nGai diem\nChe thuoc\nVe si\nSua xe\nBuon vu khi\nBoxer\nBuon thuoc phien\nTaxi\nChe tao\nPha nuoc\nNguoi van chuyen\nPizza Boy", "Tien hanh", "Huy bo");
		}
    }
    if(newkeys & KEY_NO)
    {
  		if(IsPlayerInRangeOfPoint(playerid, 7.0, 938.8167,6.1800,1000.9297))
		{
			new string[12800];
			format(string, sizeof(string), "Trai cay (Thuong hang) (1000$)\nShisha (Thuong hang) (1000$)\nKhoai Tay Chien (Binh thuong) (500$)\nCom tam (Binh Thuong) (500$)\nRuou de (Truyen Thong) (200$)\nBanh mi (Pew Pew) (200$)");
			Dialog_Show(playerid, DIALOG_FOODBAR, DIALOG_STYLE_LIST, "> Thuc don quan bar", string, "Select", "Cancel");
		}
    }
	return 1;
}
hook OnGameModeInit()
{
	//npc quan bar
	ActorQuanBar = CreateActor(240, 938.8167,6.1800,1000.9297,179.2424);
	//npcxinviec
	ActorXinViecJob = CreateActor(240, 1509.8574,-1564.7997,13.7088,183.4911);
	ActorXinViecJob1 = CreateActor(172, 1507.4467,-1564.7997,13.7088,183.4911);
	CreateDynamic3DTextLabel("{ffff00}<VAN PHONG HANH CHINH>{ffffff}\n---Nhan {00ffff}N{FFFFFF} de nhan viec---",COLOR_YELLOW, 1508.6183,-1567.1193,13.7088, 10.0);


	ActorBocVac = CreateActor(16,2176.1968,-2258.1108,14.7734,225.7567);
	ActorXinViecContainer = CreateActor(8,2794.7161,-2396.2034,13.6320,178.7565);
	ActorXinviecTrucker = CreateActor(299, POS_TRUCKER,30.0000);

	ApplyActorAnimation(ActorBocVac, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorXinViecContainer, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorXinviecTrucker, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorXinViecJob, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorXinViecJob1, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
	// actor quan bar
	ApplyActorAnimation(ActorQuanBar, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
    ////3DTEXT
    Create3DTextLabel("{ffff00}<FOOD BAR>{ffffff}\n{ffff00}<Name: Kiet Lac>{FFFFFF}\n---Nhan {00ffff}N{FFFFFF} de nhan viec---", -1, 938.8167,6.1800,1000.9297+1.2, 40.0, 0, 0);
	Create3DTextLabel("{ffff00}<POSTER JOB>{ffffff}\n---Nhan {00ffff}Y{FFFFFF} de nhan viec---", -1, 2176.1968,-2258.1108,14.7734+1.2, 40.0, 0, 0);
	Create3DTextLabel("{FFFF00}<BOX POSTER>{ffffff}\n---Nhan {00ffff}Y{FFFFFF} de lay hang---", -1, 2172.4666,-2250.5095,13.3025+1.2,40.0,0,0);
	CreateDynamic3DTextLabel("{00ff00}<BOX CONTAINER>{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de lay hang---", COLOR_LIGHTBLUE, 2769.0454,-2452.2751,13.6432+0.4,5.0);
	CreateDynamic3DTextLabel("{ffff00}<CONTAINER JOB>{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de nhan viec---", COLOR_LIGHTBLUE, 2794.7161,-2396.2034,13.6320+0.4,5.0);
	CreateDynamic3DTextLabel("{ffff00}<TRUCKER JOB>{FFFFFF}\n---Nhan {00ffff}/nhanviec{FFFFFF} de nhan viec---", -1, POS_TRUCKER+0.5, 20.0);// Trucker Job
	CreateDynamic3DTextLabel("{ffff00}<BOX TRUCKER>{FFFFFF}\n---Nhan {00ffff}/layhang{FFFFFF} de nhan viec---",COLOR_YELLOW, 2431.5337,-2112.5366,13.5469, 30.0); // Trucker Job

	// Pick Up
	CreatePickup(1239, 0, 2769.0454,-2452.2751,13.6432, -1);
	CreateDynamicPickup(1210, 23, 2431.5337,-2112.5366,13.5469, -1); // Trucker Job	
	return 1;
}

Dialog:DIALOG_FOODBAR(playerid, response, listitem, inputtext[])	
{
	if(response)
	{
		if(listitem == 0)
		{
			if(PlayerInfo[playerid][pCash] > 1000)
			{
				if(PlayerInfo[playerid][pHunger] < 100)
				{
					new randtraicay = 1 + random(50);
					PlayerInfo[playerid][pHunger] += randtraicay;
					PlayerInfo[playerid][pCash] -= 1000;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da an 1 dia trai cay va nhan duoc %d nang luong.", number_format(randtraicay));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);					
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
		if(listitem == 1)
		{
			if(PlayerInfo[playerid][pCash] > 1000)
			{
				if(PlayerInfo[playerid][pKhatNuoc] < 100)
				{
					new randshisha = 1 + random(50);
					PlayerInfo[playerid][pKhatNuoc] += randshisha;
					PlayerInfo[playerid][pCash] -= 1000;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da hit 1 thap shisha va nhan duoc %d nang luong.", number_format(randshisha));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);					
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
		if(listitem == 2)
		{
			if(PlayerInfo[playerid][pCash] > 500)
			{
				if(PlayerInfo[playerid][pHunger] < 100)
				{
					new randkhoaitay = 1 + random(50);
					PlayerInfo[playerid][pHunger] += randkhoaitay;
					PlayerInfo[playerid][pCash] -= 500;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da an 1 bich khoai tay chien va nhan duoc %d nang luong.", number_format(randkhoaitay));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
		if(listitem == 3)
		{
			if(PlayerInfo[playerid][pCash] > 500)
			{
				if(PlayerInfo[playerid][pHunger] < 100)
				{
					new randcomtam = 1 + random(50);
					PlayerInfo[playerid][pHunger] += randcomtam;
					PlayerInfo[playerid][pCash] -= 500;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da an dia com tam va nhan duoc %d nang luong.", number_format(randcomtam));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
		if(listitem == 4)
		{
			if(PlayerInfo[playerid][pCash] > 200)
			{
				if(PlayerInfo[playerid][pKhatNuoc] < 100)
				{
					new randruoude = 1 + random(50);
					PlayerInfo[playerid][pKhatNuoc] += randruoude;
					PlayerInfo[playerid][pCash] -= 200;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da uong 1 chung ruou de va nhan duoc %d nang luong.", number_format(randruoude));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
		if(listitem == 5)
		{
			if(PlayerInfo[playerid][pCash] > 200)
			{
				if(PlayerInfo[playerid][pHunger] < 100)
				{
					new randbanhmi = 1 + random(50);
					PlayerInfo[playerid][pHunger] += randbanhmi;
					PlayerInfo[playerid][pCash] -= 200;
					new stringz[1280];
					format(stringz, sizeof(stringz), "Ban da an 1 o banh mi pew pew va nhan duoc %d nang luong.", number_format(randbanhmi));
					SendClientMessageEx(playerid, COLOR_YELLOW2,stringz);
 				} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban da day du thuc an.");
			} else SendClientMessage(playerid, COLOR_YELLOW2,"Ban khong du tien de mua trai cay.");
		}
	}
	return 1;
}


Dialog:DIALOG_XINVIECCONTAINER(playerid, response, listitem, inputtext[]) 
{
	if(response)
	{
		if(listitem == 0)
		{
			if(PlayerInfo[playerid][pJob] == 0 || PlayerInfo[playerid][pJob2] == 0)
			{
            	Dialog_Show(playerid, DIALOG_XINVIECCONTAINER2, DIALOG_STYLE_MSGBOX, "{00ff00}Tai Xe Container", "Ban co chac chan muon lam cong viec Tai Xe Container nay khong ?", "Dong y", "Huy bo");
			}
			else return HienTextdraw(playerid, "~r~Ban hien tai da co viec lam, hay nghi viec de lam cong viec nay");
		}
		if(listitem == 1)
		{
			if(PlayerInfo[playerid][pJob] != 0)
			{
				HienTextdraw(playerid, "~g~Ban da xin nghi viec thanh cong.");
				PlayerInfo[playerid][pJob] = 0;
			}
			else
			{
				HienTextdraw(playerid, "~r~Hien tai ban khong co viec lam.");
			}
		}
	}
	return 1;
}

Dialog:DIALOG_XINVIECCONTAINER2(playerid, response, listitem, inputtext[]) 
{
    if(response)
    {
    	if(PlayerInfo[playerid][pJob] == 0 || PlayerInfo[playerid][pJob2] == 0)
    	{
			PlayerInfo[playerid][pJob] = 33;
			HienTextdraw(playerid, "~g~Ban da duoc nhan lam ~y~Tai Xe Container~g~.");
			PlayerInfo[playerid][pModel] = 20;
			SetPlayerSkin(playerid, 20);
		}
		else
		{
			HienTextdraw(playerid, "~r~Ban da co Cong viec nen, khong the nhan tiep tuc.");
		}
    }
    else
    {
		HienTextdraw(playerid, "~r~Ban khong duoc nhan do khong dong y, ~g~vui long xin viec lai va an vao dong y.");
    }
    return 1;
}

Dialog:DIALOG_XINVIECBOCVAC(playerid, response, listitem, inputtext[]) 
{
	if(response)
	{
		if(listitem == 0)
		{
			if(PlayerInfo[playerid][pJob] == 0 || PlayerInfo[playerid][pJob2] == 0)
			{
            	Dialog_Show(playerid, DIALOG_XINVIECBOCVAC2, DIALOG_STYLE_MSGBOX, "{FFFFFF}> Poster Job", "Ban co dong nhan viec khong?", "Yes", "Cancel");
			}
			else return HienTextdraw(playerid, "~r~Ban hien tai da co viec lam, hay nghi viec de lam cong viec nay");
		}
		if(listitem == 1)
		{
			if(PlayerInfo[playerid][pJob] != 0 || PlayerInfo[playerid][pJob2] != 0)
			{
				HienTextdraw(playerid, "~g~Ban da xin nghi viec thanh cong.");
				PlayerInfo[playerid][pJob] = 0;
			}
			else
			{
				HienTextdraw(playerid, "~r~Hien tai ban khong co viec lam.");
			}
		}
	}
	return 1;
}


Dialog:DIALOG_XINVIECBOCVAC2(playerid, response, listitem, inputtext[]) 
{
    if(response)
    {
    	if(PlayerInfo[playerid][pJob] == 0 || PlayerInfo[playerid][pJob2] == 0)
    	{
			PlayerInfo[playerid][pJob] = 32;
			HienTextdraw(playerid, "~g~Ban da duoc nhan lam ~y~Poster~g~.");
			PlayerInfo[playerid][pModel] = 16;
			SetPlayerSkin(playerid, 16);
		}
		else
		{
			HienTextdraw(playerid, "~r~Ban da cong viec, vui long (/nghiviec) de nhan viec khac.");
		}
    }
    else
    {
		HienTextdraw(playerid, "~r~Ban khong duoc nhan do khong dong y, ~g~vui long xin viec lai va an vao dong y.");
    }
    return 1;
}
