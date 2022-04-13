/// @description Insert description here
// You can write your code in this editor
if(ready){
	ready = false;
	sprite_index = sprite_empty;
	prompt_text = "The "+harvest.name+" is still growing.";
	// add 1 unit of berries to inventory
	gain_one_item(harvest);
	audio_play_sound(sfx_collect_berries, 2, false);
}
