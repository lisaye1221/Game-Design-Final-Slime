/// @description Insert description here
// You can write your code in this editor
var delta_second = global.paused?0: delta_time/1000000;
if(crop_growth_remaining > 0){
	crop_growth_remaining -= (delta_second);
	image_index = floor((crop_growth_time - crop_growth_remaining) / interval);
}
else{
	image_index = image_number - 1;
	harvestable = true;
}