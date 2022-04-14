/// @description Insert description here
// You can write your code in this editor


if !playerTouched and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("Z")) {
	playerTouched = true;
}

if playerTouched {
	image_index = 8;
}


if room != roomAssigned {
	image_index = 8
}
else {
	image_speed = 1;
}

