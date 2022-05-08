/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

// helper func
// basically we only have code to use crops here... if not a crop item doesnt get used
function use_item(item){
	switch(item.name){
		case global.item_list.wheat.name:
			// inputting wheat if they have enough in inventory
			create_confirmationbox("crops-to-seeds", global.item_list.wheat, this_machine);
			//scr_use_item_seeds_conv(global.item_list.wheat, this_machine);
			/*if (get_item_count(global.item_list.wheat) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.wheat, convert_from_count);
				lose_one_item(global.item_list.wheat);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.wheat_seeds;
				// change text
			} */
			break;
		case global.item_list.tomatoes.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.tomatoes, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.tomatoes, this_machine);
			break;
		case global.item_list.carrots.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.carrots, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.carrots, this_machine);
			break;
		case global.item_list.cauliflower.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.cauliflower, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.cauliflower, this_machine);
			break;
		case global.item_list.cucumbers.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.cucumbers, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.cucumbers, this_machine);
			break;
		case global.item_list.eggplants.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.eggplants, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.eggplants, this_machine);
			break;		
		case global.item_list.lettuce.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.lettuce, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.lettuce, this_machine);
			break;
		case global.item_list.pumpkins.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.pumpkins, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.pumpkins, this_machine);
			break;	
		case global.item_list.radishes.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.radishes, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.radishes, this_machine);
			break;	
		case global.item_list.roses.name:
			// inputting tomatoes if they have enough in inventory
			//scr_use_item_seeds_conv(global.item_list.roses, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.roses, this_machine);
			break;	
		/*case global.item_list.stars.name:
			scr_use_item_seeds_conv(global.item_list.stars, this_machine);
			break;	*/
		/*case global.item_list.tulips.name:
			scr_use_item_seeds_conv(global.item_list.tulips, this_machine);
			break;	*/		
		case global.item_list.turnips.name:
			//scr_use_item_seeds_conv(global.item_list.turnips, this_machine);
			create_confirmationbox("crops-to-seeds", global.item_list.turnips, this_machine);
			// inputting tomatoes if they have enough in inventory
			break;			
		default:
			create_textbox("warn-cannot-convert-to-seeds");
			return;
	}
}



// if you have seeds AND no plant here currently
inv = obj_inventory_manager.inventory
inv_count = array_length(inv);

if (this_machine != noone){
		if(this_machine.status == "empty"){
			// gets sent inv_slot from player interaction
			switch (inv_slot){
				case 0:
					break;
				case 1:
					if (inv_count >= 1) use_item(inv[0]);
					break;
				case 2:
					if (inv_count >= 2) use_item(inv[1]);
					break;
				case 3:
					if (inv_count >= 3) use_item(inv[2]);
					break;
				case 4:
					if (inv_count >= 4) use_item(inv[3]);
					break;
				case 5:
					if (inv_count >= 5) use_item(inv[4]);
					break;
				case 6:
					if (inv_count >= 6) use_item(inv[5]);
					break;
				case 7:
					if (inv_count >= 7) use_item(inv[6]);
					break;
				case 8:
					if (inv_count >= 8) use_item(inv[7]);
					break;
				case 9:
					if (inv_count >= 9) use_item(inv[8]);
					break;
				case 10:
					if (inv_count >= 10) use_item(inv[9]);
					break;
			}
			inv_slot = 0;
		}
		
		
		// inputting wheat if they have any in inventory
		/*if (this_machine.status == "empty" && 
			get_item_count(convert_from) >= convert_from_count){
			// take wheat from player, start timer, show progress bar
			audio_play_sound(sfx_machine_operate, 2, false);
			this_machine.amount_to_convert = convert_from_count;
			lose_item(convert_from, convert_from_count);
			this_machine.status = "busy";
			this_machine.durability -= 1;
			// change text
		} */
			
		else if (this_machine.status == "busy" || this_machine.status == "repairing"){
			// do nothing
		}
			
		// collecting seeds
		else if (this_machine.status == "full"){
			// disable progress bar, reset vars
			if(will_item_fit(convert_to, convert_to_count)){
				gain_item(convert_to, convert_to_count);
				audio_play_sound(sfx_collect_seed, 2, false);
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
			this_machine.durability = 3;
				
				
				
		}
	}
	
if (status == "repairing" || status == "busy"){
	ready = false;
}else{
	ready = true;
}
