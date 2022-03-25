/// @description Insert description here
// You can write your code in this editor

solid = interactable;
var delta_second = delta_time /1000000;

if (status == "busy"){
	time_left -= delta_second;
	
	if (time_left <= 0){
		audio_play_sound(sfx_machine_finish, 1, 0);
		time_left = time_to_convert;
		status = "full";
	}
}
else if (status == "repairing"){
	
	time_left -= delta_second;
	
	if (time_left <= 0){
		time_left = time_to_convert;
		status = "empty";
	}
}



// activating full signal
if (status == "full" && !full_signal && interactable){
	obj_exclamation.visible = true;
	full_signal = true;
} else if (status != "full" && full_signal){
	obj_exclamation.visible = false;
	full_signal = false;
}

// fixing
if (status == "broken" || status == "repairing") {
	
	sprite_index = spr_machine_broken;
	
}
else{
	sprite_index = spr_machine;
}

if (activated){
	this_machine = id;
	if (this_machine != noone){
			// inputting wheat if they have any in inventory
			if (this_machine.status == "empty" && 
				get_item_count(global.item_list.wheat) >= this_machine.WHEAT_COST){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = this_machine.WHEAT_COST;
				lose_item(global.item_list.wheat, 8);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				
				// change text
			} 
			
			else if (this_machine.status == "busy" || this_machine.status == "repairing"){
				// do nothing
			}
			
			// collecting wheat
			else if (this_machine.status == "full"){
				// take energy, disable progress bar, reset vars
				if(will_item_fit(global.item_list.slime_jelly, this_machine.JELLY_PRODUCED)){
					gain_item(global.item_list.slime_jelly, this_machine.JELLY_PRODUCED);
					// check if machine has broken
					if (this_machine.durability <= 0) {
						this_machine.status = "broken";
					}
					else{
						this_machine.status = "empty";
					}
				}
				// change text
			} 
		
		
			else if (this_machine.status == "broken" && get_item_count(global.item_list.parts) >= 1){
				// do something (take gold or parts or whatever from player and wait for repair)
				
				lose_item(global.item_list.parts, 1);
				global.energy -= this_machine.ENERGY_COST_TO_REPAIR;
				audio_play_sound(sfx_machine_fix, 2, false);
				// change status to "empty"
				// change text
				
				this_machine.status = "repairing";
				this_machine.durability = 2;
				
				
				
			}
		}
}