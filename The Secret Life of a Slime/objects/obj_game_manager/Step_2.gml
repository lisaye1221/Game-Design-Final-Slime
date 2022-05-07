/// @description reset room transition and pause
// You can write your code in this editor

is_room_transition = false;
if (global.unpause_signal){
	global.unpause_signal = false;
	global.paused = false;
}