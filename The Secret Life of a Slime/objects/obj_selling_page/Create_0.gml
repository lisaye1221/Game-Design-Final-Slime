 /// @description Insert description here
// You can write your code in this editor
instance_deactivate_object(id);

function create_selling_inventory() {
	result = array_create(0);
	
	inv = obj_inventory_manager.inventory;
	
	for(var i = 0; i < array_length(inv); i++){
		array_push(result, new create_shop_item_for_sale(inv[i], inv[i].sell_price, inv[i].count));
	}
	
	
	return result;
}


// a list of items for sale now

curr_inventory = create_selling_inventory();

// ------- Menu 0 Dimensions -------- // 

option_num = array_length(curr_inventory);
NUM_ITEM_SHOWN_MAX = 4;
arrow_y_space = 40;
option_x_margin = 10;
option_y_margin = 4;
option_y_space = 24;

background_w = 350;
background_h = (NUM_ITEM_SHOWN_MAX * option_y_space) + (arrow_y_space * 2);

// ------- Menu 1 Dimensions -------- // 

background_item_details_w = 300;
background_item_details_h = 200;

item_info_magin_y = 40;
item_info_magin_x = 50;

selection_margin_y = 60;
selection_margin_x = 40;

cost_display_margin_y = 40;

shop_bg_spr = spr_shop_bg;


// ------- Menu variables -------- // 

// which item in the array we're on
option_pos = 0;
// which item to draw as first option in list (for when inventory > 4)
start_pos = 0;
// which item to draw as last option in list
end_pos = option_num > NUM_ITEM_SHOWN_MAX ? NUM_ITEM_SHOWN_MAX - 1 : option_num - 1 ;

// records which item was selected
selected_item = {}
selected_amount = 0;
total_cost = 0;

// menu_level = 0 - on the list of items
// menu_level = 1 - on the item details
menu_level = 0;