///@description TK - Set Mystery Treats

function scr_TK_SetMysteryTreats()
{
	#region Setup
	global.TK_MysteryTreatIDs = ds_map_create();
	#endregion
	
	#region MysteryTreats
	#region Kirby ~ Soft & Wet
	var gameID = "ksw";
	
	var mysteryTreatID = "deirdreBobber";
	scr_TK_AddMysteryTreat(gameID + "_" + mysteryTreatID,gameID,"Deirdre Bobbers");
	#endregion
	
	#region Kirby Gamble Galaxy Stories ~ The Future
	var gameID = "ggsFuture";
	#endregion
	
	#region Deirdre
	var gameID = "deirdre";
	#endregion
	#endregion
}