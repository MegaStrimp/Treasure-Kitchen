///@description TK - Add Game

function scr_TK_AddGame(targetID,targetName = "",targetSavePath = "",targetSaveFileNames = [],targetWebLink = undefined,targetDiscordLink = undefined,targetSourceLink = undefined)
{
	ds_map_add(global.TK_GameIDs,targetID,global.TK_GameCount);
	
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
		obtainedAchievementCount: 0,
		
		mysteryTreats: [],
		obtainedMysteryTreatCount: 0
    };
	
	global.TK_GameCount += 1;
}