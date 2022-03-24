/// @description Insert description here
// You can write your code in this editor
draw_self();
if (place_meeting(_interact_check_x,_interact_check_y,obj_interactable)){
	//find if anything interactable exists infront of player; if so, display it.
	//might improve the way of display in the future
	draw_text(x,y+50,"!!");
}
//	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.tiles_collision_name))