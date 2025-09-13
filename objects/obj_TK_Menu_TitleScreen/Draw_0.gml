///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Subtitle
draw_sprite(spr_TK_Menu_TitleScreen_Subtitle,0,2 - (titleOffset * 100),2);
#endregion

#region Logo
draw_sprite(spr_TK_Menu_TitleScreen_Logo,0,room_width / 2,70 - (titleOffset * 110));
#endregion

#region Version Number
scribble(string(global.versionNumber)).align(fa_right).draw(236,4 - (titleOffset * 14));
#endregion

#region Button Hints
if (state >= 2) 
#endregion

#region Button Hints
if (state >= 2)
{
	var startIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("start"))];
	if (targetIcon != undefined) startIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble("PRESS " + startIcon).align(fa_center).draw(room_width / 2,144 + (2 * (buttonInputTimerComponent_ATimer != -1)));
}
#endregion