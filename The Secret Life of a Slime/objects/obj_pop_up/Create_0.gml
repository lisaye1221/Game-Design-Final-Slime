/// @description Insert description here
// You can write your code in this editor

persistent = true;

draw_set_font(ft_dialog);

// load animation curve assets
curve_down = curve_slide_down;
curve_up = curve_slide_up;

// var to track position along curves
pos_down = 0;
pos_up = 0;

// speed of the animation
anim_speed = 0.02;

y_start = 0;
y_curr = 0;

x_pos = 0;

icon_width = 64;
icon_height = 64;
	
border_size = 20;

cam = view_get_camera(0);

if (global.curr_completed_ach != undefined) {
	
	top_text = "Achievement Completed:";
	bottom_text = global.curr_completed_ach.ach_name;
	
	icon = spr_trophy;
	
	// get text sizing
	text_width = max(string_width(top_text), string_width(bottom_text));
	text_height = string_height(top_text) + 3 + string_height(bottom_text);
	
	box_width = border_size + icon_width + text_width + border_size;
	box_height = border_size + max(icon_height, text_height) + border_size;

	x_pos = camera_get_view_width(cam)/2 - box_width/2;
	
	y_start = -box_height;
	y_curr = y_start;

	
}

