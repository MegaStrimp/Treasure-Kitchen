///@description TK - Set Games

function scr_TK_SetGames()
{
	#region Setup
	global.TK_GameCount = 0;
	
	global.TK_GameList = [];
	global.TK_GameIDs = ds_map_create();
	#endregion
	
	#region Games
	#region Kirby ~ Soft & Wet
	var targetDescription = "Welcome to Kirby ~ Soft & Wet! This is a game where you catch as many fish as you can! Simply throw your bobber and click the right keys! You can also come back in other times of day to get unique catches! Can you collect them all and fill your Fishbook?";
	var targetFilePath = environment_get_variable("LOCALAPPDATA") + chr(92) + "Kirby ~ Soft & Wet" + chr(92);
	
	scr_TK_AddGame("ksw","Kirby ~ Soft & Wet",targetDescription,spr_TK_Games_KSW_Icon,targetFilePath,["data1.ini"],"https://strimps-kitchen.itch.io/kirby-soft-and-wet","https://discord.gg/RDc8RrcbeK","https://github.com/MegaStrimp/Kirby-Soft-and-Wet");
	#endregion
	
	#region Kirby Gamble Galaxy Stories ~ The Future
	var targetDescription = "";
	
	scr_TK_AddGame("ggsFuture","Kirby Gamble Galaxy Stories ~ The Future",targetDescription,spr_TK_Games_GGSFuture_Icon);
	#endregion
	#endregion
}