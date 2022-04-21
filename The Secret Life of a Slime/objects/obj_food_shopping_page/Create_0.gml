/// @description Insert description here
// You can write your code in this editor

// a list of possible items this shop can sell
inventory = 
{
	berries : new create_shop_item(global.item_list.berries, 8, 5),
	wheat : new create_shop_item(global.item_list.wheat, 8, 6),
	fish: new create_shop_item(global.item_list.fish, 15, 2),
	tomatoes: new create_shop_item(global.item_list.tomatoes, 12, 6),
	cucumbers: new create_shop_item(global.item_list.cucumbers, 15, 6),
	egg: new create_shop_item(global.item_list.egg, 10, 2),
}

event_inherited();

show_debug_message("create event called");