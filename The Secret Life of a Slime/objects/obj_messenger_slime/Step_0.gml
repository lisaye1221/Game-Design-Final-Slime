/// @description Insert description here
// You can write your code in this editor

image_speed = 0.1;

if (!global.has_reached_ending || !in_home()){
	visible = false;	
	interactable = false;
	solid = false;
}else{
	visible = true;	
	interactable = true;
	solid = true;
	// in case collides with player
	if(place_meeting(x,y, obj_player)){
		obj_player.y +=5;	
	}
}
