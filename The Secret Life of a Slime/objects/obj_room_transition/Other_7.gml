/// @description Insert description here
// You can write your code in this editor

room_goto(roomToGo);
with (obj_player){
	x = other.newX
	y = other.newY
}


image_speed = -1;
global.paused = false;
instance_destroy()