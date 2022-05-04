/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_textbox)){
	room_goto(ending_betrayal_scene2)
	fadeout = false;
	show_text = true;
}
else{
	alarm[0] = 1;
}
