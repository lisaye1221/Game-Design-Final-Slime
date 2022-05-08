/// @description Insert description here
// You can write your code in this editor
if (surface_exists(surf)) {
	//show_debug_message("???")
	var _cam = view_camera[0];
	left = camera_get_view_x(_cam);
	top = camera_get_view_y(_cam);
	draw_surface(surf, left, top);
	
}