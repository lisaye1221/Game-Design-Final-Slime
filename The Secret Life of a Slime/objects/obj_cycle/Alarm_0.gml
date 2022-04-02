// 0.75 is darkness; lessen this to make it lighter
if (alpha <= 0.75){
	alpha += global.delta_second*.5;		// speed with which day/night switches
	alarm[0] = 1;
} else if (alpha > 0.75){
	alarm[1] = room_speed * night;		// amount of time until changes to night
	show_debug_message("night");
	currently = "night";
}
