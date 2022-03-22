/// @description Insert description here
// You can write your code in this editor
draw_self();
if (place_meeting(_interact_check_x,_interact_check_y,obj_interactable)){
	draw_text(x,y+50,"!!");
}
	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.tiles_collision_name))