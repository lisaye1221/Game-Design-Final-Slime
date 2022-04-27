/// @description Insert description here
// You can write your code in this editor

pos_down += anim_speed;

// apply down anim curve's y channel
var _down_struct = animcurve_get(curve_down);
var _down_channel = animcurve_get_channel(_down_struct, "y");

var _down_val = animcurve_channel_evaluate(_down_channel, pos_down);

y_curr = y_start + (_down_val*(box_height-border_size));

if (pos_down >= 3) {
	
	pos_up += anim_speed;
	
	var _up_struct = animcurve_get(curve_up);
	var _up_channel = animcurve_get_channel(_up_struct, "y");
	
	var _up_val = animcurve_channel_evaluate(_up_channel, pos_up);
	
	y_curr = y_start + (_up_val*(box_height-border_size));
	
	if (pos_up >= 1.1) {
		instance_destroy();
	}
}





