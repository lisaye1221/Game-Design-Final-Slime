/// @description create light surface
// You can write your code in this editor
if (!instance_exists(obj_npc_with_menu)){
	//which indicates it is not a shop
		//if we put npc_with_menu in other rooms in the future, 
		//we would need to change this
	if (!surface_exists(surf)) {
		surf = surface_create(room_width, room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
	}
	surface_set_target(surf);
	draw_set_color(c_black)
	draw_set_alpha(alpha);
	var _cam = view_camera[0];
	left = camera_get_view_x(_cam);
	top = camera_get_view_y(_cam);
	var _w = camera_get_view_width(_cam);
	draw_rectangle(0,0,_w,guiHeight, 0);
	if (currently == "night"){
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
		with (obj_player) draw_circle(x + random_range(-1, 1)-other.left, y + random_range(-1, 1)-other.top, 50 + random_range(-1, 1), false);
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	}
else{
	surface_free(surf);
}


