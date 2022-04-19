/// @description Insert description here
// You can write your code in this editor
show_debug_message("event_user_0 triggered")
if (global.days>=global.lola_door_unlock_day){
	instance_destroy();
}