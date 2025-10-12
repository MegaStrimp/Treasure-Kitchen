///@description Create

#region Initialize Variables
#region Screen Variables
global.shaders = true;

global.gameWidthTarget = 240;
global.gameHeightTarget = 160;
global.gameTileSize = 24;

global.windowScaleTarget = 1;

global.fullscreen = true;
#endregion

#region Gameplay Variables
global.gameTitle = "Treasure Kitchen";
global.versionNumber = "0.1.0";

global.TK_CurrentGameIndex = 0;
global.TK_GamesMenuPage = 0;
global.TK_GamesMenuButtonSelection = 0;

scr_TK_SetGames();
scr_TK_SetAchievements();
scr_TK_SetMysteryTreats();
#endregion
#endregion

#region Adapt Display Size To Monitor
global.windowScaleTarget = floor(scr_Screen_ScaleToScreenSize() / 1.2);
#endregion

#region Audio Setup
//scr_TK_AudioSetup();
#endregion

#region Set Window Caption
var flavorText = scr_TK_SetFlavorText();

window_set_caption(global.gameTitle + " " + string(global.versionNumber) + " - " + string(flavorText));
#endregion

#region Load Data
/*scr_KSW_LoadGeneral("general.ini");
scr_KSW_SaveGeneral("general.ini");

scr_KSW_LoadConfig("config.ini");
scr_KSW_SaveConfig("config.ini");

scr_KSW_DefaultKeybindings();
scr_KSW_LoadControls("controls.ini");

scr_KSW_LoadData("data1.ini");

scr_KSW_LoadMysteryTreats("mysteryTreats.ini");*/
#endregion

#region Discord Rich Presence Setup
var appId = "1416431708936343593";
global.discord = true;

if (!np_initdiscord(appId, true, np_steam_app_id_empty))
{
	global.discord = false;
	Error_msg = "Discord RPC unable to initialize";
}

scr_Discord_Setup(-1,-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion