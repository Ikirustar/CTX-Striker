// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Hit(){
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
	if (sprite_index != spr_enemy_hit)
	{
		sprite_index = spr_enemy_hit;
		image_index = 0;
	}
	
	if (Animation_End())
	{
		sprite_index = spr_enemy;
		state = ENEMYSTATE.FREE;
	}
}