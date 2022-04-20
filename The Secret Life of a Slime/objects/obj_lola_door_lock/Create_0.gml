/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
show_debug_message("adding to map"+string(id))
ds_map_add(obj_game_manager.objects_with_night_events,id,1)
if (global.days>global.lola_door_unlock_day&&global.time>=40){
	solid = false;
	interactable = false;
}


