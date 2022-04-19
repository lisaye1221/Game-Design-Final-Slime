/// Hitting 'E' Flags that the inventory should open

if (global.menu_on) {
	global.menu_on = false;
	global.paused = false;
}
else{
	global.menu_on = true;
	global.paused = true;
	i_cursor = 0;
	tab_index = 0;
	ach_index = 1;
	journal_index = 0;
}