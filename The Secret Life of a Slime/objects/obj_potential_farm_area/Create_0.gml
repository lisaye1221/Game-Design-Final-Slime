/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (place_meeting(x,y,obj_farm_plot)||place_meeting(x,y,obj_harvestable)){
	instance_destroy()
}
else{
	if (unlock_method == "day"||gold_and_days){
		ds_map_add(obj_game_manager.objects_with_daily_events,id,0)
	}
	gold_and_days_daycount = 20;
}

