/// @description Insert description here
// You can write your code in this editor

audio_play_sound(bgm_home, 0, true)

// record how many days passed by
global.days = 0;
// record how much time passed by
global.time = 0;

// higher = depletes faster
ENERGY_DEPLETION_MULTIPLIER = 3.5;


// ** Game States ** 
is_room_transition = false;
// bushes
crop[0] = instance_create_layer(96, 288, "crops", obj_crop);
crop[1] = instance_create_layer(128, 288, "crops", obj_crop);
crop[2] = instance_create_layer(160, 288, "crops", obj_crop);
crop[3] = instance_create_layer(192, 288, "crops", obj_crop);
crop[4] = instance_create_layer(96, 320, "crops", obj_crop);
crop[5] = instance_create_layer(128, 320, "crops", obj_crop);
crop[6] = instance_create_layer(160, 320, "crops", obj_crop);
crop[7] = instance_create_layer(192, 320, "crops", obj_crop);

home_instances_to_run_in_bg = array_create(0);
// machine
array_push(home_instances_to_run_in_bg, inst_AA6628E);
for(var i = 0; i < instance_number(obj_bush); i++){
	show_debug_message("pushing"+string(i))
	array_push(home_instances_to_run_in_bg,instance_find(obj_bush,i));
}
for(var i = 0; i < array_length(crop); i++){
	array_push(home_instances_to_run_in_bg, instance_find(obj_crop,i));
}


// ** Time Limit for Town ** //
TOWN_TIME_LIMIT = 40; // seconds
EXCEED_TIME_ENERGY_COST = 15;
TRANSFORMATION_COOLDOWN_TIME = 45;
transformation_remaining = 0;
transformation_cooldown = 0;

global.tiles_collision_name = "Tiles_Collision";
global.player_in_shop = false;
global.force_player_home = false;

global.paused = false;