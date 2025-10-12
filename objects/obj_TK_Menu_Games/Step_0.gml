///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if (global.TK_GamesMenuPage == 0)
	{
		if (input_check_pressed("left",playerNum))
		{
			scr_PlaySfx(snd_TK_BossHealth);
			
			selection = ((selection - 1) + selectionMax) % selectionMax;
		}
		
		if (input_check_pressed("right",playerNum))
		{
			scr_PlaySfx(snd_TK_BossHealth);
			
			selection = ((selection + 1) + selectionMax) % selectionMax;
		}
		
		if (input_check_pressed("A",playerNum))
		{
			scr_PlaySfx(snd_TK_ButtonChange);
			
			global.TK_CurrentGameIndex = ds_list_find_value(selectionList,selection);
			
			if (ds_exists(buttonSelectionList,ds_type_list)) ds_list_destroy(buttonSelectionList);
			buttonSelectionList = ds_list_create();
			
			if (global.TK_GameList[global.TK_CurrentGameIndex].achievements != []) ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.achievements);
			if (global.TK_GameList[global.TK_CurrentGameIndex].mysteryTreats != []) ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.mysteryTreats);
			if (global.TK_GameList[global.TK_CurrentGameIndex].webLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.download);
			if (global.TK_GameList[global.TK_CurrentGameIndex].discordLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.discord);
			if (global.TK_GameList[global.TK_CurrentGameIndex].sourceLink != "") ds_list_add(buttonSelectionList,TK_GamesMenu_Buttons.sourceCode);
			
			buttonSelectionMax = ds_list_size(buttonSelectionList);
			
			global.TK_GamesMenuButtonSelection = 0;
			
			global.TK_GamesMenuPage = 1;
		}
		
		if (input_check_pressed("B",playerNum))
		{
			scr_PlaySfx(snd_TK_ButtonNo);
			
			scr_GoToRoom(rm_TK_Menu_TitleScreen,true);
		}
	}
	else
	{
		if (input_check_pressed("up",playerNum))
		{
			scr_PlaySfx(snd_TK_BossHealth);
			
			global.TK_GamesMenuButtonSelection = ((global.TK_GamesMenuButtonSelection - 1) + buttonSelectionMax) % buttonSelectionMax;
		}
		
		if (input_check_pressed("down",playerNum))
		{
			scr_PlaySfx(snd_TK_BossHealth);
			
			global.TK_GamesMenuButtonSelection = ((global.TK_GamesMenuButtonSelection + 1) + buttonSelectionMax) % buttonSelectionMax;
		}
		
		if (input_check_pressed("A",playerNum))
		{
			scr_PlaySfx(snd_TK_ButtonYes);
			
			switch (ds_list_find_value(buttonSelectionList,global.TK_GamesMenuButtonSelection))
			{
				case TK_GamesMenu_Buttons.achievements:
				scr_GoToRoom(rm_TK_Menu_Achievements,true);
				break;
				
				case TK_GamesMenu_Buttons.mysteryTreats:
				scr_GoToRoom(rm_TK_Menu_MysteryTreats,true);
				break;
				
				case TK_GamesMenu_Buttons.download:
				url_open(global.TK_GameList[global.TK_CurrentGameIndex].webLink);
				break;
				
				case TK_GamesMenu_Buttons.discord:
				url_open(global.TK_GameList[global.TK_CurrentGameIndex].discordLink);
				break;
				
				case TK_GamesMenu_Buttons.sourceCode:
				url_open(global.TK_GameList[global.TK_CurrentGameIndex].sourceLink);
				break;
			}
			
			global.TK_GamesMenuPage = 1;
		}
		
		if (input_check_pressed("B",playerNum))
		{
			scr_PlaySfx(snd_TK_ButtonChange);
			
			global.TK_GamesMenuPage = 0;
		}
	}
	
	if (input_check_pressed("Y",playerNum))
	{
		scr_PlaySfx(snd_TK_ButtonNo);
			
		scr_GoToRoom(rm_TK_Menu_Credits,true);
	}
}
#endregion

#region Selection Offset
selectionOffset = lerp(selectionOffset,global.TK_GamesMenuPage * selectionOffsetMax,.075);
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion