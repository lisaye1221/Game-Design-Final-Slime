if keyboard_check_pressed(ord("S")) {
	alarm[1] = room_speed * 0.1;
}
if (sentence_index < 13 and keyboard_check_pressed(vk_enter)) {
	sentence_index +=  1
	letter_index = 0;
	
	sentence = sentences[sentence_index]
	alarm[0] = 0.06 * room_speed;
}
else if (keyboard_check_pressed(vk_enter)) {
	alarm[1] = room_speed * 0.1
}

