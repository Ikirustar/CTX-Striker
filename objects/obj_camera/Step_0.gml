/// @description Update camera
if	(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/10;
y += (yTo - y)/10;

x = clamp(x, view_w_half+buff, room_width - view_w_half-buff)
y = clamp(y, view_h_half+buff, room_width - view_h_half-buff)

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam, (x - view_w_half), y - view_h_half);
