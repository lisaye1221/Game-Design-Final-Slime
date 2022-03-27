/// @description Insert description here
// You can write your code in this editor

if (status == "busy"){

	//draw_set_color(c_white)
	//draw_set_halign(fa_center);
	draw_healthbar(x-28, y-50, x+28, y-62, time_left*10, c_black, c_lime, c_lime, 0, true, true);
}

else if (status == "repairing") {
	
	draw_healthbar(x-28, y-50, x+28, y-62, time_left*10, c_black, c_lime, c_lime, 0, true, true);
	
}