/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
highlight = false;

// helper func
// basically we only have code to use crops here... if not a crop item doesnt get used
function use_item(item){
	switch(item.name){
		case global.item_list.wheat.name:
			// inputting wheat if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.wheat, this_machine);
			//scr_use_item_slime_conv(global.item_list.wheat, this_machine);
			/*if (get_item_count(global.item_list.wheat) >= global.item_list.wheat.conversion_rate){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = global.item_list.wheat.conversion_rate;
				lose_item(global.item_list.wheat, global.item_list.wheat.conversion_rate);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				// change text
			} */
			break;
		case global.item_list.tomatoes.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.tomatoes, this_machine);
			//scr_use_item_slime_conv(global.item_list.tomatoes, this_machine);
			break;
		case global.item_list.carrots.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.carrots, this_machine);
			//scr_use_item_slime_conv(global.item_list.carrots, this_machine);
			break;
		case global.item_list.cauliflower.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.cauliflower, this_machine);
			//scr_use_item_slime_conv(global.item_list.cauliflower, this_machine);
			break;
		case global.item_list.cucumbers.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.cucumbers, this_machine);
			//scr_use_item_slime_conv(global.item_list.cucumbers, this_machine);
			break;
		case global.item_list.eggplants.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.eggplants, this_machine);
			//scr_use_item_slime_conv(global.item_list.eggplants, this_machine);
			break;		
		case global.item_list.lettuce.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.lettuce, this_machine);
			//scr_use_item_slime_conv(global.item_list.lettuce, this_machine);
			break;
		case global.item_list.pumpkins.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.pumpkins, this_machine);
			//scr_use_item_slime_conv(global.item_list.pumpkins, this_machine);
			break;	
		case global.item_list.radishes.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.radishes, this_machine);
			//scr_use_item_slime_conv(global.item_list.radishes, this_machine);
			break;	
		case global.item_list.roses.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.roses, this_machine);
			//scr_use_item_slime_conv(global.item_list.roses, this_machine);
			break;		
		case global.item_list.turnips.name:
			// inputting tomatoes if they have enough in inventory
			create_confirmationbox("crops-to-jelly", global.item_list.turnips, this_machine);
			//scr_use_item_slime_conv(global.item_list.turnips, this_machine);
			break;			
		default:
			create_textbox("warn-cannot-convert");
			return;
	}
}



// if you have seeds AND no plant here currently
inv = obj_inventory_manager.inventory
inv_count = array_length(inv);

if(!global.has_reached_ending){
if (this_machine != noone){
		if(this_machine.status == "empty"){
			// gets sent inv_slot from player interaction
			switch (inv_slot){
				case 0:
					break;
				case 1:
					//if (inv_count >= 1 && create_textbox("convert-wheat-to-jelly")) use_item(inv[0]);
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
		}
			
		else if (this_machine.status == "busy" || this_machine.status == "repairing"){
			// do nothing
		}
			
		// collecting slime jelly
		else if (this_machine.status == "full"){
			// disable progress bar, reset vars
			if(will_item_fit(convert_to, convert_to_count)){
				gain_item(convert_to, convert_to_count);
				// check if machine has broken
				if (this_machine.durability <= 0) {
					this_machine.status = "broken";
				}
				else{
					this_machine.status = "empty";
				}
			}else{
				create_textbox("warn-inventory-full");	
			}
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
}
else{
	create_textbox("ending_farming_lock");	
}
