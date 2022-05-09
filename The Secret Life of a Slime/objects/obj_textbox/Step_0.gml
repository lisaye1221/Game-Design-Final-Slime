/// @description Insert description here
// You can write your code in this editor

// if textbox is empty, delete self
if(page_number = 0){
	if(!is_previously_paused){
		global.unpause_signal = true;
	}
	instance_destroy(id);
}

if(is_speaker_sfx_playing && draw_char == text_length[page]){
	audio_stop_sound(speaker_sfx);
	is_speaker_sfx_playing = false;
}
