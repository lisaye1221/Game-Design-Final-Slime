/// @description Insert description here
// You can write your code in this editor

accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
exit_key = keyboard_check_pressed(ord("X"));

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