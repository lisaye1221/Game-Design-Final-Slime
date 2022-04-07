/// Hitting 'E' Flags that the inventory should open

if (global.menu_on) {
	global.menu_on = false;
	global.paused = false;
}
else if (!global.paused){
	global.menu_on = true;
	global.paused = true;
	i_cursor = 0;
}