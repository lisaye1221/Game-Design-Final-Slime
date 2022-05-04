/// @description Insert description here
// You can write your code in this editor

if(!scene_start && a <= 0){
	create_textbox("ending-normal-cutscene")
	scene_start = true;
}

if(obj_player_ending.x > 200){
	show_text = true;	
}

if(show_text){
	letter += 0.5;	
	print = string_copy(curr_text, 1, letter);
	if((letter > string_length(curr_text) + 40) && (next < array_length(text) - 1)){
		letter = 0;
		next++;
	}
	curr_text = text[next];
}

if(!alarm_triggered){
	// finished dialogue, start walking left
	if(scene_start && !instance_exists(obj_textbox) && obj_player_ending.x < 515){
		obj_player_ending.x_speed = 2;
	}

	// walk up go to the machine
	if(obj_player_ending.x >= 515 && obj_player_ending.y > 160){
		obj_player_ending.x_speed = 0;
		obj_player_ending.y_speed = -2;
	}

	// reach the machine
	if(obj_player_ending.y <= 160 ){
		obj_player_ending.x_speed = 0;
		obj_player_ending.y_speed = 0;
		alarm[0] = room_speed * 3;
		alarm_triggered = true;
	}
}


if(fadeout){
	a = min(a+0.005, 1);	
}
else{
	a = max(a-0.0025, 0);
}
