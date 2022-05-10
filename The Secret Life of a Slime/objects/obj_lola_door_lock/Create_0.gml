/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//register daily event
ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
//register events per night
ds_map_add(obj_game_manager.objects_with_night_events,id,1)
if (global.days>global.lola_door_unlock_day&&global.time>=30){
	solid = false;
	interactable = false;
}


