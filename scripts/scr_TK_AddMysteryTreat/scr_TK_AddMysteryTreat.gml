///@description TK - Add Mystery Treat

function scr_TK_AddMysteryTreat(targetID,targetGameID,targetName = "",targetDescription = "",targetIcon = undefined)
{
	ds_map_add(global.TK_MysteryTreatIDs,targetID,global.TK_TotalMysteryTreatCount);
	
	global.TK_GameList[global.TK_GameIDs[? targetGameID]].mysteryTreats[global.TK_MysteryTreatCount[global.TK_GameIDs[? targetGameID]]] = 
	{
        id: targetID,
		name: targetName,
		description: targetDescription,
		icon: targetIcon,
		
		canBeObtained: false,
		isObtained: false
    };
	
	global.TK_MysteryTreatCount[global.TK_GameIDs[? targetGameID]] += 1;
	
	global.TK_TotalMysteryTreatCount += 1;
}