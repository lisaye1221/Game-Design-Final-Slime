/// @description Insert description here
// You can write your code in this editor

// records how many seconds passed by
if(!global.dead and !global.tutorial_active){global.time += global.delta_second;}
// 60 seconds = 1 day
if (global.time >= 60){
	night_events_triggered = false;
	global.days++;
	//daily event trigger
	// show_debug_message("new day: "+string(global.days))
	var _mapcp = ds_map_create()
	ds_map_copy(_mapcp,objects_with_daily_events)
	for (var _curr = ds_map_find_first(_mapcp);
		_curr!=undefined;
		_curr = ds_map_find_next(_mapcp, _curr);){
			with (_curr){
				event_user(ds_map_find_value(other.objects_with_daily_events,_curr))
			}
	}
	global.time = 0;
}
//night event trigger
if (!night_events_triggered && global.time >= 30){

	night_events_triggered = true;
	show_debug_message("triggering night events")
	for (var _curr = ds_map_find_first(objects_with_night_events);
		_curr!=undefined;
		_curr = ds_map_find_next(objects_with_night_events, _curr);){
			with (_curr){
				event_user(ds_map_find_value(other.objects_with_night_events,_curr))
			}
	}
}
// 60 seconds = 1 day
//global.days = floor(global.time / 60);
// lose 0.1 energy per second

if !global.tutorial_active {
	global.energy -= ((.1*global.delta_second) * ENERGY_DEPLETION_MULTIPLIER);
	
	if (global.energy <= 20) && (!energy_popup) {
		energy_popup = true;
		ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, undefined);
		ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 3);
		
	}
	else if (global.energy > 20) && (energy_popup) {
		energy_popup = false;
	}
}

if global.tutorial_active and global.tutorial_ended and global.tutorial_ended_farm {
	global.tutorial_active = false;
}

if global.dead {
	if (keyboard_check_pressed(ord("R"))) {
		audio_stop_all();
		game_restart();
	}
}

if(is_room_transition){
	if(in_town()){
		transformation_remaining = TOWN_TIME_LIMIT;
		transformation_cooldown = TRANSFORMATION_COOLDOWN_TIME;
		transformation_popup = false;
	}
}

if(in_town()){
	if(!global.has_been_to_town){
			global.has_been_to_town = true;
			create_textbox("first-time-in-town");
	}
	if (transformation_remaining >= 0) {
		transformation_remaining -= (global.delta_second);
		
		if (transformation_remaining <= 10) && (!transformation_popup) {
			ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, undefined);
			ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 2);
			transformation_popup = true;
		}
		
	}
	else{ // exceeded transformation time
		forced_home(obj_player);
		should_warn_went_over_time_limit = true;
	}
}

if(room == home){
	if(transformation_cooldown > 0){
		transformation_cooldown -= (global.delta_second);	
	}
	
	if(transformation_cooldown < 0) {transformation_cooldown = 0;}
	
	if(should_warn_went_over_time_limit){
		create_textbox("warn-transformation-time-out");	
		should_warn_went_over_time_limit = false;
	}
	
}
