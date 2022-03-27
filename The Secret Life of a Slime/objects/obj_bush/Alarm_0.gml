/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(has_berries){
	has_berries = false;
	// add 1 unit of berries to inventory
	gain_one_item(global.item_list.berries);
	audio_play_sound(sfx_collect_berries, 2, false);
}