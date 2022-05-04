/// @description Insert description here
// You can write your code in this editor

if(obj_player_ending.y < 360){
	obj_player_ending.y_speed = 1;	
	alarm[0] = 1;
}

if(obj_player_ending.y >= 360){
	obj_player_ending.y_speed = 0;	
	obj_player_ending.x_speed = 2;
	fadeout = true;
	alarm[0] = 1;
}

if(obj_player_ending.x >= 900){
	obj_player_ending.x_speed = 0;
	audio_stop_sound(bgm_home);
}
