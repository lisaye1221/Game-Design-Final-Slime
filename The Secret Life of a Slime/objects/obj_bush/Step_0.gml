/// @description Insert description here
// You can write your code in this editor
depth = -y;
if(!ready && !growing){
	growing = true;
	grow_time_remaining = irandom_range(MIN_GROWTH_TIME, MAX_GROWTH_TIME);
}
if(grow_time_remaining > 0 && growing) {
	grow_time_remaining -= global.delta_second;	
}
if(growing && grow_time_remaining <= 0){
	ready = true;
	growing = false;
	sprite_index = sprite_full;
	prompt_text = "Pick "+harvest.name+"?";
}
