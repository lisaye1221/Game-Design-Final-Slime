/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// just random between whether its wheat or tomato rn
count = irandom(9);

// if you have seeds AND no plant here currently
if (ready){
	ready = false;
	// plant (should depend on which seed)
	if (count%2 == 0){
		instance_create_layer(relative_pos_x+15, relative_pos_y+8, "crops", obj_crop);
	} else {
		instance_create_layer(relative_pos_x, relative_pos_y, "crops", obj_tomato_crop);
	}
	prompt_text = "";
	ready=false;
}
// the rest is done by the crop itself