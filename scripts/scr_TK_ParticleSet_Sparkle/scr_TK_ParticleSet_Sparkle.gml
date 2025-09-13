///@description TK - Particle Set - Sparkle

function scr_TK_ParticleSet_Sparkle(parTargetX,parTargetY,parTargetHsp,parTargetVsp)
{
	var par = [];
	
	par[0] = instance_create_depth(parTargetX,parTargetY,depth + 1,obj_Particle);
	with (par[0])
	{
		sprite_index = spr_TK_Particle_Sparkle;
		persistent = true;
		destroyTimer = 720;
		hsp = parTargetHsp;
		vsp = parTargetVsp;
	}
	
	return par;
}