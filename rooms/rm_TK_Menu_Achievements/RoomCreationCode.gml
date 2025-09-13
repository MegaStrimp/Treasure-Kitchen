///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_TK_Title")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_TK_Title,0,true);
}
#endregion

#region Background
var bg = instance_create_depth(0,0,100,obj_TK_Background_ColorSlide);
#endregion

#region Discord
scr_Discord_Setup(global.TK_GameList[global.TK_GameIDs[global.TK_CurrentGameIndex]] + " - " + "Achievements",-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion