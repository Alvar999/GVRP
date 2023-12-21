#pragma warning disable 215
#pragma warning disable 208, 201, 217, 219, 209, 235, 202, 216, 213
#define SERVER_GM_TEXT "GVRP v0.1.7 "

#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_ini>
#include <YSI\y_va>
#include <YSI\y_iterate>
#include <mobile>
#include <colandreas>
#include <dini>
#include <discord-cmd>
#include <discord-connector>
#include <no-reload>
#include <easyDialog>
#include <Pawn.Regex>
#include <timestamptodate>
#include <PreviewModelDialog>


#if defined DCMD_PREFIX
#undef DCMD_PREFIX
#endif

#if defined SOCKET_ENABLED
#include <socket>
#endif

// Core
#include "./Module/_defines.pwn" 
#include "./Module/_enums.pwn"
#include "./Module/_variables.pwn"
#include "./Module/_timers.pwn"
#include "./Module/_functions.pwn"
#include "./Module/_commands.pwn"
#include "./Module/_mysql.pwn"
#include "./Module/_OnPlayerLoad.pwn"
#include "./Module/_callbacks.pwn"
#include "./Module/_textdraws.pwn"
#include "./Module/_streamer.pwn"
#include "./Module/_OnDialogResponse.pwn"
// Admin
#include "./Module/Feature/Admin/Spector.pwn"
#include "./Module/Feature/Admin/ListBanned.pwn"
#include "./Module/Feature/Admin/Banned.pwn"
#include "./Module/Feature/Admin/CheckOnline.pwn"
// Ammo
#include "./Module/Feature/Ammo/Ammo.pwn"
// Anti Cheat
#include "./Module/Feature/Anticheat/cheat_antigod.pwn"
#include "./Module/Feature/Anticheat/cheat_weapon.pwn"
#include "./Module/Feature/Anticheat/cheat_fakespawn.pwn"
#include "./Module/Feature/Anticheat/cheat_driver.pwn"
// Bank
#include "./Module/Feature/Bank/RobBank.pwn"
// Bugging
#include "./Module/Feature/Bugging/Bugging.pwn"
// Business
#include "./Module/Feature/Business/Business_function.pwn"
#include "./Module/Feature/Business/Business_dialog.pwn"
#include "./Module/Feature/Business/Business_rob.pwn"
// Capture
#include "./Module/Feature/Capture/Capture.pwn"
#include "./Module/Feature/Capture/Capture_command.pwn"
#include "./Module/Feature/Capture/Capture_function.pwn"
#include "./Module/Feature/Capture/Capture_task.pwn"
// Chat
#include "./Module/Feature/Chat/ChatSupport.pwn"
// Discord-Connector
#include "./Module/Feature/Discord-Connector/Message.pwn"
#include "./Module/Feature/Discord-Connector/Admin.pwn"
#include "./Module/Feature/Discord-Connector/VerifyAccount.pwn"
#include "./Module/Feature/Discord-Connector/FixCrash.pwn"
// Event
#include "./Module/Feature/Event/Taifaint.pwn"
// Food
#include "./Module/Feature/Food/Food_main.pwn"
#include "./Module/Feature/Food/Food_function.pwn"
#include "./Module/Feature/Food/Food_textdraw.pwn"
// Inventory
#include "./Module/Feature/Inventory/Inventory_main.pwn"
#include "./Module/Feature/Inventory/Inventory_function.pwn"
#include "./Module/Feature/Inventory/Inventory_hook.pwn"
//Jobs
#include "./Module/Feature/Jobs/TruckerDelivery.pwn"
#include "./Module/Feature/Jobs/PizzaDelivery.pwn"
#include "./Module/Feature/Jobs/FisherMan.pwn"
#include "./Module/Feature/Jobs/Site.pwn"
#include "./Module/Feature/Jobs/Smuggle.pwn"
#include "./Module/Feature/Jobs/ContainerDelivery.pwn"
#include "./Module/Feature/Jobs/Porters.pwn"
#include "./Module/Feature/Jobs/ActorJob.pwn"
#include "./Module/Feature/Jobs/LumberJack.pwn"
#include "./Module/Feature/Jobs/Loading.pwn"
// Mechanic
#include "./Module/Feature/Mechanic/Mechanic_main.pwn"
// Misc
#include "./Module/Feature/Misc/Marcos.pwn"
// Mod
#include "./Module/Feature/Mode/FlyMode.pwn"
// Safezone
#include "./Module/Feature/Safezone/Safezone.pwn"
#include "./Module/Feature/Safezone/Safezone_hook.pwn"
#include "./Module/Feature/Safezone/Safezone_function.pwn"
// Server
#include "./Module/Feature/Server/Logo.pwn"
// Skin
#include "./Module/Feature/Skin/Skin_Buy.pwn"
// Speed
#include "./Module/Feature/Speed/SpeedoMeter.pwn"
// Vehicle
#include "./Module/Feature/Vehicle/SeatBelt.pwn"
#include "./Module/Feature/Vehicle/VehicleMod.pwn"
#pragma disablerecursion

main() {}

public OnGameModeInit()
{
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
