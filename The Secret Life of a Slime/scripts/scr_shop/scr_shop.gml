// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_shop_item_for_sale(_item, _unit_price, _stock) constructor {
	item = _item;
	unit_price = _unit_price;
	stock = _stock;
}

function scr_restock_food_shop_inventory(_inventory_list){
	//show_debug_message(_inventory_list);
	
	var items = variable_struct_get_names(_inventory_list);
	shop_inventory = array_create(array_length(items));
	
	for(var i = 0; i < array_length(items); i++){
		var item_name = items[i];
		var shop_item = variable_struct_get(_inventory_list, item_name);
		//show_debug_message(shop_item);
		
		shop_inventory[i] = new create_shop_item_for_sale(shop_item.item, shop_item.unit_price, irandom_range(1, shop_item.max_stock));			
	}
	
	return shop_inventory;
	
}