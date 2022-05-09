if(global.should_food_shop_restock){
	curr_inventory = scr_restock_food_shop_inventory(inventory);
	option_num = array_length(curr_inventory);
	start_pos = 0;
	// which item to draw as last option in list
	end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;
	global.should_food_shop_restock = false;
}

// store curr invntory when exiting shopping page
if(keyboard_check_pressed(ord("X")) && !instance_exists(obj_textbox) && menu_level == 0){
	obj_game_manager.food_shop_inventory = curr_inventory;
}

event_inherited();
