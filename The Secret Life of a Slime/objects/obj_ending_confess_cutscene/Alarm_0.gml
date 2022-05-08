/// @description Insert description here
// You can write your code in this editor

if(room == ending_confess_scene2){
	fadeout = false;
	if(a <= 0){
		create_textbox("ending-confess-dialogue-2");
		alarm[1] = room_speed * 1;
	}
	else{
		alarm[0] = 1;	
	}
}
