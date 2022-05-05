/// Hitting 'E' Flags that the inventory should open

if (global.menu_on) {
	
	if !global.tutorial_stage_on_inv {
		global.menu_on = false;
		global.paused = is_previously_paused;
		audio_play_sound(sfx_open_close_inventory, 0, false);
	}
}
else{
	if(
	!(instance_exists(obj_textbox) or instance_exists(obj_room_transition)) && 
	(instance_exists(obj_storage_manager) && !obj_storage_manager.storage_open) &&
	 (instance_exists(obj_food_cook_menu) && !obj_food_cook_menu.menu_open)
	){// restrict opening inventory in some cases
		
		global.menu_on = true;
		is_previously_paused = global.paused;
		global.paused = true;
		i_cursor = 0;
		tab_index = 0;
		ach_index = 1;
		journal_index = 0;
		audio_play_sound(sfx_open_close_inventory, 0, false);
	}
}