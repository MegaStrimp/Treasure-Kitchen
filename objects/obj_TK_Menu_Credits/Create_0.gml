///@description Create

#region Credits Names
var i = 0;
creditsNames[i] = "    The Credits";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "Treasure Kitchen";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " Director";
i += 1;
creditsNames[i] = "  Chief Programmer";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "      Strimp";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " Art Designers";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "       Subsandwich";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "       SideLineGames";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "       Diamond";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " Music";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "  X-Naut Fortress - First Floor";
i += 1;
creditsNames[i] = "     Paper Mario TTYD Remake";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " All rights belong to";
i += 1;
creditsNames[i] = " their respective owners";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "Treasure Kitchen";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " From";
i += 1;
creditsNames[i] = "   Strimp's Kitchen";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " Created With";
i += 1;
creditsNames[i] = "  GameMaker";
i += 1;
creditsNames[i] = "   And StarDream";
i += 1;
creditsNames[i] = "    Framework";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = " Thank You For";
i += 1;
creditsNames[i] = "";
i += 1;
creditsNames[i] = "           Playing.";
i += 1;
#endregion

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

yStart = 160;
yScroll = 0;
scrollTimerMax = 4;
scrollTimer = scrollTimerMax;

exitTimer = ((array_length(creditsNames) + 24) * 8 * scrollTimerMax);
#endregion
#endregion