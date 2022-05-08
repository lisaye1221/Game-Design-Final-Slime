if(global.should_food_shop_restock){
	curr_inventory = scr_restock_food_shop_inventory(inventory);
	option_num = array_length(curr_inventory);
	start_pos = 0;
	// which item to draw as last option in list
	end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;
	global.should_food_shop_restock = false;
}

event_inherited();


if (global.seedTier == 1 and global.addedSeeds1 == false) {
	variable_struct_set(inventory,"radish",new create_shop_item(global.item_list.radishes,20,5));
	variable_struct_set(inventory,"carrot",new create_shop_item(global.item_list.carrots,20,5));
	variable_struct_set(inventory,"lettuce",new create_shop_item(global.item_list.lettuce,10,5));
}	


if (global.seedTier == 2 and global.addedSeeds2 == false) {
	variable_struct_set(inventory,"radish",new create_shop_item(global.item_list.pumpkins,30,5));
	variable_struct_set(inventory,"carrot",new create_shop_item(global.item_list.roses,35,5));
	variable_struct_set(inventory,"lettuce",new create_shop_item(global.item_list.stars,40,5));
}	

