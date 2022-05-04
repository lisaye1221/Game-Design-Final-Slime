/// @description Insert description here
// You can write your code in this editor

depth = -9999;
	  
// set sprite direction	
if(y_speed > 0) {face = DOWN;}
if(y_speed < 0) {face = UP;}
if(x_speed > 0) {face = RIGHT;}
if(x_speed < 0) {face = LEFT;}
sprite_index = sprite[face]


// move camera left when player walks off screen
if (x < camera_get_view_x(cam)){
	//view_x -= view_width;	// i think this is shifting by an entire screen width
	//show_debug_message("player pos: " + string(x) + ", cam pos: " + string(camera_get_view_x(cam)));
	camera_set_view_pos(cam, camera_get_view_x(cam) - camera_get_view_width(cam)/2, camera_get_view_y(cam));
}
if(x > camera_get_view_x(cam) + camera_get_view_width(cam)) {
	camera_set_view_pos(cam, camera_get_view_x(cam) + camera_get_view_width(cam)/2, camera_get_view_y(cam));
}
	
// move camera down when player walks below screen
if (y < camera_get_view_y(cam)){
	//show_debug_message("player pos: " + string(y) + ", cam pos: " + string(camera_get_view_y(cam)));
	camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam) - camera_get_view_height(cam)/2);
}
if (y > camera_get_view_y(cam) + camera_get_view_height(cam)){
	camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam) + camera_get_view_height(cam)/2);
}
	
	
footstep_audio_count += 1;
footstep_audio_count = footstep_audio_count mod footstep_audio_reset;
	
if (((x_speed != 0) || (y_speed != 0)) && (footstep_audio_count == 0)) {
	// play footstep sfx
	// audio_play_sound(sfx_footsteps, 0, false);
	// maybe add squelching sound as well
	if(sprite == human_sprite){
		audio_sound_set_track_position(sfx_footsteps, 0.2);
		audio_play_sound(sfx_footsteps, 0, false);
	}
	else{
		audio_play_sound(sfx_slime_splat, 0, false);
	}
}
	
// move the player
x += x_speed;
y += y_speed;

	

