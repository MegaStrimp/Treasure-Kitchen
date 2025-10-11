///@description Create

#region Initialize Variables
#region Selection List
selectionList = ds_list_create();

for (var i = 0; i < (global.TK_AchievementCount[global.TK_CurrentGameIndex]); i++)
{
	ds_list_add(selectionList,i);
}
#endregion

#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selection = 0;
selectionMax = global.TK_AchievementCount[global.TK_CurrentGameIndex];
selectionOffset = 44;
pageOffset = 0;
pageOffsetTarget = 0;
obtainedCount = global.TK_GameList[global.TK_CurrentGameIndex].obtainedAchievementCount;
isCompleted = (obtainedCount >= selectionMax);
#endregion
#endregion