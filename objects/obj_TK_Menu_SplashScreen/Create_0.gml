///@description Create

#region Initialize Variables
#region Menu Variables
playerNum = 0;

state = 0;
stateTimer = 90;

chestX = global.gameWidth / 2;
chestY = global.gameHeight / 2 + 48;
chestIndex = 0;
chestWaveStrength = 0;
chestWaveStrengthMax = 10;
chestShake = 0;
chestShakeMax = 5;

hasStrimp = false;
strimpIndex = 0;
strimpAnimSpd = sprite_get_speed(spr_TK_Menu_SplashScreen_Strimp) / 60;
strimpImageNumber = sprite_get_number(spr_TK_Menu_SplashScreen_Strimp);
strimpYTarget = chestY;
strimpY = strimpYTarget;
strimpTextAlphaTarget = 0;
strimpTextAlpha = strimpTextAlphaTarget;

flashEffect = false;
#endregion
#endregion

#region Spawn Particles
for (var i = 0; i < 8; i++) scr_TK_ParticleSet_Sparkle(irandom_range(0,global.gameWidth),irandom_range(0,global.gameHeight),0,random_range(.25,.75));
#endregion