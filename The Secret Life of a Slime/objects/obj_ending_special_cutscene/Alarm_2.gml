/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_textbox)){
	show_text = true;
	instance_activate_object(obj_laugh_effect);
	audio_play_sound(bgm_ending_normal, 1, true);
}
else{
	alarm[2] = 1;	
}
