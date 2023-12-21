#include <a_samp>
#include <YSI\y_hooks>

#define             DS_BANNED_PAGE_1                (6900)

new PageBanned[MAX_PLAYERS];

CMD:danhsachbanned(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)  {
	    PageBanned[playerid] = 1;
        DanhSachBanned(playerid, 0, 20);
        
	}else SendClientMessage(playerid, COLOR_YELLOW2, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

stock DanhSachBanned(playerid, min, max) {
	new Cache:Result,LastLogin[15000],pNameget[15000],vzstr[50000];
	new BannedBy[15000], LydoBanned[15000];
	new IDAccount[15000];
	new Danhsachbanned[50000];
	Result = mysql_query(MainPipeline, "SELECT `LastLogin`, `Username`, `id`, `BannedBy`, `ReasonBanned`, `Band` FROM `accounts` WHERE `Band` >= 1");
	if(cache_num_rows())
	{
		for(new i = min; i < max; i++) {
		    cache_get_field_content(i, "id", IDAccount);
			cache_get_field_content(i, "Username", pNameget);
			cache_get_field_content(i, "LastLogin", LastLogin);
			cache_get_field_content(i, "BannedBy", BannedBy);
			cache_get_field_content(i, "ReasonBanned", LydoBanned);
			format(vzstr, 50000, "%s\n%d\t{cc6600}%s{FFFFFF} (%s)\t{ff0000}%s{FFFFFF} - {ffff66}%s{FFFFFF}\tLast Login: {00FF00}%s{FFFFFF}",vzstr,i,pNameget,IDAccount,BannedBy, LydoBanned,LastLogin);
   			format(Danhsachbanned, 50000, "%s\n%s\n{ff0000}Next{FFFFFF}\n{ff6600}Back{FFFFFF}", "ID\tTen (Account ID)\tBanned by - Ly do\tHinh thuc banned\tLan dang nhap cuoi", vzstr);
		}
	}
	else
	{
		return SendClientMessage(playerid, COLOR_WHITE, "Du lieu khong duoc xu ly.");
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DS_BANNED_PAGE_1, DIALOG_STYLE_TABLIST_HEADERS, "List Banned", Danhsachbanned, "Yes", "Cancel");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if (dialogid == DS_BANNED_PAGE_1 && response == 1) {
		// NEXT PAGE
		if(listitem == 20 && PageBanned[playerid] == 1) {
		    PageBanned[playerid] = 2;
            DanhSachBanned(playerid, 20, 40);
            return 1;
        }
        if(listitem == 20 && PageBanned[playerid] == 2) {
            PageBanned[playerid] = 3;
            DanhSachBanned(playerid, 40, 60);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 3) {
            DanhSachBanned(playerid, 60, 80);
            PageBanned[playerid] = 4;
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 4) {
		    PageBanned[playerid] = 5;
            DanhSachBanned(playerid, 80, 100);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 5) {
		    PageBanned[playerid] = 6;
            DanhSachBanned(playerid, 100, 120);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 6) {
		    PageBanned[playerid] = 7;
            DanhSachBanned(playerid, 120, 140);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 7) {
		    PageBanned[playerid] = 8;
            DanhSachBanned(playerid, 140, 160);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 8) {
		    PageBanned[playerid] = 9;
            DanhSachBanned(playerid, 160, 180);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 9) {
		    PageBanned[playerid] = 10;
            DanhSachBanned(playerid, 180, 200);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 10) {
		    PageBanned[playerid] = 11;
		    DanhSachBanned(playerid, 200, 220);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 11) {
		    PageBanned[playerid] = 12;
		    DanhSachBanned(playerid, 220, 240);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 12) {
		    PageBanned[playerid] = 13;
		    DanhSachBanned(playerid, 240, 260);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 13) {
		    PageBanned[playerid] = 14;
		    DanhSachBanned(playerid, 260, 280);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 14) {
		    PageBanned[playerid] = 15;
		    DanhSachBanned(playerid, 280, 300);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 15) {
		    PageBanned[playerid] = 16;
            DanhSachBanned(playerid, 300, 320);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 16) {
		    PageBanned[playerid] = 17;
		    DanhSachBanned(playerid, 320, 340);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 17) {
		    PageBanned[playerid] = 18;
		    DanhSachBanned(playerid, 340, 360);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 18) {
		    PageBanned[playerid] = 19;
		    DanhSachBanned(playerid, 360, 380);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 19) {
		    PageBanned[playerid] = 20;
		    DanhSachBanned(playerid, 380, 400);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 20) {
		    PageBanned[playerid] = 21;
		    DanhSachBanned(playerid, 400, 420);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 21) {
		    PageBanned[playerid] = 22;
		    DanhSachBanned(playerid, 420, 440);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 22) {
		    PageBanned[playerid] = 23;
		    DanhSachBanned(playerid, 440, 460);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 23) {
		    PageBanned[playerid] = 24;
		    DanhSachBanned(playerid, 460, 480);
            return 1;
		}
		if(listitem == 20 && PageBanned[playerid] == 24) {
		    PageBanned[playerid] = 25;
		    DanhSachBanned(playerid, 480, 500);
            return 1;
		}
		// DOWN PAGE
		if(listitem == 21)
		{
		    if(PageBanned[playerid] == 2) {
		        PageBanned[playerid] = 1;
	            DanhSachBanned(playerid, 0, 20);
	            return 1;
            }
            if(PageBanned[playerid] == 3) {
                PageBanned[playerid] = 2;
	            DanhSachBanned(playerid, 20, 40);
	            return 1;
            }
            if(PageBanned[playerid] == 4) {
                PageBanned[playerid] = 3;
	            DanhSachBanned(playerid, 40, 60);
	            return 1;
            }
            if(PageBanned[playerid] == 5) {
                PageBanned[playerid] = 4;
	            DanhSachBanned(playerid, 60, 80);
	            return 1;
            }
            if(PageBanned[playerid] == 6) {
                PageBanned[playerid] = 5;
	            DanhSachBanned(playerid, 80, 100);
	            return 1;
            }
            if(PageBanned[playerid] == 7) {
                PageBanned[playerid] = 6;
	            DanhSachBanned(playerid, 100, 120);
	            return 1;
            }
            if(PageBanned[playerid] == 8) {
                PageBanned[playerid] = 7;
	            DanhSachBanned(playerid, 120, 140);
	            return 1;
            }
            if(PageBanned[playerid] == 9) {
                PageBanned[playerid] = 8;
	            DanhSachBanned(playerid, 140, 160);
	            return 1;
            }
            if(PageBanned[playerid] == 10) {
                PageBanned[playerid] = 9;
	            DanhSachBanned(playerid, 160, 180);
	            return 1;
            }
            if(PageBanned[playerid] == 11) {
                PageBanned[playerid] = 10;
                DanhSachBanned(playerid, 180, 200);
	            return 1;
            }
            if(PageBanned[playerid] == 12) {
                PageBanned[playerid] = 11;
                DanhSachBanned(playerid, 200, 220);
	            return 1;
            }
            if(PageBanned[playerid] == 13) {
                PageBanned[playerid] = 12;
                DanhSachBanned(playerid, 220, 240);
	            return 1;
            }
            if(PageBanned[playerid] == 14) {
                PageBanned[playerid] = 13;
                DanhSachBanned(playerid, 240, 260);
	            return 1;
            }
            if(PageBanned[playerid] == 15) {
                PageBanned[playerid] = 14;
                DanhSachBanned(playerid, 260, 280);
	            return 1;
            }
            if(PageBanned[playerid] == 16) {
                PageBanned[playerid] = 15;
                DanhSachBanned(playerid, 280, 300);
	            return 1;
            }
            if(PageBanned[playerid] == 17) {
                PageBanned[playerid] = 16;
                DanhSachBanned(playerid, 300, 320);
	            return 1;
            }
            if(PageBanned[playerid] == 18) {
                PageBanned[playerid] = 17;
                DanhSachBanned(playerid, 320, 340);
	            return 1;
            }
            if(PageBanned[playerid] == 19) {
                PageBanned[playerid] = 18;
                DanhSachBanned(playerid, 340, 360);
	            return 1;
            }
            if(PageBanned[playerid] == 20) {
                PageBanned[playerid] = 19;
                DanhSachBanned(playerid, 360, 380);
	            return 1;
            }
            if(PageBanned[playerid] == 21) {
                PageBanned[playerid] = 20;
                DanhSachBanned(playerid, 380, 400);
	            return 1;
            }
            if(PageBanned[playerid] == 22) {
                PageBanned[playerid] = 21;
                DanhSachBanned(playerid, 400, 420);
	            return 1;
            }
            if(PageBanned[playerid] == 23) {
                PageBanned[playerid] = 22;
                DanhSachBanned(playerid, 420, 440);
	            return 1;
            }
            if(PageBanned[playerid] == 24) {
                PageBanned[playerid] = 23;
                DanhSachBanned(playerid, 440, 460);
	            return 1;
            }
            if(PageBanned[playerid] == 25) {
                PageBanned[playerid] = 24;
                DanhSachBanned(playerid, 460, 480);
	            return 1;
            }
		}
	}
	return 1;
}
