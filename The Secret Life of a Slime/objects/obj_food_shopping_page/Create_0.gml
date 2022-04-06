/// @description Insert description here
// You can write your code in this editor

instance_deactivate_object(id);

// a list of possible items this shop can sell

/// @param item
/// @param unit_price
/// @param max_stock
function create_shop_item(_item, _unit_price, _max_stock) constructor {
	item = _item;
	unit_price = _unit_price;
	max_stock = _max_stock;
}

inventory = 
{
	berries : new create_shop_item(global.item_list.berries, 4, 5),
	wheat : new create_shop_item(global.item_list.wheat, 8, 8),
	fish: new create_shop_item(global.item_list.fish, 15, 2),
}

// a list of items for sale now

curr_inventory = scr_restock_food_shop_inventory(inventory);
//curr_inventory[0] = create_shop_item_for_sale(global.item_list.berries, 4, 3);
//curr_inventory[1] = create_shop_item_for_sale(global.item_list.wheat, 8, 2);

option_num = array_length(curr_inventory);
NUM_ITEM_SHOWN_MAX = 4;
arrow_y_space = 40;
option_x_margin = 10;
option_y_margin = 4;
option_y_space = 24;

background_w = 250;
background_h = (NUM_ITEM_SHOWN_MAX * option_y_space) + (arrow_y_space * 2);
shop_bg_spr = spr_shop_bg;

option_pos = 0;