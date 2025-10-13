///@description TK - Set Mystery Treats

function scr_TK_SetMysteryTreats()
{
	#region Setup
	global.TK_TotalMysteryTreatCount = 0;
	for (var i = 0; i < global.TK_GameCount; i++) global.TK_MysteryTreatCount[i] = 0;
	
	global.TK_MysteryTreatIDs = ds_map_create();
	#endregion
	
	#region MysteryTreats
	#region Kirby ~ Soft & Wet
	var gameID = "ksw";
	
	//scr_TK_AddMysteryTreat(gameID + "_" + mysteryTreatID,gameID,"Deirdre Bobbers","Timeless Gods in Affordable Form!",spr_TK_MysteryTreat_KSW_Icon_DeirdreBobbers);
	#endregion
	
	#region Kirby Gamble Galaxy Stories ~ The Future
	var gameID = "ggsFuture";
	#endregion
	#endregion
}