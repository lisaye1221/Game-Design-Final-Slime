/// Hitting Escape can also close the inventory should open

if (global.menu_on) {
	global.menu_on = false;
	global.paused = is_previously_paused;
	audio_play_sound(sfx_open_close_inventory, 0, false);
}
