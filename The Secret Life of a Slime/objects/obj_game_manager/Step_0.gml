/// @description Insert description here
// You can write your code in this editor

// records how many seconds passed by
if(!global.dead){global.time += global.delta_second;}
// 60 seconds = 1 day
if (global.time >= 60){
	global.days++;
	global.time = 0;
}

// 60 seconds = 1 day
//global.days = floor(global.time / 60);
// lose 0.1 energy per second
global.energy -= ((.1*global.delta_second) * ENERGY_DEPLETION_MULTIPLIER);

if global.dead {
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
}

if(is_room_transition){
	if(in_town()){
		transformation_remaining = TOWN_TIME_LIMIT;
		transformation_cooldown = TRANSFORMATION_COOLDOWN_TIME;
	}
	is_room_transition = false;
}

if(in_town()){
	if (transformation_remaining >= 0) {
		transformation_remaining -= (global.delta_second);
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
		transformation_cooldown -= (global.delta_second);	
	}
	if(transformation_cooldown < 0) {transformation_cooldown = 0;}
	
	if firstTimeFarm {
		crop[0] = instance_create_layer(96, 288, "crops", obj_crop);
		crop[1] = instance_create_layer(128, 288, "crops", obj_crop);
		crop[2] = instance_create_layer(160, 288, "crops", obj_crop);
		crop[3] = instance_create_layer(192, 288, "crops", obj_crop);
		crop[4] = instance_create_layer(96, 320, "crops", obj_crop);
		crop[5] = instance_create_layer(128, 320, "crops", obj_crop);
		crop[6] = instance_create_layer(160, 320, "crops", obj_crop);
		crop[7] = instance_create_layer(192, 320, "crops", obj_crop);
	
		firstTimeFarm = false;
	}

}
