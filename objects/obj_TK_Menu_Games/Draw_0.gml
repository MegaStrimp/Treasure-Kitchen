///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Game Info
#region Icon
var targetIcon = global.TK_GameList[ds_list_find_value(selectionList,selection)].icon;

if (targetIcon != -1) draw_sprite(targetIcon,0,global.gameWidth / 2,50 + selectionOffset);
#endregion

#region Name
var targetName = global.TK_GameList[ds_list_find_value(selectionList,selection)].name;

var nameText = scribble(targetName);
nameText.align(fa_center).wrap(200).draw(global.gameWidth / 2,58 + selectionOffset);
#endregion

#region Description
scribble_font_set_default("fnt_Advance_Small");

var targetDescription = global.TK_GameList[ds_list_find_value(selectionList,selection)].description;

var descriptionText = scribble(targetDescription);
descriptionText.align(fa_center).wrap(200).draw(global.gameWidth / 2,65 + selectionOffset + nameText.get_height());

scribble_font_set_default("fnt_Advance");
#endregion
#endregion

#region Game Amount
scribble(string(selection + 1) + "/" + string(selectionMax)).align(fa_right).draw(room_width - 4,6 + selectionOffset);
#endregion

#region Buttons
for (var i = 0; i < buttonSelectionMax; i++)
{
	scribble(buttonList[i].text).draw(20 + (8 * (i == global.TK_GamesMenuButtonSelection)),220 + (i * buttonOffset) + selectionOffset);
}
#endregion

#region Button Hints
var targetIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,2,74 + selectionOffset + (2 * (buttonInputTimerComponent_LeftTimer != -1)));

var targetIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,238 - sprite_get_width(targetIcon),74 + selectionOffset + (2 * (buttonInputTimerComponent_RightTimer != -1)));

var targetIcon = global.UI_IconBindings[? string(input_binding_get("up"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,3,208 + (buttonOffset * global.TK_GamesMenuButtonSelection) + selectionOffset);

var targetIcon = global.UI_IconBindings[? string(input_binding_get("down"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,3,228 + (buttonOffset * global.TK_GamesMenuButtonSelection) + selectionOffset);

var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var creditsIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
if (targetIcon != undefined) creditsIcon = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + " Back").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));

var creditsText = scribble(creditsIcon + " Credits").align(fa_center);
var creditsTextX = clamp(room_width - (creditsText.get_width() / 2) - 12,(room_width / 2) - 48,(room_width / 2));
creditsText.draw(creditsTextX,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));

var text = scribble(selectIcon + " Select");
text.draw(room_width - 4 - text.get_width(),room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
#endregion