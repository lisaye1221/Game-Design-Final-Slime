/// @description Insert description here
// You can write your code in this editor

if(!obj_game_manager.is_room_transition){
	room_goto(roomToGo);
	with (obj_player){
		x = other.newX
		y = other.newY
	}
}

image_speed = -1;
instance_destroy()