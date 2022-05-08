/// @description Insert description here
// You can write your code in this editor

// restocks every time player goes to town
if(global.should_general_shop_restock){
	curr_inventory = scr_restock_food_shop_inventory(inventory);
	option_num = array_length(curr_inventory);
	start_pos = 0;
	// which item to draw as last option in list
	end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;
	global.should_general_shop_restock = false;
}

event_inherited();