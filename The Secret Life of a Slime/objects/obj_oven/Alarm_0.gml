/// @description Pulls up menu
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

if(!global.has_reached_ending){
	if (this_machine.status == "empty"){
		obj_food_cook_menu.alarm[0] = 1;
	} else if (this_machine.status == "busy"){
		// do nothing
	} else if (this_machine.status == "full"){
		if (will_item_fit(convert_to, convert_to_count)){
			achi_cook_food();
			audio_play_sound(sfx_collect_food, 2, false);
			gain_item(convert_to, convert_to_count);
			this_machine.status = "empty";
		}
	}
	}
else{ create_textbox("ending_farming_lock");}

if (this_machine.status == "busy") ready = false;
else ready = true;
