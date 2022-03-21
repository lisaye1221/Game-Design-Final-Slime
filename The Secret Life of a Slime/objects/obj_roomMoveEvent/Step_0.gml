/// @description Insert description here
// You can write your code in this editor

if (position_meeting(obj_player.x,obj_player.y,id)){
	triggered = true;
	room_goto(roomToGo);
	with (obj_player){
		x = other.newX
		y = other.newY
	}
}
