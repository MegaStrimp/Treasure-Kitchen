///@description Creation Code

#region Go To Next Room
var targetRoom = rm_TK_Menu_SplashScreen;

if (global.debug)
{
	room_goto(targetRoom);
}
else
{
	/*scr_AlivelInstaller_Setup("https://github.com/MegaStrimp/KSW-Semi-Closed-Beta/releases/latest/download/KirbySoftAndWet.zip",
	"https://raw.githubusercontent.com/MegaStrimp/KSW-Semi-Closed-Beta/refs/heads/main/version",
	targetRoom);*/
	
	room_goto(targetRoom);
}
#endregion