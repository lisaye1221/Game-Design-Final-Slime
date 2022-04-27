/// @description move to specified room and location 
// specified the location in "variables" of the roommove event placed IN THE ROOM (NOT THE OBJECT TEMPLATE)
// You can write your code in this editor

if (position_meeting(obj_player.x,obj_player.y,id)){
	triggered = true;
	room_goto(roomToGo);
	// play door sfx
	audio_play_sound(sfx_door, 0, false);
	with (obj_player){
		x = other.newX
		y = other.newY
	}
}
