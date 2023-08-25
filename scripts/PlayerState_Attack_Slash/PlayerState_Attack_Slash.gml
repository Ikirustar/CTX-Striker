// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash(){
	image_speed = 1;
	//Calculate Movement
	var move = key_right - key_left;
	var run = (shift * 5) * sign(move)
	var is_on_ground = place_meeting(x, y+1,obj_collision)

	hsp = (move * walksp) + run;
	vsp += grv;
	
	if (key_up and can_jump)
	{
		vsp = -7;
		can_jump = false
	}
	
	//Horizontal Collision
	if (place_meeting(x + hsp,y,obj_collision)){
		while (!place_meeting(x + sign(hsp),y,obj_collision)){
			x += sign(hsp);
		}
		hsp = 0;
	}

	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_collision)){
		while (!place_meeting(x,y+ sign(vsp),obj_collision)){
			y += sign(vsp);
		}
		vsp = 0;	
	}
	
	//Attack handeling 
	if (!is_on_ground) 
	{
		ProcessAttack(spr_player_attack1Idle, spr_player_attack1HB);
	} 
	else
	{
		ProcessAttack(spr_player_attack1Idle, spr_player_attack1HB);
	}
		
	if ((key_space) && (image_index > 2))
	{
		state = PLAYERSTATE.ATTACK_COMBO;
	}
	
	if (Animation_End()){
		sprite_index = spr_player_idle;
		state = PLAYERSTATE.FREE;
	}
	
	if (hsp != 0) image_xscale = sign(hsp);
	
	x += hsp;
	y += vsp;
}