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
			if (get_item_count(global.item_list.wheat) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.wheat, convert_from_count);
				lose_one_item(global.item_list.wheat);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.wheat_seeds;
				// change text
			} 
			break;
		case global.item_list.tomatoes.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.tomatoes) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.tomatoes, convert_from_count);
				lose_one_item(global.item_list.tomatoes);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.tomato_seeds;		
				// change text
			} 
			break;
		case global.item_list.carrots.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.carrots) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.carrots, convert_from_count);
				lose_one_item(global.item_list.carrots);
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.carrot_seeds;				
				// change text
			} 
			break;
		case global.item_list.cauliflower.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.cauliflower) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.cauliflower, convert_from_count);
				lose_one_item(global.item_list.cauliflower);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.cauliflower_seeds;				
				// change text
			} 
			break;
		case global.item_list.cucumbers.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.cucumbers) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.cucumbers, convert_from_count);
				lose_one_item(global.item_list.cucumbers);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.cucumber_seeds;				
				// change text
			} 
			break;
		case global.item_list.eggplants.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.eggplants) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.eggplants, convert_from_count);
				lose_one_item(global.item_list.eggplants);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.eggplant_seeds;				
				// change text
			} 
			break;		
		case global.item_list.lettuce.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.lettuce) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.lettuce, convert_from_count);
				lose_one_item(global.item_list.lettuce);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.lettuce_seeds;				
				// change text
			} 
			break;
		case global.item_list.pumpkins.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.pumpkins) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.pumpkins, convert_from_count);
				lose_one_item(global.item_list.pumpkins);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.pumpkin_seeds;				
				// change text
			} 
			break;	
		case global.item_list.radishes.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.radishes) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.radishes, convert_from_count);
				lose_one_item(global.item_list.radishes);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.radish_seeds;				
				// change text
			} 
			break;	
		case global.item_list.roses.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.roses) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.roses, convert_from_count);
				lose_one_item(global.item_list.roses);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.rose_seeds;				
				// change text
			} 
			break;	
		/*case global.item_list.star_seeds.name:
			with (instance_create_layer(relative_pos_x, relative_pos_y, "crops", obj_star_crop)){
				farm_plot = other.id;	
			}
			should_be_interactable = false;
			interactable = false;
			visible = false;
			solid = false;
			lose_one_item(item);
			break;	*/
		/*case global.item_list.tulip_seeds.name:
			with (instance_create_layer(relative_pos_x, relative_pos_y, "crops", obj_tulip_crop)){
				farm_plot = other.id;	
			}
			should_be_interactable = false;
			interactable = false;
			visible = false;
			solid = false;
			lose_one_item(item);
			break;	*/		
		case global.item_list.turnips.name:
			// inputting tomatoes if they have enough in inventory
			if (get_item_count(global.item_list.turnips) >= convert_from_count){
				// take wheat from player, start timer, show progress bar
				audio_play_sound(sfx_machine_operate, 2, false);
				this_machine.amount_to_convert = convert_from_count;
				//lose_item(global.item_list.turnips, convert_from_count);
				lose_one_item(global.item_list.turnips);				
				this_machine.status = "busy";
				this_machine.durability -= 1;
				convert_to = global.item_list.turnip_seeds;				
				// change text
			} 
			break;			
		default:
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
	
if (status == "repairing" || status == "busy"){
	ready = false;
}else{
	ready = true;
}
