/// @description Insert description here

key_pressed = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"))

if(place_meeting(x, y, obj_player) && key_pressed && !instance_exists(obj_textbox)){
	create_textbox(text_id);	
}
