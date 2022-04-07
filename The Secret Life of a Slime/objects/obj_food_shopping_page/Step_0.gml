/// @description Insert description here
// You can write your code in this editor

accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
exit_key = keyboard_check_pressed(ord("X"));

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);

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

if(accept_key){
	if(menu_level == 0){
		menu_level++;	
		// bring up the item detail menu
		selected_item = curr_inventory[option_pos];
	}
	else{
		// buy the item
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