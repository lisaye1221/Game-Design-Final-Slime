if global.tut_keys_on and keyboard_check_pressed(ord("X")) {
	global.tut_keys_on = false;
	b0 = false;
	b1 = true;
}

if global.unlock_homedoor {
	instance_deactivate_object(inst_lock)
}

if keyboard_check_pressed(ord("S")) {
	global.tutorial_restrict = false;
	global.tut_keys_on = false;
	global.tutorial_ended = true;
	global.tutorial_ended_farm = true;
	global.unlock_homedoor = true;
}

if (timerCheck and timerStart) {
	timerCheck = false;
	alarm[4] = 3.0 * room_speed;
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
	alarm[2] = 0.6 * room_speed;
}

if b2 and keyboard_check_pressed(ord("Z")) and global.touchedBed {
	alarm[3] = 3.0 * room_speed;
	global.touchedBed = false;
	
}


if b3 and sentence_index == 2 {
	global.tutorial_ended = true;
}


if b3 and sentence_index == 1 {
	global.unlock_homedoor = true;
}





