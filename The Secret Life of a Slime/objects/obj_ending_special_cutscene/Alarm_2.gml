/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_textbox)){
	show_text = true;
	obj_Nelu_deco.sprite_index = spr_farmer_left;
	obj_Nelu_deco.image_index = 1;
	obj_Claude_deco.sprite_index = spr_machineman_right;
	obj_Claude_deco.image_index = 1;
	instance_activate_object(obj_laugh_effect);
	audio_play_sound(bgm_ending_normal, 1, true);
}
else{
	alarm[2] = 1;	
}
