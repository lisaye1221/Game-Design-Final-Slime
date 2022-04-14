/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(ready){
	if (will_item_fit(harvest, 1)){
		ready = false;
		sprite_index = sprite_empty;
		prompt_text = "The "+harvest.name+" is still growing.";
		// add 1 unit of crop to inventory
		gain_one_item(harvest);
		audio_play_sound(sfx_crop_collect, 2, false);
		// reset the plot to be usable again	
		instance_destroy();
	}
	else{
		create_textbox("warn-inventory-full");
	}
}
