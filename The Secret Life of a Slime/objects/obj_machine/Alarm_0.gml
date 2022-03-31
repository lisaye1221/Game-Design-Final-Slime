/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (this_machine != noone){
		// inputting wheat if they have any in inventory
		if (this_machine.status == "empty" && 
			get_item_count(convert_from) >= convert_from_count){
			// take wheat from player, start timer, show progress bar
			audio_play_sound(sfx_machine_operate, 2, false);
			this_machine.amount_to_convert = convert_from_count;
			lose_item(convert_from, convert_from_count);
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
			if(will_item_fit(convert_to, convert_to_count)){
				gain_item(convert_to, convert_to_count);
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
			global.energy -= ENERGY_COST_TO_REPAIR;
			audio_play_sound(sfx_machine_fix, 2, false);
			// change status to "empty"
			// change text
				
			this_machine.status = "repairing";
			this_machine.durability = 2;
				
				
				
		}
	}