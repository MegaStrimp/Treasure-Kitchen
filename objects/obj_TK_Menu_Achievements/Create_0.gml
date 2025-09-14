///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selection = 0;
selectionMax = global.TK_GameList[global.TK_CurrentGameIndex].achievementCount;
selectionOffset = 44;
pageOffset = 0;
pageOffsetTarget = 0;
obtainedCount = global.TK_GameList[global.TK_CurrentGameIndex].obtainedAchievementCount;
isCompleted = (obtainedCount >= selectionMax);
#endregion
#endregion