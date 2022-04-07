/// handles the player moving the cursor

var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

var _h_move = _right - _left;
var _v_move = _down - _up;

var _size = obj_inventory_manager.MAX_ITEM;

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

// moving tab index

var _t_left = keyboard_check_pressed(ord("N"));
var _t_right = keyboard_check_pressed(ord("M"));

//show_debug_message(_t_right);

var _t_move = _t_right - _t_left;
var _t_size = array_length(tabs);

if (_t_move != 0) {
	// move cursor index
	tab_index += _t_move;
	if (tab_index < 0) tab_index = _t_size-1;
	else if (tab_index >= _t_size) tab_index = 0;
	
	
}
	

