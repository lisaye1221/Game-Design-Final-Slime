// 0.75 is darkness; lessen this to make it lighter
if (alpha <= 0.7){
	alpha += global.delta_second*(.07);		// speed with which day/night switches
	alarm[0] = 1;
} else if (alpha > 0.7){
	alarm[1] = room_speed * night;		// amount of time until changes to night
	show_debug_message("night");
	currently = "night";
}
