///@description TK - Set Games

function scr_TK_SetGames()
{
	#region Setup
	global.TK_GameList = [];
	global.TK_GameIDs = ds_map_create();
	#endregion
	
	#region Games
	scr_TK_AddGame("ksw","Kirby ~ Soft & Wet");
	scr_TK_AddGame("ggsFuture","Kirby Gamble Galaxy Stories ~ The Future");
	scr_TK_AddGame("deirdre","Deirdre");
	#endregion
}