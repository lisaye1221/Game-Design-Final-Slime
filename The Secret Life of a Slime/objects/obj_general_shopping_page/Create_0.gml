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

event_inherited();