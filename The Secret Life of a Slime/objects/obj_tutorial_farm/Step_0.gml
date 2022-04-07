if keyboard_check_pressed(ord("S")) {
	global.tutorial_ended_farm = true;
}

if (b4 and sentence_index < array_length(s4) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s4[sentence_index]
}

if (b5 and sentence_index < array_length(s5) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s5[sentence_index]
}

if (b6 and sentence_index < array_length(s6) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s6[sentence_index]
}



if b4 and obj_player.place_meeting(obj_player.x,obj_player.y,obj_bush) {
	b4 = false;
	b5 = true;
}

/*
if b2 and keyboard_check_pressed(ord("Z")) and global.touchedBed {
	alarm[3] = 2.0 * room_speed;
	global.touchedBed = false;
	
}


if b3 and sentence_index == 2 {
	global.tutorial_ended = true;
}



else if (keyboard_check_pressed(vk_enter)) {
	alarm[1] = room_speed * 0.1
}



*/