/// @description ?

vsp = 0;
grv = 0.3;
hp = 5;

state = ENEMYSTATE2.FREE;
hitByAttack = ds_list_create();

enum ENEMYSTATE2
{
	FREE,
	HIT
}

alarm[0] = 120;