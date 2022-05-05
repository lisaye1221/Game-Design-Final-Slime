/// @description daily unlock check
// You can write your code in this editor
show_debug_message("daily check for oven triggered")

if (global.days>=global.advanced_machine_unlock_day){
	should_be_interactable = true;
	if (in_home()){
		activation_text_triggered = true;
		if (place_free(x,y)){
			create_textbox(activation_text)
			active_persistent_interactable(id);		
		}else{
			alarm[11] = 1;
		}
	}
	ds_map_delete(obj_game_manager.objects_with_daily_events,id)
}