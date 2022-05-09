/// @description Insert description here
// You can write your code in this editor

if(!scene_start && a <= 0 ){
	
	obj_player_ending.y_speed = -1;
	obj_lola_cutscene.y_speed = -1;
	scene_start = true;	

}

if(obj_lola_cutscene.y <= 430 && room != ending_special_scene2){
	obj_lola_cutscene.y_speed = 0;
	obj_lola_cutscene.face = RIGHT;
}

if(obj_player_ending.y <= 430 && !dialogue_triggered){
	obj_player_ending.y_speed = 0;
	obj_player_ending.face = LEFT;
	create_textbox("ending-special-dialogue-1")
	dialogue_triggered = true;
}


if(show_text){
	letter += 0.5;	
	print = string_copy(curr_text, 1, letter);
	if((letter > string_length(curr_text) + 40) && (next < array_length(text) - 1)){
		letter = 0;
		next++;
	}
	if(next == 2){
		fadeout = true;	
	}
	if((next == array_length(text) - 1) && (letter > string_length(curr_text) + 40)){
		room_goto(ending_title);
		audio_stop_sound(bgm_ending_normal);
		audio_play_sound(bgm_ending_special, 1, true);
		instance_deactivate_object(id);
	}
	curr_text = text[next];
}

if(dialogue_triggered && !instance_exists(obj_textbox)){
	if(!alarm_triggered){
	fadeout = true;
		if(a >= 1){
			create_textbox("ending-special-dialogue-2");
			alarm[0] = 1;
			alarm_triggered = true;
		}
	}
}

// walk over
if(scene_2_should_walk_over && !instance_exists(obj_textbox) && !show_text){
	
	if(obj_lola_cutscene.x < 545){
		obj_lola_cutscene.x_speed = 2;
	}
	if(obj_lola_cutscene.x >= 545 && obj_lola_cutscene.y > 385){
		obj_lola_cutscene.x_speed = 0;
		obj_lola_cutscene.y_speed = -2;
	}
	if(obj_lola_cutscene.y <= 385){
		obj_lola_cutscene.y_speed = 0;
	}
	
	if(obj_player_ending.x < 585){
		obj_player_ending.x_speed = 2;
	}
	if(obj_player_ending.x >= 585 && obj_player_ending.y > 385){
		obj_player_ending.x_speed = 0;
		obj_player_ending.y_speed = -2;
	}
	if(obj_player_ending.y <= 385){
		obj_player_ending.y_speed = 0;
		obj_lola_cutscene.face = UP;
		obj_Nelu_deco.sprite_index = spr_farmer_down;
		obj_Nelu_deco.image_index = 1;
		obj_Claude_deco.sprite_index = spr_machineman_down;
		obj_Claude_deco.image_index = 1;
		create_textbox("ending-special-dialogue-4");
		alarm[2] = 1;
	}
	
}



if(fadeout){
	a = min(a+0.005, 1);	
}
else{
	a = max(a-0.005, 0);
}
