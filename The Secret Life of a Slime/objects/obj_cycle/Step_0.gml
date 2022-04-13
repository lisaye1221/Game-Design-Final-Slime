/// @description create light surface
// You can write your code in this editor
if (global.paused){
	if (alarm[1] >= 0){
		alarm[1] += 1;
	}
	if (alarm[0] >= 0){
		alarm[0] += 1;
	}
}
show_debug_message("night"+string(alarm[1]))
show_debug_message(alarm[2])
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
draw_clear_alpha(c_black,0)
if (!in_door()){
	draw_set_color(c_black)
	draw_set_alpha(alpha);
	var _w = camera_get_view_width(_cam);
	draw_rectangle(0,0,_w,guiHeight, 0);
	if (currently == "night"){
		//show_debug_message("at night")
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
		with (obj_player) draw_circle(x + random_range(-1, 1)-other.left, y + random_range(-1, 1)-other.top, 50 + random_range(-1, 1), false);
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}
surface_reset_target();
