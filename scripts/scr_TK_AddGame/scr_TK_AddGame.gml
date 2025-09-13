///@description TK - Add Game

function scr_TK_AddGame(targetID,targetName = "",targetSavePath = "",targetSaveFileNames = [],targetWebLink = undefined,targetDiscordLink = undefined,targetSourceLink = undefined)
{
	ds_map_add(global.TK_GameIDs,targetID,ds_map_size(global.TK_GameIDs));
	
	global.TK_GameList[global.TK_GameIDs[? targetID]] = 
	{
        id: targetID,
		name: targetName,
		
		savePath: targetSavePath,
		saveFileNames: targetSaveFileNames,
		
		webLink: targetWebLink,
		discordLink: targetDiscordLink,
		sourceLink: targetSourceLink,
		
		achievements: [],
		achievementCount: 0,
		obtainedAchievementCount: 0,
		
		mysteryTreats: [],
		mysteryTreatCount: 0,
		obtainedMysteryTreatCount: 0
    };
}