 /// @description Insert description here
// You can write your code in this editor

// a list of possible items this shop can sell
inventory = 
{
	wheat_seeds : new create_shop_item(global.item_list.wheat_seeds, 4, 5,2),
	tomato_seeds: new create_shop_item(global.item_list.tomato_seeds, 6, 5,2),
	cucumber_seeds: new create_shop_item(global.item_list.cucumber_seeds, 8, 5,2),
	parts : new create_shop_item(global.item_list.parts, 4, 2),
}

if(get_relationship_tier(CLAUDE) >= 1){
	variable_struct_set(inventory,"carrot_seed",new create_shop_item(global.item_list.carrot_seeds,15,5, 2));
	variable_struct_set(inventory,"lettuce_seed",new create_shop_item(global.item_list.lettuce_seeds,6,5, 2));
	variable_struct_set(inventory,"radish_seed",new create_shop_item(global.item_list.radish_seeds,10,5, 2));
}
if(get_relationship_tier(CLAUDE) >= 2){
	variable_struct_set(inventory,"rose_seed",new create_shop_item(global.item_list.rose_seeds,20,5, 2));
	variable_struct_set(inventory,"pumpkin_seed",new create_shop_item(global.item_list.pumpkin_seeds,10,5, 2));
	variable_struct_set(inventory,"star_seed",new create_shop_item(global.item_list.star_seeds,15,5, 2));
}

if(!global.general_shop_created){
	global.general_shop_created = true;
	event_inherited();
	obj_game_manager.general_shop_inventory = curr_inventory;
}
else{ 
	event_inherited();
	curr_inventory = obj_game_manager.general_shop_inventory;
	option_num = array_length(curr_inventory);
	start_pos = 0;
	// which item to draw as last option in list
	end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;
}
