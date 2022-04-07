/// @description Insert description here
// You can write your code in this editor
if(ready){
	ready = false;
	sprite_index = sprite_empty;
	prompt_text = "The "+harvest.name+" is still growing.";
	// add 1 unit of crop to inventory
	gain_one_item(harvest);
	audio_play_sound(sfx_collect_berries, 2, false);
	
	// reset the plot to be usable again
	my_plot = instance_place(x+1,y+1,obj_farm_plot);
	if (my_plot != noone){
		my_plot.ready = true;
		my_plot.prompt_text = "Plant seed?"
	}
	
	instance_destroy();
}