/// @description John's behavior

switch (state)
{
	case ENEMYSTATE.FREE: EnemyState_Free() image_speed = 0;; break ;
	case ENEMYSTATE.HIT: EnemyState_Hit(spr_john_hit, spr_john); break;
}

if (place_meeting(x,y+vsp,obj_collision))
{
	image_index = 0;
}




