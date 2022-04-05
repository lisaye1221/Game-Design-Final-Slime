// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_shop(){
	return asset_has_tags(room,"shop",asset_room);
}

function in_town(){
	return asset_has_tags(room,"town",asset_room);
}

function in_door(){
	return asset_has_tags(room,"indoor",asset_room);
}
	
function in_home(){
	return asset_has_tags(room,"home",asset_room);
}