/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (place_free(x,y)){
if (global.days >= unlock_requirement&&room == home){
	create_textbox("auto-unlock-plot");	
	var _farm_plot_distance_x = (sprite_width-obj_farm_plot.sprite_width)/(x_plot_num-1);
	var _farm_plot_distance_y = (sprite_height-obj_farm_plot.sprite_height)/(y_plot_num-1);
	for (var _i = 0; _i < y_plot_num;++_i){
		var _farm_plot_y = y + _i * _farm_plot_distance_y;
		for (var _j = 0; _j < x_plot_num; ++_j){
			var _farm_plot_x = x + _j * _farm_plot_distance_x;
			instance_create_layer(_farm_plot_x,_farm_plot_y,"crops",obj_farm_plot);
		}
	}
	show_debug_message("room start")
	instance_destroy()
}
}

if (gold_and_days){
	if (global.days >= gold_and_days_daycount){
		if(room == home){
			create_textbox("day-unlocked-money");		
			show_debug_message("gold and days: room start")			
		}
	}
}
