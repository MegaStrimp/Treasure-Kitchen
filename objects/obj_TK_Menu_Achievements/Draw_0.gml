///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Achievements
var visibleCount = 3;
var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
var endIndex = min(startIndex + visibleCount + 2,selectionMax);

for (var i = startIndex; i < endIndex; i++)
{
	var yy = (selectionOffset * i) - pageOffset;
	
	if (i != (selectionMax - 1)) draw_sprite(spr_TK_Menu_Common_Decal1,0,16,55 + yy);
	
	if (global.TK_GameList[global.TK_CurrentGameIndex].achievements[i].isObtained)
	{
	    draw_sprite(global.TK_GameList[global.TK_CurrentGameIndex].achievements[i].icon,0,32,37 + yy);
		
		scribble(string(global.TK_GameList[global.TK_CurrentGameIndex].achievements[i].name)).draw(50,21 + yy);
		scribble_font_set_default("fnt_Advance_Small");
		scribble(string(global.TK_GameList[global.TK_CurrentGameIndex].achievements[i].description)).wrap(186).draw(50,31 + yy);
		scribble_font_set_default("fnt_Advance");
	}
	else
	{
	    draw_sprite(spr_TK_Achievement_Default_Icon_Locked,0,32,37 + yy);
		
		scribble_font_set_default("fnt_Advance_Gray");
		scribble("LOCKED").draw(50,21 + yy);
		scribble_font_set_default("fnt_Advance_Small_Gray");
		scribble("???").wrap(186).draw(50,31 + yy);
		scribble_font_set_default("fnt_Advance");
	}
}
#endregion

#region Completion
var color = "[#FFFFFF]";
if (isCompleted) color = "[#FFD800]";

var text = scribble(color + string(obtainedCount) + "/" + string(selectionMax) + "[/color]");

if (isCompleted) draw_sprite(spr_TK_Menu_Common_Completion,0,room_width - 20 - text.get_width(),2);

text.align(fa_right).draw(room_width - 4,6);
#endregion

#region Button Hints
var targetIcon = global.UI_IconBindings[? string(input_binding_get("up"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,3,21 + (selectionOffset * selection) - pageOffset);

var targetIcon = global.UI_IconBindings[? string(input_binding_get("down"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,3,41 + (selectionOffset * selection) - pageOffset);

var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var refreshIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
if (targetIcon != undefined) refreshIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + " Back").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));

var refreshText = scribble(refreshIcon + " Refresh").align(fa_center);
var refreshTextX = clamp(room_width - (refreshText.get_width() / 2) - 12,(room_width / 2) - 48,(room_width / 2));
refreshText.draw(refreshTextX,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
#endregion