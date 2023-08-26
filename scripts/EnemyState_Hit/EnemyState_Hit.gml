// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Hit(argument0, argument1){
	vsp += grv;
	
	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_collision)){
		while (!place_meeting(x,y+ sign(vsp),obj_collision)){
			y += sign(vsp);
		}
		vsp = 0;	
	}
	
	y += vsp;
	
	//Damage control
	
	if (hp <= 0)
	{
		instance_destroy();	
	}
	
	//Player reaction
	with (obj_player)
	{
		can_jump = true
	}
	
	//Animation
	image_speed = 1;
	
	if (sprite_index != argument0)
	{
		sprite_index = argument0;
		image_index = 0;
	}
	
	if (Animation_End())
	{
		sprite_index = argument1;
		state = ENEMYSTATE.FREE;
	}
}