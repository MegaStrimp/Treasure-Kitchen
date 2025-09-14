///@description TK - Set Achievements

function scr_TK_SetAchievements()
{
	#region Setup
	global.TK_AchievementIDs = ds_map_create();
	#endregion
	
	#region Achievements
	#region Kirby ~ Soft & Wet
	var gameID = "ksw";
	
	/*
	var achievementID = "";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"",undefined,"achievementStatus",achievementID + "_Obtained");
	*/
	
	var achievementID = "catch1";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Nice Catch!","Catch 1 Fish",spr_TK_Achievement_KSW_Icon_NiceCatch,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catch50";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Getting Used","Catch 50 Fish",spr_TK_Achievement_KSW_Icon_GettingUsed,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catch100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Silly Angler","Catch 100 Fish",spr_TK_Achievement_KSW_Icon_SillyAngler,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catch500";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Novice Fisher","Catch 500 Fish",spr_TK_Achievement_KSW_Icon_NoviceFisher,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catch2500";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Master Captain","Catch 2500 Fish",spr_TK_Achievement_KSW_Icon_MasterCaptain,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catch5000";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Aqualiss","Catch 5000 Fish",spr_TK_Achievement_KSW_Icon_TrueAqualiss,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchDay100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Sunny Side Up","Catch 100 Fish at Daytime",spr_TK_Achievement_KSW_Icon_SunnySideUp,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchDay1000";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Beach Boy","Catch 1000 Fish at Daytime",spr_TK_Achievement_KSW_Icon_TrueBeachBoy,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchAfternoon100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Sunset Haze","Catch 100 Fish at Afternoon",spr_TK_Achievement_KSW_Icon_SunsetHaze,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchAfternoon1000";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Romantic","Catch 1000 Fish at Afternoon",spr_TK_Achievement_KSW_Icon_TrueRomantic,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchNight100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Rises The Moon","Catch 100 Fish at Midnight",spr_TK_Achievement_KSW_Icon_RisesTheMoon,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchNight1000";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Moonlight","Catch 1000 Fish at Midnight",spr_TK_Achievement_KSW_Icon_TrueMoonlight,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "combo25";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Reflex Grinder","Catch 25 Fish Without Failing",spr_TK_Achievement_KSW_Icon_ReflexGrinder,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "combo50";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Prey's Frenemy","Catch 50 Fish Without Failing",spr_TK_Achievement_KSW_Icon_PreysFrenemy,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "combo100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Hawkeye","Catch 100 Fish Without Failing",spr_TK_Achievement_KSW_Icon_TrueHawkeye,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchUnique20";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Hobbyist","Collect 20 Unique Fish",spr_TK_Achievement_KSW_Icon_Hobbyist,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchUnique100";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Collector","Collect 100 Unique Fish",spr_TK_Achievement_KSW_Icon_Collector,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchUniqueAll";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Completionist","Collect All Unique Fish",spr_TK_Achievement_KSW_Icon_Completionist,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchShinyAll";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Omni","Collect All Shinies",spr_TK_Achievement_KSW_Icon_TrueOmni,true,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "grams10k";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Big Guy","Get 10000 G Worth of Fish",spr_TK_Achievement_KSW_Icon_BigGuy,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "grams200k";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Mass Attack","Get 200000 G Worth of Fish",spr_TK_Achievement_KSW_Icon_MassAttack,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "grams1m";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Millionth Puff","Get 1000000 G Worth of Fish",spr_TK_Achievement_KSW_Icon_MillionthPuff,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "grams10m";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Matter","Get 9999999 G Worth of Fish",spr_TK_Achievement_KSW_Icon_TrueMatter,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "playtime1";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Enjoyer","Play for an Hour",spr_TK_Achievement_KSW_Icon_Enjoyer,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "playtime5";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Fan","Play for 5 Hours",spr_TK_Achievement_KSW_Icon_Fan,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "playtime20";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"True Obsessive","Play for 20 Hours",spr_TK_Achievement_KSW_Icon_TrueObsessive,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "catchShiny";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Geiger Counter","Catch an Anomaly",spr_TK_Achievement_KSW_Icon_GeigerCounter,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "getAllStars";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Master's Crown","Obtain All Stars",spr_TK_Achievement_KSW_Icon_MastersCrown,"achievementStatus",achievementID + "_Obtained");

	var achievementID = "doEverything";
	scr_TK_AddAchievement(gameID + "_" + achievementID,gameID,"Legend of the Night","Do Everything",spr_TK_Achievement_KSW_Icon_LegendOfTheNight,true,"achievementStatus",achievementID + "_Obtained");
	#endregion
	
	#region Kirby Gamble Galaxy Stories ~ The Future
	var gameID = "ggsFuture";
	#endregion
	
	#region Deirdre
	var gameID = "deirdre";
	#endregion
	#endregion
}