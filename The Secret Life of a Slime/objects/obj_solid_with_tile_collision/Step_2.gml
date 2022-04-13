/// @description inherent this object for tile collision check
// You can write your code in this editor

//tile collision handle
		//this is a temporary implementation. If "layer_tilemap_get_id" is a very expensive command,
		//will probably store the map id in some way. 

if (layer_exists(global.tiles_collision_name)){
	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.tiles_collision_name))
}

if (!global.unlock_homedoor and layer_exists(global.door_collision_name)){
	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.door_collision_name))
}

if (!global.tutorial_ended_farm and layer_exists(global.farm_collision_name)){
	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.farm_collision_name))
}


/*
if (!global.tutorial_ended and layer_exists(global.tiles_collision_name_2)){
	basicTileCollisionHandleNoGravity(layer_tilemap_get_id(global.tiles_collision_name_2))
}
*/