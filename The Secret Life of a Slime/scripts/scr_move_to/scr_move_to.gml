// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_town(player){
	if(obj_game_manager.transformation_cooldown <= 0){
		room_goto(town)
		audio_stop_sound(bgm_home);
		if(!audio_is_playing(bgm_town)){
			audio_play_sound(bgm_town, 1, true);
		}
		
		obj_game_manager.is_room_transition = true;
		player.sprite = player.human_sprite;
		player.face = RIGHT;
		player.x = TOWN_X;
		player.y = TOWN_Y;
		// reset some town flags
		global.should_food_shop_restock = true;
		global.should_general_shop_restock = true;
		for(var i = 0; i<array_length(global.talked_this_trip_already);i++){
			global.talked_this_trip_already[i] = false;	
		}
	}
}

function go_home(player){
	room_goto(home)
	audio_stop_sound(bgm_town);
	if(!audio_is_playing(bgm_home)){
			audio_play_sound(bgm_home, 1, true);
	}
	obj_game_manager.is_room_transition = true;
	player.sprite = player.slime_sprite;
	player.face = LEFT;
	player.x = HOME_X;
	player.y = HOME_Y;
}

function forced_home(player){
	go_home(player);
	global.energy -= obj_game_manager.EXCEED_TIME_ENERGY_COST;
	global.is_forced_back = true;
}


function die() {
	if(!global.dead){
		audio_stop_all();
		audio_play_sound(bgm_death, 1, true);
		global.dead = true;
		room_goto(lose);
		instance_deactivate_all(false);
		instance_activate_object(obj_game_manager);
	}
}