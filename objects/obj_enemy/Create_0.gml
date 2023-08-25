vsp = 0;
grv = 0.3;
hp = 5;


state = ENEMYSTATE.FREE;
hitByAttack = ds_list_create();

enum ENEMYSTATE
{
	FREE,
	HIT
}

