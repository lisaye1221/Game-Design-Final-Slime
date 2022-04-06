/// @description Insert description here
// You can write your code in this editor
/// @description enabled direct harvest
// You can write your code in this editor

if(ready){
	show_debug_message("how bout dis");
	ready = false;
	sprite_index = sprite_empty;
	prompt_text = "The "+harvest.name+" is still growing.";
	// add 1 unit of crop to inventory
	gain_one_item(harvest);
	audio_play_sound(sfx_collect_berries, 2, false);
	instance_destroy();
	show_debug_message("are we like running this");
}