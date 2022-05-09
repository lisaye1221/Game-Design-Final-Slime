/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_textbox)){
	show_debug_message("switch to scene 2");
	room_goto(ending_special_scene2)
	fadeout = false;
	alarm[1] = 1;
}
else{
	alarm[0] = 1;	
}
