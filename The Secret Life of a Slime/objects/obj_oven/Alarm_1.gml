/// @description Converts the food
// You can write your code in this editor

// i think we should use convert_to
if (this_machine.status == "empty"){
	audio_play_sound(sfx_machine_operate, 2, false);
	this_machine.status = "busy";
	//this_machine.durability -= 1;
}
