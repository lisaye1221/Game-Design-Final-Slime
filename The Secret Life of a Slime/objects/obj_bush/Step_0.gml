/// @description Insert description here
// You can write your code in this editor
var delta_second = global.paused?0: delta_time/1000000;
depth = -y;
if(!has_berries && !growing){
	growing = true;
	berry_time_remaining = irandom_range(MIN_GROWTH_TIME, MAX_GROWTH_TIME);
}
if(berry_time_remaining > 0 && growing) {
	berry_time_remaining -= delta_second;	
}
if(growing && berry_time_remaining <= 0){
	has_berries = true;
	growing = false;
}
sprite_index = has_berries ? spr_bush_full : spr_bush_empty;
