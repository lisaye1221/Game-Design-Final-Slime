/// @description Insert description here
// You can write your code in this editor

if(room != ending_normal_scene){

if(global.days >= UNLOCK_ENDING_DAY && !global.has_reached_ending){
	global.has_reached_ending = true;
	
	// determine which ending
	var achi_requirement_complete = true;
	for(var i = 0; i < array_length(achi_requirement); i++){
		if(!achi_requirement[i]){
			achi_requirement_complete = false;
			break;
		}
	}
	
	if(achi_requirement_complete){
		ending = ENDING_BETRAYAL;	
	}
	if(
		get_relationship_tier(LAVANA) >= 3 &&
		get_relationship_tier(CLAUDE) >= 3 &&
		get_relationship_tier(NELU) >= 3
	){
		ending = ENDING_CHOICE;
	}
	if(
		get_relationship_tier(LAVANA) >= 2 &&
		get_relationship_tier(CLAUDE) >= 2 &&
		get_relationship_tier(NELU) >= 2 &&
		get_relationship_tier(LOLA) >= 3
	){
		ending = ENDING_SPECIAL;
	}
	
	has_met_Lola = has_met_npc(LOLA);
	
}

// display a text that lets player know somebody is here
if(global.has_reached_ending && in_home() && !ending_setup){
	ending_setup = true;

	if (!global.paused){
		create_textbox("warn-slime-arrival")
	}else{
		alarm[11] = 1;
	}
}

// lola shows up
if(global.has_reached_ending && global.should_lola_appear){
	instance_activate_object(obj_lola_slime);	
}
																
// switch to respective cutscene based on ending
if(global.go_to_ending_cutscene && !instance_exists(obj_textbox) && room == home){
	a = min(a+0.005, 1);	
	instance_deactivate_object(obj_messenger_slime);
	if(a >= 1){
		switch(ending){
			case ENDING_NORMAL:
				room_goto(ending_normal_scene)
				instance_deactivate_all(true);
				break;
			case ENDING_BETRAYAL:
				room_goto(ending_betrayal_scene)
				audio_stop_sound(bgm_home);
				instance_deactivate_all(true);
				break;
			case ENDING_CHOICE_BETRAYAL:
				room_goto(ending_betrayal_scene)
				audio_stop_sound(bgm_home);
				instance_deactivate_all(true);
				break;
			case ENDING_CHOICE:
				room_goto(ending_confess_scene)
				audio_stop_sound(bgm_home);
				instance_deactivate_all(true);
				break;
			case ENDING_SPECIAL:
				room_goto(ending_special_scene)
				audio_stop_sound(bgm_home);
				instance_deactivate_all(true);
				break;
		}
	}
}

}
