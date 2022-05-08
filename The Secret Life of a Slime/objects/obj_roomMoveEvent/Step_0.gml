/// @description move to specified room and location 
// specified the location in "variables" of the roommove event placed IN THE ROOM (NOT THE OBJECT TEMPLATE)
// You can write your code in this editor

if (!obj_game_manager.is_room_transition && position_meeting(obj_player.x,obj_player.y,id)) && (!instance_exists(obj_room_transition)){
	triggered = true;
	// play door sfx
	audio_play_sound(sfx_door, 0, false);
	var _trans_inst = instance_create_depth(0,0,-99999, obj_room_transition);
	_trans_inst.newX = newX;
	_trans_inst.newY = newY;
	_trans_inst.roomToGo = roomToGo;
}

if(obj_game_manager.is_room_transition){
	if(instance_exists(obj_room_transition)){
		instance_destroy(obj_room_transition);	
	}
}
