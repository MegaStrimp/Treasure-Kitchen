///@description Main

if (!localPause)
{
	#region Skip
	if ((!instance_exists(obj_Transition)) and ((input_check_pressed("start",playerNum))))
	{
		room_goto(rm_TK_Menu_TitleScreen);
		
		stateTimer = -1;
	}
	#endregion
	
	#region Title Offset
	titleOffset = lerp(titleOffset,!state,.05);
	#endregion
	
	#region State Timer
	if (stateTimer != -1)
	{
		stateTimer = max(stateTimer - speedMultFinal,0);
		if (stateTimer == 0)
		{
			state += 1;
			
			switch (state)
			{
				case 1:
				stateTimer = 90;
				break;
				
				case 2:
				stateTimer = -1;
				break;
			}
		}
	}
	#endregion
}

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion