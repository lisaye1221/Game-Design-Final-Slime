/// @description Insert description here
// You can write your code in this editor

if debug_mode
{
    draw_text(32, 32, "FPS = " + string(fps_real));
}
draw_set_font(ft_status)
if not global.dead {
	// moved this code to obj_gui_manager
	
	//// day and time
	//draw_set_valign(fa_center);
	//draw_set_halign(fa_left);
	//draw_set_color(c_white);
	//draw_text(15, 560, "Time: " + string(floor(global.time)));
	//draw_text(15, 580, "Day: " + string(floor(global.days)));
	

	//// gold
	//draw_set_color(c_yellow);
	//draw_text(15, 600, "Gold: " + string(floor(global.gold)) + "G");

	//if(in_town()){
	//	draw_set_color(c_red);
	//	draw_text(15, 615, "Transformation time remaining: " + string(ceil(transformation_remaining)));
	//	draw_healthbar(15, 625, 115, 645, transformation_remaining * (100 / TOWN_TIME_LIMIT), c_white, c_red, c_red, 0, true, true);
	//}

	//// energy
	//draw_set_color(c_aqua);
	//draw_text(15, 655, "Energy: " + string(ceil(global.energy)));
	//draw_healthbar(15, 670, 445, 690, global.energy, c_grey, c_aqua, c_aqua, 0, true, true);
}
else {
	draw_set_halign(fa_center);
	draw_text(450, 350, "You die of starvation after living "+ string(floor(global.days)) +" days");
	draw_text(450, 380, "PRESS R TO PLAY AGAIN!");
}