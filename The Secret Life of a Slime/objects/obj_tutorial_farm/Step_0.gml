if keyboard_check_pressed(ord("S")) {
	global.tutorial_ended_farm = true;
}

if global.tutorial_ended_farm {
	instance_deactivate_object(inst_farmlock)
	instance_deactivate_object(inst_homelock)
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

if (b9 and sentence_index < array_length(s9) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s9[sentence_index]
}

if (b10 and sentence_index < array_length(s10) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s10[sentence_index]
}

if (b11 and sentence_index < array_length(s11) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s11[sentence_index]
}


if b4 and sentence_index == array_length(s4) - 1 and (obj_player.interactable_object!= noone && obj_player.interactable_object.object_index == obj_bush) and keyboard_check_pressed(ord("Z")){
		b4 = false;
		b5 = true;
		sentence_index = 0;
		sentence = s5[sentence_index]
}

if b5 and keyboard_check_pressed(ord("E")) {
		b5 = false;
		b6 = true;
		sentence_index = 0;
		sentence = s6[sentence_index]
}

if b8 and keyboard_check_pressed(ord("E")) {
		b8 = false;
		b9 = true;
		sentence_index = 0;
		sentence = s9[sentence_index]
		
		show_debug_message("xoxoox")
}



if b9 and sentence_index == array_length(s9) - 1  and keyboard_check_pressed(ord("3")) {
		b9 = false;
		b10 = true;
		sentence_index = 0;
		sentence = s10[sentence_index]
}


if b10 and (obj_player.interactable_object!= noone && obj_player.interactable_object.object_index == obj_farm_plot) {
		b10 = false;
		b11 = true;
		sentence_index = 0;
		sentence = s11[sentence_index]
}


if b11 and sentence_index == array_length(s11) - 1  and keyboard_check_pressed(ord("X")) {
		b11 = false;
		b12 = true;
		sentence_index = 0;
		sentence = s10[sentence_index]
}


if b6 and sentence_index == array_length(s6) - 1 and (keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right)) {
	b6 = false;
	b7 = true;
	sentence_index = 0;
	sentence = s7[sentence_index]
}


if b7 and (keyboard_check_pressed(ord("M")) or keyboard_check_pressed(ord("N"))) {
	b7 = false;
	b8 = true;
	sentence_index = 0;
	sentence = s8[sentence_index]

}

if b12 {
	global.tutorial_ended_farm = true;
}







/*
if b2 and keyboard_check_pressed(ord("Z")) and global.touchedBed {
	alarm[3] = 2.0 * room_speed;
	global.touchedBed = false;
	
}






else if (keyboard_check_pressed(vk_enter)) {
	alarm[1] = room_speed * 0.1
}



*/