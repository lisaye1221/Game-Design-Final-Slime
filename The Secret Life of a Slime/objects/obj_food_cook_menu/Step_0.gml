/// handles the player moving the cursor

var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

var _h_move = _right - _left;
var _v_move = _down - _up;

var _size = num_recipes


/// @param item is a recipe item; item.ingredients[i] is crop
function can_cook_this(item){
	for (i=0; i < array_length(item.ingredients); i++){
		if (get_item_count(item.ingredients[i]) < item.amounts[i]){
			return false;
		}
	}
	return true;
}

if (menu_open) {
	if (_h_move != 0) {
	
		// move cursor index
		i_cursor += _h_move;
	
		// clamp vals
		if (i_cursor < 0) i_cursor = _size-1;
		else if (i_cursor >= _size) i_cursor = 0;
	
	}

	if (_v_move != 0) {
	
		var _col = i_cursor mod rowLength;
		var _lastrow_length = _size mod rowLength;
		if (_lastrow_length == 0) _lastrow_length = 6;
	
		// move cursor index up/down a row
		i_cursor += _v_move*rowLength;
	
		if (i_cursor < 0) {
			if(_col < _lastrow_length) i_cursor = _size - _lastrow_length + _col;
			else i_cursor = _size - 1;
		}
		else if (i_cursor >= _size) i_cursor = _col;
	}
	
	
	var _select = keyboard_check_pressed(vk_enter);

	if (_select > 0) {
		
		// start cooking item
		if (can_cook_this(recipes2[i_cursor])){
			// lose # of each ingredient
			_ingredients_list = recipes2[i_cursor].ingredients;
			_amounts_list = recipes2[i_cursor].amounts;
			for (i=0; i < array_length(_ingredients_list); i++){
				lose_item(_ingredients_list[i], _amounts_list[i]);
			}
		
			// turn on oven
			obj_oven.convert_to = recipes2[i_cursor].item;
			obj_oven.alarm[1] = 1;
			
			// turn off menu
			menu_open = false;
			global.paused = false;
		}
		
		
		
		/*// attempt to move from inventory to storage
		if (i_cursor < array_length(obj_inventory_manager.inventory)) {
			var _moved_item = obj_inventory_manager.inventory[i_cursor];
			
			if(str_will_item_fit(_moved_item, _moved_item.count)) {
				move_from_inventory(_moved_item, _moved_item.count);
			}
		}
		

		var _temp_cursor = i_cursor - _inv_size;
		show_debug_message(_temp_cursor);
		show_debug_message(i_cursor);
		
		// attempt to move from storage to inventory
		if (_temp_cursor < array_length(obj_storage_manager.inventory)) {
			var _moved_item = obj_storage_manager.inventory[_temp_cursor];
			
			if(will_item_fit(_moved_item, _moved_item.count)) {
				move_from_storage(_moved_item, _moved_item.count);
			}*/
			
		}
		
}





