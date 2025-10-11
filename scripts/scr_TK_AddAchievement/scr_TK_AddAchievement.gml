///@description TK - Add Achievement

function scr_TK_AddAchievement(targetID,targetGameID,targetName = "",targetDescription = "",targetIcon = undefined,targetHidden = false,targetSection = "",targetKey = "",targetValue = true)
{
	ds_map_add(global.TK_AchievementIDs,targetID,global.TK_TotalAchievementCount);
	
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].achievements[global.TK_AchievementCount[global.TK_GameIDs[? targetGameID]]] = 
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
	
	global.TK_AchievementCount[global.TK_GameIDs[? targetGameID]] += 1;
	
	global.TK_TotalAchievementCount += 1;
}