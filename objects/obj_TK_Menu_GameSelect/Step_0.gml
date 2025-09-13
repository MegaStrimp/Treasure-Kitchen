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
				case 2:
				case 3:
				scr_PlaySfx(snd_DL1_Cannonball);
				
				chestWaveStrength = chestWaveStrengthMax;
				
				stateTimer = 60;
				break;
				
				case 4:
				flashEffect = true;
				
				stateTimer = 10;
				break;
				
				case 5:
				chestIndex = 1;
				flashEffect = false;
				
				stateTimer = 60;
				break;
				
				case 99:
				room_goto(rm_TK_Menu_TitleScreen);
				
				stateTimer = -1;
				break;
			}
		}
	}
	#endregion
	
	#region Sparkle Timer
	if (sparkleTimer != -1)
	{
		sparkleTimer = max(sparkleTimer - speedMultFinal,0);
		if (sparkleTimer == 0)
		{
			scr_TK_ParticleSet_Sparkle(irandom_range(0,global.gameWidth),-16,0,random_range(.25,.75));
			
			sparkleTimer = sparkleTimerMax;
		}
	}
	#endregion
}