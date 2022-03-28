/// @description Insert description here
// You can write your code in this editor

// records how many seconds passed by
var delta_second = delta_time/1000000;
if(!global.dead){global.time += delta_time/1000000;}
// 60 seconds = 1 day
global.days = floor(global.time / 60);
// lose 0.1 energy per second
global.energy -= ((.1*delta_second) * ENERGY_DEPLETION_MULTIPLIER);

if global.dead {
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
}

if(is_room_transition){
	length = array_length(home_instances_to_run_in_bg)
	if(room == home){
		for(var i = 0; i < length; i++){
			home_instances_to_run_in_bg[i].visible = true;
			home_instances_to_run_in_bg[i].interactable = true;
			home_instances_to_run_in_bg[i].solid = true;
		}
	}
	else if(room != home){
		transformation_remaining = TOWN_TIME_LIMIT;
		transformation_cooldown = TRANSFORMATION_COOLDOWN_TIME;
		instance_deactivate_object(obj_bush_solid);
		for(var i = 0; i < length; i++){
			home_instances_to_run_in_bg[i].visible = false;	
			home_instances_to_run_in_bg[i].interactable = false;
			home_instances_to_run_in_bg[i].solid = false;
		}
	}
	is_room_transition = false;
}

if(room != home){
	if (transformation_remaining >= 0) {
		transformation_remaining -= (delta_second);
	}
	else{
		if (global.player_in_shop) {
			global.force_player_home = true;
		}
		else {
			forced_home(obj_player);
		}
	}
}
if(room == home){
	if(transformation_cooldown > 0){
		transformation_cooldown -= (delta_second);	
	}
	if(transformation_cooldown < 0) {transformation_cooldown = 0;}
}
