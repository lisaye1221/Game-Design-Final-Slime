/// @description Insert description here
// You can write your code in this editor
depth = -y;
if(!has_berries && !growing){
	growing = true;
	berry_time_remaining = irandom_range(MIN_GROWTH_TIME, MAX_GROWTH_TIME);
}
if(berry_time_remaining > 0 && growing) {
	berry_time_remaining -= global.delta_second;	
}
if(growing && berry_time_remaining <= 0){
	has_berries = true;
	growing = false;
	sprite_index = spr_bush_full;
	prompt_text = "Pick berry?";
}