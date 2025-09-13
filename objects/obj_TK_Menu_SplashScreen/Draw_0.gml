///@description Draw

#region Sonic Mania Circle (Unused)
/*
var wave = sine_between(global.currentTimePausable / 200,1,1,3);
var xx = 100;
var yy = 100;
var rr = 8 * wave;
var angle = global.currentTimePausable % 360;

draw_circle(xx,yy,rr,true);
draw_circle(xx + lengthdir_x(rr,angle),yy + lengthdir_y(rr,angle),5,false);
*/
#endregion

#region Chest
var chestWave = sine_between(global.currentTimePausable,10,-chestWaveStrength,chestWaveStrength);

draw_sprite_ext(spr_TK_Menu_SplashScreen_Chest,chestIndex,chestX + irandom_range(-chestShake,chestShake),chestY + sine_wave(current_time / (4000 / (1 + chestIndex)),1,3,0),1,1,chestWave,c_white,1);
#endregion

#region Strimp's Kitchen Text
if (hasStrimp)
{
	var strimpWave = sine_wave(current_time / 2000,1,3,0);
	
	draw_sprite_ext(spr_TK_Menu_SplashScreen_StrimpsKitchen,0,room_width / 2,strimpY + strimpWave,1,1,0,c_white,strimpTextAlpha);
	draw_sprite(spr_TK_Menu_SplashScreen_Strimp,0,room_width / 2,strimpY + strimpWave);
}
#endregion

#region Flash Effect
if (flashEffect) draw_rectangle(0,0,global.gameWidth,global.gameHeight,false);
#endregion

/*
#region Strimp's Kitchen Text
if (state < 3)
{
	draw_sprite_ext(spr_KSW_Menu_SplashScreen_StrimpsKitchen_Transparent,0,room_width / 2,textY,1,1,wave,image_blend,image_alpha);
	draw_sprite(spr_KSW_Menu_SplashScreen_Strimp,strimpIndex,room_width / 2,textY + strimpY);
	if (strimpBubbleSize != 0) draw_sprite_ext(spr_KSW_Menu_SplashScreen_StrimpBubble,strimpIndex,room_width / 2,textY + strimpY,strimpBubbleSize,strimpBubbleSize,image_angle,image_blend,image_alpha);
}
#endregion

#region Made In
if (state >= 3)
{
	draw_sprite(spr_KSW_Menu_SplashScreen_GameMaker,0,4,24 + wave / 2);
	draw_sprite(spr_KSW_Menu_SplashScreen_StarDream,0,112,58 + wave / 2);
}
#endregion

#region Disclaimer
draw_sprite(spr_KSW_Menu_SplashScreen_Disclaimer,0,0,0);
#endregion