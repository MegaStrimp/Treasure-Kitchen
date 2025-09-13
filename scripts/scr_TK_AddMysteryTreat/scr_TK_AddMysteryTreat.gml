///@description TK - Add Mystery Treat

function scr_TK_AddMysteryTreat(targetID,targetGameID,targetName = "",targetIcon = undefined)
{
	ds_map_add(global.TK_MysteryTreatIDs,targetID,ds_map_size(global.TK_MysteryTreatIDs));
	
	var tempMysteryTreatCount = global.TK_GameList[global.TK_GameIDs[? targetGameID]].mysteryTreatCount;
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].mysteryTreatCount += 1;
	
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].mysteryTreats[tempMysteryTreatCount] = 
	{
        id: targetID,
		name: targetName,
		icon: targetIcon,
		
		canBeObtained: false,
		isObtained: false
    };
}