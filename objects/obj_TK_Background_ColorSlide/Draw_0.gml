///@description Draw

#region Background
var colorCycle = floor(global.currentTimePausable / 5) % 360;
var color1 = (145 + colorCycle) % 360;
var color2 = (110 + colorCycle) % 360;
var color3 = (145 + 20 + colorCycle) % 360;
var color4 = (110 + 20 + colorCycle) % 360;

draw_rectangle_color(0,0,global.gameWidth,global.gameHeight,make_color_hsv(color1,50,255),make_color_hsv(color2,50,255),make_color_hsv(color3,115,255),make_color_hsv(color4,115,255),false);
#endregion

#region Pattern
if (hasPattern)
{
	var xx = floor(global.currentTimePausable / 6) % 32;
	var yy = floor(global.currentTimePausable / 4) % 32;
	
	draw_set_alpha(.25);
	for (var i = 0; i < 9; i++)
	{
		for (var h = 0; h < 6; h++)
		{
			draw_sprite(spr_TK_Background_Pattern,0,xx + (32 * (i - 1)),yy + (32 * (h - 1)) + patternYOffset);
		}
	}
	draw_set_alpha(1);
}
#endregion