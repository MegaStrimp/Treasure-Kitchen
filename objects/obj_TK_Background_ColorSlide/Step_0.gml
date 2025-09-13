///@description Main

#region Pattern
patternX = (patternX + .15) % 32;
if (patternYOffset <= 2) patternY = (patternY + .25) % 32;
patternYOffset = lerp(patternYOffset,0,.025);
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