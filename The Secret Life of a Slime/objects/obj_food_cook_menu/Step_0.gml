/// @description move cursor and process selection
// You can write your code in this editor

if (menu_open) {

	/// handles the player moving the cursor

	var _left = keyboard_check_pressed(vk_left);
	var _right = keyboard_check_pressed(vk_right);
	var _up = keyboard_check_pressed(vk_up);
	var _down = keyboard_check_pressed(vk_down);

	var _h_move = _right - _left;
	var _v_move = _down - _up;
	var _inv_size = obj_inventory_manager.MAX_ITEM;
	var _str_size = obj_storage_manager.MAX_ITEM;

	if (_h_move != 0) {
	
		if (i_cursor < _inv_size) {
			var _edge = ((i_cursor mod rowLength)+1 == 0);
		
			if (_edge && (_h_move > 0)) {
				i_cursor += _h_move+_inv_size-rowLength;
			}
			else {
				i_cursor += _h_move;
			}
		
		}
		else {
			var _edge = (((i_cursor-_inv_size) mod rowLength) == 0);
		
			if (_edge && (_h_move < 0)) {
				i_cursor += _h_move-_inv_size+rowLength;
			}
			else {
				i_cursor += _h_move;
			}
		
		}
	
	
		// clamp vals
		if (i_cursor < 0) i_cursor = 0;
		else if (i_cursor >= _inv_size + _str_size) i_cursor = _inv_size + _str_size - 1;
	
	}

	if (_v_move != 0) {
	
		if (i_cursor < _inv_size) {
			var _col = i_cursor mod rowLength;
		}
		else {
			var _col = 6 + (i_cursor - _inv_size) mod rowLength ;
		}
	
		/*
		var _inv_lastrow_length = _inv_size mod rowLength;
		if (_inv_lastrow_length == 0) _inv_lastrow_length = 6;
	
		var _str_lastrow_length = _str_size mod rowLength;
		if (_str_lastrow_length == 0) _str_lastrow_length = 6;
		*/
	
		// move cursor index up/down a row
		i_cursor += _v_move*rowLength;
	
		if (i_cursor < 0) {
			/*
			if (_col < 6) {
				i_cursor = _col;
			}
			else {
				i_cursor = _col+_inv_size-6;
			}
			*/
			i_cursor -= _v_move*rowLength
		
		}
		else if (i_cursor >= _inv_size + _str_size) i_cursor -= _v_move*rowLength;
	}

	var _select = keyboard_check_pressed(vk_enter);

	if (_select > 0) {
	
		if (i_cursor < _inv_size) {
			// attempt to move from inventory to storage
			if (i_cursor < array_length(obj_inventory_manager.inventory)) {
				var _moved_item = obj_inventory_manager.inventory[i_cursor];
			
				if(str_will_item_fit(_moved_item, _moved_item.count)) {
					move_from_inventory(_moved_item, _moved_item.count);
				}
			}
		
		}
		else {
			var _temp_cursor = i_cursor - _inv_size;
		
			// attempt to move from storage to inventory
			if (_temp_cursor < array_length(obj_storage_manager.inventory)) {
				var _moved_item = obj_storage_manager.inventory[_temp_cursor];
			
				if(will_item_fit(_moved_item, _moved_item.count)) {
					move_from_storage(_moved_item, _moved_item.count);
				}
			
			}
		
		}
	
	
	}

}

	

