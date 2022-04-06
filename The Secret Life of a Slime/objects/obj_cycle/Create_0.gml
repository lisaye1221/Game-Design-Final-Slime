alpha = 0;
day = 39;	// amount of time that it stays at day
night = 19;		// amound of time that it stays at night
color = c_black;

alarm[0] = room_speed * day;

guiHeight = display_get_gui_height();

currently = "day";


surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();