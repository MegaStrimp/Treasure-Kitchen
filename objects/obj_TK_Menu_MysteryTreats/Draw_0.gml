///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Completion
var color = "[#FFFFFF]";
var text = scribble(color + "12" + "/" + "21" + "[/color]");

if (isCompleted)
{
	color = "[#FFD800]";
	draw_sprite(spr_TK_Menu_Common_Completion,0,room_width - 20 - text.get_width(),2);
}

//scribble(color + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount) + "[/color]").align(fa_right).draw(room_width - 4,6);
text.align(fa_right).draw(room_width - 4,6);
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var refreshIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
if (targetIcon != undefined) refreshIcon = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + " Back").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));

var refreshText = scribble(refreshIcon + " Refresh").align(fa_center);
var refreshTextX = clamp(room_width - (refreshText.get_width() / 2) - 12,(room_width / 2) - 48,(room_width / 2));
refreshText.draw(refreshTextX,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));

var text = scribble(selectIcon + " Select");
text.draw(room_width - 4 - text.get_width(),room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
#endregion