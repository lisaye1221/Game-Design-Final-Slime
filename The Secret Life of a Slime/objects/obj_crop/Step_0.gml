/// @description Insert description here
// You can write your code in this editor
depth = -y;
if(!harvestable && !growing){
	growing = true;
	grow_time_remaining = irandom_range(MIN_GROWTH_TIME, MAX_GROWTH_TIME);
}
if(grow_time_remaining>0){
	if(growing) {
		grow_time_remaining -= global.delta_second;	
		image_index = floor((MAX_GROWTH_TIME - grow_time_remaining) / interval)
	}
}
else{
	image_index = 3;
}
if(growing && grow_time_remaining <= 0){
	harvestable = true;
	growing = false;
	//prompt_text = "Pick "+harvest.name+"?";
}
