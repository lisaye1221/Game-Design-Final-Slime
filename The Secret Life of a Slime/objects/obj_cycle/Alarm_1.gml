// 0.95 is darkness; lessen this to make it lighter
if (alpha >= 0){
	alpha -= 0.01;		// speed with which day/night switches
	alarm[1] = 1;
} else if (alpha < 0){
	surface_free(surf)
	alarm[0] = 60 * day;		// amount of time until changes to night
	show_debug_message("day");
	currently = "day";
}
