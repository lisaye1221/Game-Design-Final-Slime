/// @description Insert description here
// You can write your code in this editor

// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
exit_key = keyboard_check_pressed(ord("X"))

// num options in current menu
op_length = array_length(option[menu_level]);

if (down_key || up_key){
	// move through menu
	pos += down_key - up_key;
	// loop to top or bottom when out of range
	if (pos >= op_length) pos = 0;
	if (pos < 0) pos = op_length-1;
}
if(exit_key){
	instance_deactivate_object(id);
}

// use options
if (accept_key){
	var _ml = menu_level;
	switch (menu_level){
		// main menu
		case 0:
			switch (pos){
				// buy
				case 0:
					// bring up the shopping page
					instance_activate_object(obj_general_shopping_page);
					instance_deactivate_object(id);
					break;
				// talk
				case 1:
					// bring up dialogue
					talk_to(CLAUDE);
					instance_deactivate_object(id);
					break;
				// exit | gift
				case 2:
					if(option == menu_with_gift){
						// bring up gift shit
						create_textbox("Claude-gift-1");
						instance_deactivate_object(id);
					}
					break;
			}
			pos = 0;
			break;
	}
	// reset pos
	if (_ml != menu_level) pos = 0;
	op_length = array_length(option[menu_level]);
}