/// @description Insert description here
// You can write your code in this editor

solid = interactable;

if (status == "busy"){
	time_left -= global.delta_second;
	if (time_left <= 0){
		if(in_home()){
			audio_play_sound(sfx_machine_finish, 1, 0);
		}
		time_left = time_to_convert;
		status = "full";
	}
}
else if (status == "repairing"){
	
	time_left -= global.delta_second;
	
	if (time_left <= 0){
		time_left = time_to_convert;
		status = "empty";
	}
}



// activating full signal
if (status == "full" && !full_signal && interactable){
	exclamation.visible = true;
	full_signal = true;
} else if (status != "full" && full_signal){
	exclamation.visible = false;
	full_signal = false;
}


// fixing
if (status == "broken" || status == "repairing") {
	sprite_index = sprite_broken;
}
else{
	sprite_index = sprite_ready;
}

switch(this_machine.status){
	case "empty":
		uses_inventory = true;
		which_text = 0;
		break;
	case "busy":
		uses_inventory = false;
		which_text = 1;
		inv_slot = 0;
		break;
	case "full":
		uses_inventory = false;	
		which_text = 2;
		inv_slot = 0;
		break;
	case "broken":
		uses_inventory = false;
		which_text = 3;
		break;
	case "repairing":
		uses_inventory = false;
		which_text = 4;
		break;
}
prompt_text = prompt_text_lst[which_text]