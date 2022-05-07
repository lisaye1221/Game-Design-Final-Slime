 /// @description Insert description here
// You can write your code in this editor

if (storage_open) {
	storage_open = false;
	global.unpause_signal = true;
	audio_play_sound(sfx_str_close, 0, false);
}
