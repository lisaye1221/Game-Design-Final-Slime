/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
draw_surface(surf, left, top);