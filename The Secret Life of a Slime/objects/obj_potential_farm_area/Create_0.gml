/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (unlock_method == "day"){
	ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
}