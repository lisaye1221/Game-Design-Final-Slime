/// @description Insert description here
// You can write your code in this editor

if(!scene_start && a <= 0){
	create_textbox("ending-betrayal-cutscene")
	scene_start = true;
}


if(show_text){
	letter += 0.5;	
	print = string_copy(curr_text, 1, letter);
	if((letter > string_length(curr_text) + 50) && (next < array_length(text) - 1)){
		letter = 0;
		next++;
	}
	if((next == array_length(text) - 1) && (letter > string_length(curr_text) + 80)){
		if(obj_game_ending_manager.ending == ENDING_CHOICE_BETRAYAL){
			audio_stop_sound(bgm_ending_betrayal_cutscene)
			audio_play_sound(bgm_ending_betrayal_choice, 1, true);
		}
		room_goto(ending_title);
		instance_deactivate_object(id);
	}
	curr_text = text[next];
}

if(!alarm_triggered){
	// finished dialogue, start walking left
	if(scene_start && !instance_exists(obj_textbox) && obj_player_ending.x < 270){
		obj_player_ending.x_speed = 2;
		if(!audio_is_playing(bgm_ending_betrayal_cutscene)){
			audio_play_sound(bgm_ending_betrayal_cutscene, 1, true);
		}
	}

	// walk up to the shops
	if(obj_player_ending.x >= 270){
		obj_player_ending.x_speed = 0;
		obj_player_ending.y_speed = -1;
		fadeout = true;
	}
	
	
	if(fadeout && a = 1){
		obj_player_ending.y_speed = 0;
		if(obj_game_ending_manager.ending == ENDING_BETRAYAL){
		create_textbox("ending-betrayal-human-dialogue");
		}
		else if(obj_game_ending_manager.ending == ENDING_CHOICE_BETRAYAL){
			create_textbox("ending-betrayal-choice-human-dialogue");
		}
		alarm[0] = 1;
		alarm_triggered = true;
		
	}

}


if(fadeout){
	a = min(a+0.005, 1);	
}
else{
	a = max(a-0.0025, 0);
}
