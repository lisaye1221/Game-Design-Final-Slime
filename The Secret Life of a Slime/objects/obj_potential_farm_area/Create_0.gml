/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (!place_free(x,y)){
	instance_destroy()
}
else{
	if (unlock_method == "day"){
		ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
	}
	gold_and_days_daycount = 20;
}

