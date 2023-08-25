// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){
	vsp += grv;
	
	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_collision)){
		while (!place_meeting(x,y+ sign(vsp),obj_collision)){
			y += sign(vsp);
		}
		vsp = 0;	
	}
	
	y += vsp;
}