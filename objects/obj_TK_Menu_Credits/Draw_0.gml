///@description Draw

#region Draw Credits
var yy = 0;
var text = "";
var sep = 16;

scribble_font_set_default("fnt_Advance");

for (var i = 0; i < array_length(creditsNames); i++)
{
	text = string_upper(creditsNames[i]);
	
	scribble(text).draw(8,yStart + yScroll + yy);
	yy += sep;
}
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
#endregion