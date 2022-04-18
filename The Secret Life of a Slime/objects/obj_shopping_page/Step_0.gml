/// @description Insert description here
// You can write your code in this editor

disabled = instance_exists(obj_textbox);

// restocks every time player goes to town
if(global.should_shop_restock){
	curr_inventory = scr_restock_food_shop_inventory(inventory);
	global.should_shop_restock = false;
}

accept_key = (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) && !disabled;
exit_key = keyboard_check_pressed(ord("X")) && !disabled;

up_key = keyboard_check_pressed(vk_up) && !disabled;
down_key = keyboard_check_pressed(vk_down) && !disabled;
left_key = keyboard_check_pressed(vk_left) && !disabled;
right_key = keyboard_check_pressed(vk_right) && !disabled;

if(up_key){
	if(menu_level == 0){
		option_pos--;	
		option_pos = clamp(option_pos, 0, option_num - 1);
	}
	
}

if(down_key){
	if(menu_level == 0){
		option_pos++;	
		option_pos = clamp(option_pos, 0, option_num - 1);
	}	
}

if(left_key){
	if(menu_level == 1){
		selected_amount--;
		selected_amount = clamp(selected_amount, 1, selected_item.stock)
		total_cost = selected_amount * selected_item.unit_price;
	}
}

if(right_key){
	if(menu_level == 1){
		selected_amount++;
		selected_amount = clamp(selected_amount, 1, selected_item.stock)
		total_cost = selected_amount * selected_item.unit_price;
	}
}

if(accept_key){
	if(menu_level == 0){
		menu_level++;	
		// bring up the item detail menu
		selected_item = curr_inventory[option_pos];
		selected_amount = 1;
		total_cost = selected_item.unit_price;
	}
	else{
		// check if we aren't broke
		if(total_cost <= global.gold){
			// -- buy the item
			
			// subtract money
			global.gold -= total_cost;
			// gain item
			gain_item(selected_item.item, selected_amount);
			// subtract stock
			selected_item.stock -= selected_amount;
			
			if(selected_item.stock <= 0){
				array_delete(curr_inventory, option_pos, 1);
				// move cursors up 
				option_pos--;
				end_pos--;
				option_num = array_length(curr_inventory);
				// if end_pos is last index and start_pos is not at the very beginning
				if(end_pos == option_num - 1&& start_pos > 0){
					// adjust start pos (scroll up)
					start_pos = end_pos - (NUM_ITEM_SHOWN_MAX-1);
				}
			}
			
			// go back to prev menu
			menu_level--;
		}
		else{
			create_textbox("warn-no-money");	
		}
	}
}


if(exit_key){
	if(menu_level == 0){
		// leave
		instance_deactivate_object(id);
	}
	else{
		// go back to previous menu
		menu_level--;
	}
}

if(option_pos > end_pos) {
	end_pos = option_pos;
	start_pos = end_pos - (NUM_ITEM_SHOWN_MAX-1);
}
if(option_pos < start_pos){
	start_pos = option_pos;	
	end_pos = start_pos + (NUM_ITEM_SHOWN_MAX-1);
}

//show_debug_message("start_pos:" + string(start_pos) + " | end_pos:" + string(end_pos));

