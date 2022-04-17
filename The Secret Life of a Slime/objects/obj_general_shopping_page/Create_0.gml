/// @description Insert description here
// You can write your code in this editor

// a list of possible items this shop can sell
inventory = 
{
	parts : new create_shop_item(global.item_list.parts, 4, 1),
	wheat_seeds : new create_shop_item(global.item_list.wheat_seeds, 4, 4),
	tomato_seeds: new create_shop_item(global.item_list.tomato_seeds, 7, 4),
	carrot_seeds: new create_shop_item(global.item_list.carrot_seeds, 6, 4),
	rose_seeds: new create_shop_item(global.item_list.rose_seeds, 10, 4),
}

event_inherited();