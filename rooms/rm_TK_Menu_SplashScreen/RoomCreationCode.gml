///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Background
var bg = instance_create_depth(0,0,100,obj_TK_Background_ColorSlide);
bg.hasPattern = false;
#endregion

#region Discord
scr_Discord_Setup("Splash Screen",-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion