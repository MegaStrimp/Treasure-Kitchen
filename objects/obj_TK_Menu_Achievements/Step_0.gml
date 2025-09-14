///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("up",playerNum))
	{
		//scr_PlaySfx(snd_KSW_BossHealth);
		
		//pageOffset = selection * selectionOffset;
		selection -= 1;
		pageOffsetTarget = selection * selectionOffset;
		
		if (selection < 0)
		{
			selection += selectionMax;
			pageOffsetTarget = selection * selectionOffset;
			pageOffset = pageOffsetTarget;
		}
	}
	
	if (input_check_pressed("down",playerNum))
	{
		//scr_PlaySfx(snd_KSW_BossHealth);
		
		//pageOffset = selection * selectionOffset;
		selection += 1;
		pageOffsetTarget = selection * selectionOffset;
		
		if (selection >= selectionMax)
		{
			selection -= selectionMax;
			pageOffsetTarget = selection * selectionOffset;
			pageOffset = pageOffsetTarget;
		}
	}
}
#endregion

#region Page Offset
pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
pageOffset = clamp(pageOffset,0,(selectionMax - 3) * selectionOffset);
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion