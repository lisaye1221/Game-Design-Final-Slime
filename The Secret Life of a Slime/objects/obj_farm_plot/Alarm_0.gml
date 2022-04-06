/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// if you have seeds AND no plant here currently
if (ready){
	ready = false;
	// plant (should depend on which seed
	instance_create_layer(relative_pos_x+15, relative_pos_y+8, "crops", obj_crop);
	prompt_text = "";
}
// the rest is done by the crop itself
// should delete it afterwards