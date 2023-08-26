/// @description Jimmy behavior

switch (state)
{
	case ENEMYSTATE.FREE: EnemyState_Free(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(spr_enemy_hit, spr_jimmy); break;
}

