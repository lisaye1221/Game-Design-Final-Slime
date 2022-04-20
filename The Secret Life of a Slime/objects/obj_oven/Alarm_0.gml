/// @description Pulls up menu
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

if (this_machine.status == "empty"){
	obj_food_cook_menu.alarm[0] = 1;
} else if (this_machine.status == "busy"){
	// do nothing
} else if (this_machine.status == "full"){
	if (will_item_fit(convert_to, convert_to_count)){
		gain_item(convert_to, convert_to_count);
		this_machine.status = "empty";
	}
}

if (this_machine.status == "busy") ready = false;
else ready = true;
