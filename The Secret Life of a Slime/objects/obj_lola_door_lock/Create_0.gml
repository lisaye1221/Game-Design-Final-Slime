/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
show_debug_message("adding to map"+string(id))

if (global.days>global.nelu_door_unlock_day){
	instance_destroy();
}

