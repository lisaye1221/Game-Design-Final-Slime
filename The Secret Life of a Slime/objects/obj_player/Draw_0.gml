/// @description Insert description here
// You can write your code in this editor
draw_self();
if (interactable_object!=noone && interactable_object.interactable){
	//find if anything interactable exists infront of player; if so, display it.
	//might improve the way of display in the future
	draw_text(x,y+50,"!!");
}
//	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.tiles_collision_name))