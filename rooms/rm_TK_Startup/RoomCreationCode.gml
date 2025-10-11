///@description Creation Code

#region Go To Next Room
var targetRoom = rm_TK_Menu_SplashScreen;

var targetRoom = rm_TK_Menu_MysteryTreats;
global.TK_CurrentGameIndex = 0;

if (global.debug)
{
	room_goto(targetRoom);
}
else
{
	scr_AlivelInstaller_Setup("https://github.com/MegaStrimp/Treasure-Kitchen/releases/latest/download/KirbySoftAndWet.zip",
	"https://raw.githubusercontent.com/MegaStrimp/Treasure-Kitchen/refs/heads/main/version",
	targetRoom);
	
	room_goto(targetRoom);
}
#endregion