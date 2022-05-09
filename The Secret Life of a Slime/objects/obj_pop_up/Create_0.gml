/// @description Insert description here
// You can write your code in this editor

persistent = true;

depth = -9999;

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

if (obj_pop_up_manager.pop_up_type == 0) {
	
	// play sound effect
	audio_play_sound(sfx_achievement, 0, false);
	
	top_text = "Achievement Completed:";
	bottom_text = obj_pop_up_manager.pop_up_item.ach_name;
	
	icon = spr_trophy;

}
else if (obj_pop_up_manager.pop_up_type == 1) {
	
	// play sound effect
	audio_play_sound(sfx_tier_up, 0, false);
	
	top_text = "Relationship Tier Up:";
	bottom_text = obj_pop_up_manager.pop_up_item.npc_name + ": Tier " + string(obj_pop_up_manager.pop_up_item.tier);
	
	icon = spr_heart;
	
}
// transformation time warning pop-up
else if (obj_pop_up_manager.pop_up_type == 2) {
	
	// play sound effect
	audio_play_sound(sfx_tier_up, 0, false);
	
	top_text = "Low Transformation Time";
	bottom_text =  "";
	
	icon = undefined;
	
	icon_height = 0;
	icon_width = 0;
	
}

// transformation time warning pop-up
else if (obj_pop_up_manager.pop_up_type == 3) {
	
	// play sound effect
	audio_play_sound(sfx_tier_up, 0, false);
	
	top_text = "Low Energy";
	bottom_text =  "";
	
	icon = undefined;
	
	icon_height = 0;
	icon_width = 0;
	
}

if (obj_pop_up_manager.pop_up_type >= 0) {
	
	// get text sizing
	text_width = max(string_width(top_text), string_width(bottom_text));
	text_height = string_height(top_text) + 3 + string_height(bottom_text);
	
	box_width = border_size + icon_width + text_width + border_size;
	box_height = border_size + max(icon_height, text_height) + border_size;

	x_pos = camera_get_view_width(cam)/2 - box_width/2;
	
	y_start = -box_height;
	y_curr = y_start;

}


