/// @description Flash Handeling
draw_self();

if (flash > 0)
{
	flash --;
	shader_set(shd_invert_color);
	draw_self();
	shader_reset();
}






