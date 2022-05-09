/// @description Insert description here
// You can write your code in this editor

// a list of possible items this shop can sell
inventory = 
{
	berries : new create_shop_item(global.item_list.berries, 8, 5),
	wheat : new create_shop_item(global.item_list.wheat, 8, 6),
	//fish: new create_shop_item(global.item_list.fish, 15, 2),
	tomatoes: new create_shop_item(global.item_list.tomatoes, 12, 6),
	cucumbers: new create_shop_item(global.item_list.cucumbers, 15, 6),
	egg: new create_shop_item(global.item_list.egg, 10, 2),
}

if (global.seedTier == 1) {
	variable_struct_set(inventory,"radish",new create_shop_item(global.item_list.radishes,20,5));
	variable_struct_set(inventory,"carrot",new create_shop_item(global.item_list.carrots,20,5));
	variable_struct_set(inventory,"lettuce",new create_shop_item(global.item_list.lettuce,10,5));
}

if (global.seedTier == 2 ) {
	variable_struct_set(inventory,"pumpkin",new create_shop_item(global.item_list.pumpkins,30,5));
	variable_struct_set(inventory,"roses",new create_shop_item(global.item_list.roses,35,5));
	variable_struct_set(inventory,"stars",new create_shop_item(global.item_list.stars,40,5));
}	

if(get_relationship_tier(LAVANA) >= 3){
	variable_struct_set(inventory,"bread",new create_shop_item(global.item_list.bread,25,1));
	variable_struct_set(inventory,"spaghetti",new create_shop_item(global.item_list.spaghetti,65,1));
	variable_struct_set(inventory,"burrito",new create_shop_item(global.item_list.burrito,120,1));
	variable_struct_set(inventory,"cookies",new create_shop_item(global.item_list.cookies,50,1));
}

if(!global.food_shop_created){
	global.food_shop_created = true;
	event_inherited();
	obj_game_manager.food_shop_inventory = curr_inventory;
}
else{ 
	event_inherited();
	curr_inventory = obj_game_manager.food_shop_inventory;
	option_num = array_length(curr_inventory);
	start_pos = 0;
	// which item to draw as last option in list
	end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;
}
