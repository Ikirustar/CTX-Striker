function PlayerState_Free(){
	//Calculate Movement
	var move = key_right - key_left;
	var run = (shift * 5) * sign(move)
	var is_on_ground = place_meeting(x, y+1,obj_collision)
	
	hsp = (move * walksp) + run;
	vsp += grv;

	//Jump
	if (is_on_ground and key_up){
		can_jump = true
		vsp = -9;
	}
	else{
		if (key_up and can_jump){
			vsp = -7;
			can_jump = false
		}
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
		can_jump = true;
	}

	// Animation
	if (!is_on_ground){
		sprite_index = 	spr_player_jump;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0; 
	}
	else{
		image_speed = 1;
		if (hsp == 0) {
			sprite_index = spr_player_idle;
		}
		else if (shift){
			sprite_index = spr_player_run;
		} 
		else{
			sprite_index = spr_player_walk;	
		}
	}

	if (hsp != 0) image_xscale = sign(hsp);
	x += hsp;
	y += vsp;

	if (key_space) state = PLAYERSTATE.ATTACK_SLASH;	
}