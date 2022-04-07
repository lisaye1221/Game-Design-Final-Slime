if global.tut_keys_on and keyboard_check_pressed(ord("X")) {
	global.tut_keys_on = false;
	b0 = false;
	b1 = true;
}

if keyboard_check_pressed(ord("S")) {
	global.tut_keys_on = false;
	global.tutorial_ended = true;
}

if (b1 and sentence_index < array_length(s1) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s1[sentence_index]
}

if (b2 and sentence_index < array_length(s2) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s2[sentence_index]
}

if (b3 and sentence_index < array_length(s3) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s3[sentence_index]
}


if sentence_index == 3 and b1 and (keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or 
keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)) {
	alarm[2] = 0.35 * room_speed;
}

if b2 and keyboard_check_pressed(ord("Z")) and global.touchedBed {
	alarm[3] = 3.0 * room_speed;
	global.touchedBed = false;
	
}

if b3 and sentence_index == 2 {
	global.tutorial_ended = true;
}



