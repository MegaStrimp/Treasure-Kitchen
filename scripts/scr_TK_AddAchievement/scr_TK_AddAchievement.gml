///@description TK - Add Achievement

function scr_TK_AddAchievement(targetID,targetGameID,targetName = "",targetDescription = "",targetIcon = undefined,targetHidden = false,targetSection = "",targetKey = "",targetValue = true)
{
	ds_map_add(global.TK_AchievementIDs,targetID,ds_map_size(global.TK_AchievementIDs));
	
	var tempAchievementCount = global.TK_GameList[global.TK_GameIDs[? targetGameID]].achievementCount;
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].achievementCount += 1;
	
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].achievements[tempAchievementCount] = 
	{
        id: targetID,
		name: targetName,
		description: targetDescription,
		icon: targetIcon,
		isHidden: targetHidden,
		
		isObtained: false,
		
		section: targetSection,
		key: targetKey,
		value: targetValue
    };
}