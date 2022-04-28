/// @description Insert description here
// You can write your code in this editor


if !playerTouched and place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("Z")) {
	visible = false;
	triggered = true;
}

if room != roomAssigned {
	visible = false
}
else {
	if (!triggered){
		visible = true;
	}
}

