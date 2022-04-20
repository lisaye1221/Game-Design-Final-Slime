/// Hitting Escape can also close the inventory should open

if (global.menu_on) {
	global.menu_on = false;
	global.paused = is_previously_paused;
}
