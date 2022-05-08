/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_textbox)){
	if(obj_player_ending.x < 270){
		obj_player_ending.x_speed = 3;	
		alarm[1] = 1;
	}

	else if(obj_player_ending.x >= 270 && obj_player_ending.y > 400){
		obj_player_ending.x_speed = 0;
		obj_player_ending.y_speed = -3;
		alarm[1] = 1;
	}
	
	else if(obj_player_ending.y <= 400 && obj_player_ending.x < 575){
		obj_player_ending.x_speed = 3;
		obj_player_ending.y_speed = 0;
		alarm[1] = 1;
	}

	else if(obj_player_ending.x >= 575){
		obj_player_ending.x_speed = 0;
		obj_player_ending.face = UP;
		obj_Nelu_deco.sprite_index = spr_farmer_down;
		obj_Nelu_deco.image_index = 1;
		obj_Claude_deco.sprite_index = spr_machineman_down;
		obj_Claude_deco.image_index = 1;
		create_textbox("ending-confess-dialogue-3");
		alarm[2] = 1;
	}
}else{
	alarm[1] = 1;	
}
