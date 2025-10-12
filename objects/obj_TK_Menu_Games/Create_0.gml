///@description Create

#region Initialize Variables
#region Selection List
selectionList = ds_list_create();

for (var i = 0; i < (global.TK_GameCount); i++)
{
	ds_list_add(selectionList,i);
}
#endregion

#region Button List
enum TK_GamesMenu_Buttons
{
	achievements,
	mysteryTreats,
	download,
	discord,
	sourceCode
}

buttonList[TK_GamesMenu_Buttons.achievements] = 
{
	text: "Achievements"
};
buttonList[TK_GamesMenu_Buttons.mysteryTreats] = 
{
	text: "Mystery Treats"
};
buttonList[TK_GamesMenu_Buttons.download] = 
{
	text: "Download"
};
buttonList[TK_GamesMenu_Buttons.discord] = 
{
	text: "Discord"
};
buttonList[TK_GamesMenu_Buttons.sourceCode] = 
{
	text: "Source Code"
};
#endregion

#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selection = 0;
selectionMax = global.TK_GameCount;

selectionOffsetMax = -200;
selectionOffset = global.TK_GamesMenuPage * selectionOffsetMax;

buttonSelectionList = -1;
buttonSelectionMax = 0;
buttonOffset = 24;
#endregion

#region Create Button Selection List
if (ds_exists(buttonSelectionList,ds_type_list)) ds_list_destroy(buttonSelectionList);
buttonSelectionList = ds_list_create();

if (global.TK_GameList[global.TK_CurrentGameIndex].achievements != []) ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.achievements);
if (global.TK_GameList[global.TK_CurrentGameIndex].mysteryTreats != []) ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.mysteryTreats);
if (global.TK_GameList[global.TK_CurrentGameIndex].webLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.download);
if (global.TK_GameList[global.TK_CurrentGameIndex].discordLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.discord);
if (global.TK_GameList[global.TK_CurrentGameIndex].sourceLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.sourceCode);

buttonSelectionMax = ds_list_size(buttonSelectionList);
#endregion
#endregion