/// @description Insert description here
// You can write your code in this editor


if !playerTouched and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("Z")) {
	instance_destroy();
}

if room != roomAssigned {
	visible = false
}
else {
	visible = true;
}

