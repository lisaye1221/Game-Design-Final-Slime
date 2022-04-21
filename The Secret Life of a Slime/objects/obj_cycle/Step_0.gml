/// @description create light surface
// You can write your code in this editor
if (global.paused or global.tutorial_active){
	if (alarm[1] >= 0){
		alarm[1] += 1;
	}
	if (alarm[0] >= 0){
		alarm[0] += 1;
	}
}
//show_debug_message("night"+string(alarm[1]))
//show_debug_message(alarm[2])
var _cam = view_camera[0];
left = camera_get_view_x(_cam);
top = camera_get_view_y(_cam);

if (!surface_exists(surf)) {
	show_debug_message("creating surface")
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
surface_set_target(surf);
draw_clear_alpha(c_black,alpha)
if (!in_door()){
	
	/*
	draw_set_color(c_orange);
	draw_set_alpha(alpha_yellow);
	draw_rectangle(0,0,_w,guiHeight, 0);
	*/
	
	if (currently == "night"){
		//show_debug_message("at night")
		gpu_set_blendmode(bm_subtract);
		//draw_set_alpha(alpha);
		var _radius = 64;
		with (obj_player) {
			var _x = x + random_range(-1, 1)-other.left
			var _y = y + random_range(-1, 1)-other.top
			//draw_circle(_x,_y,_radius, false)
			draw_sprite(other.light_sprite,0,_x,_y);
		}
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}
surface_reset_target();
