if global.tut_keys_on and keyboard_check_pressed(ord("X")) {
	global.tut_keys_on = false;
	b0 = false;
	b1 = true;
}

if keyboard_check_pressed(ord("S")) {
	alarm[1] = room_speed * 0.1;
}

if (b1 and sentence_index < array_length(s1) - 1 and keyboard_check_pressed(vk_enter)) {	
	sentence_index +=1
	sentence = s1[sentence_index]
}

if (b2 and sentence_index < array_length(s2) - 1 and keyboard_check_pressed(vk_enter)) {	
	sentence_index +=1
	sentence = s2[sentence_index]
}

if (b3 and sentence_index < array_length(s3) - 1 and keyboard_check_pressed(vk_enter)) {	
	sentence_index +=1
	sentence = s3[sentence_index]
}

if sentence_index == 2 and b1 and (keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or 
keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)) {
	alarm[2] = 0.35 * room_speed;
}

if b2 and global.touchedBed {
	alarm[3] = 2.0 * room_speed;
	global.touchedBed = false;
	
}


/*
else if (keyboard_check_pressed(vk_enter)) {
	alarm[1] = room_speed * 0.1
}
*/

