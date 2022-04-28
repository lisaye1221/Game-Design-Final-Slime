// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_use_item_slime_conv(item, this_machine){
	// inputting wheat if they have enough in inventory
	show_debug_message("inside conversion function")
	if (get_item_count(item) >= item.conversion_rate){
		show_debug_message("we have enough")
		// take wheat from player, start timer, show progress bar
		audio_play_sound(sfx_machine_operate, 2, false);
		this_machine.amount_to_convert = item.conversion_rate;
		lose_item(item, item.conversion_rate);
		this_machine.status = "busy";
		this_machine.durability -= 1;
		// change text
	} 
}

function scr_use_item_seeds_conv(item, this_machine){
		if (get_item_count(item) >= this_machine.convert_from_count){
		// take wheat from player, start timer, show progress bar
		audio_play_sound(sfx_machine_operate, 2, false);
		this_machine.amount_to_convert = convert_from_count;
		lose_one_item(item);
		this_machine.status = "busy";
		this_machine.durability -= 1;
		if (item.seeds != noone) this_machine.convert_to = item.seeds;
	} 
}
