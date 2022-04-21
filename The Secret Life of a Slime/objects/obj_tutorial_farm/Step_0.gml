if keyboard_check_pressed(ord("S")) {
	global.tutorial_ended_farm = true;
	global.tutorial_stage_on_inv = false;
}


if global.tutorial_ended_farm {
	instance_deactivate_object(inst_farmlock)
	instance_deactivate_object(inst_homelock)
}

if !global.tutorial_ended_farm and !energyLost and b4 and sentence_index == 1 {
	energyLost = true
	global.energy -= 10;
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

if (b12 and sentence_index < array_length(s12) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s12[sentence_index]
}


if (b13 and sentence_index < array_length(s13) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s13[sentence_index]
}


if (b14 and sentence_index < array_length(s14) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s14[sentence_index]
}

if (b15 and sentence_index < array_length(s15) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s15[sentence_index]
}
/*
if (b16 and sentence_index < array_length(s16) - 1 and keyboard_check_pressed(ord("X"))) {	
	sentence_index +=1
	sentence = s16[sentence_index]
}
*/


if b4 and sentence_index == array_length(s4) - 1 and (obj_player.interactable_object!= noone && obj_player.interactable_object.object_index == obj_bush) and keyboard_check_pressed(ord("Z")){
		b4 = false;
		b5 = true;
		sentence_index = 0;
		sentence = s5[sentence_index]
}

if b5 and keyboard_check_pressed(ord("E")) {
		b5 = false;
		b6 = true;
		global.tutorial_stage_on_inv = true;
		sentence_index = 0;
		sentence = s6[sentence_index]
}


if b6 and sentence_index == array_length(s6) - 1 and (keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right)) {
	b6 = false;
	alarm[0] = 2.0 * room_speed
}


if b7 and (keyboard_check_pressed(ord("M")) or keyboard_check_pressed(ord("N"))) {
	b7 = false;
	global.tutorial_stage_on_inv = false;
	alarm[1] = 3.0 * room_speed

}

if b8 and keyboard_check_pressed(ord("E")) {
		b8 = false;
		alarm[2] = 1.0 * room_speed;
}


if b8 and (get_item_count(global.item_list.wheat_seeds) == 0) {
	berryOne = true
	s9[1] = "You use 1-6 to use items in your inventory. Press 1 to eat that berry!"
}

//what is berry is in 1? 

if berryOne and b9 and sentence_index == array_length(s9) - 1  and keyboard_check_pressed(ord("1")) {
		b9 = false;
		b10 = true;
		sentence_index = 0;
		sentence = s10[sentence_index]
}

if !berryOne and b9 and sentence_index == array_length(s9) - 1  and keyboard_check_pressed(ord("2")) {
		b9 = false;
		b10 = true;
		sentence_index = 0;
		sentence = s10[sentence_index]
}


if b10 and (obj_player.interactable_object!= noone && (obj_player.interactable_object.object_index == obj_farm_plot or obj_player.interactable_object.object_index == obj_crop)) {
		b10 = false;
		b11 = true;
		sentence_index = 0;
		sentence = s11[sentence_index]
}


if b11 and sentence_index == array_length(s11) - 1  and (get_item_count(global.item_list.wheat_seeds) == 0) {
		b11 = false;
		b12 = true;
		sentence_index = 0;
		sentence = s12[sentence_index]
}

//change to 4 and make tutorial speed crops FAST
if b12 and sentence_index == array_length(s12) - 1  and (get_item_count(global.item_list.wheat) == 4) {
		b12 = false;
		b13 = true;
		sentence_index = 0;
		sentence = s13[sentence_index]
}

//change to 1  //make s16 red? 
if b13 and sentence_index == array_length(s13) - 1  and (get_item_count(global.item_list.wheat) == 1) {
		b13 = false;
		b14 = true;
		sentence_index = 0;
		sentence = s14[sentence_index]
}


if b14 and sentence_index == array_length(s14) - 1  and (get_item_count(global.item_list.slime_jelly) == 1) {
		b14 = false;
		b15 = true;
		sentence_index = 0;
		sentence = s15[sentence_index]
}

if b15 and sentence_index == array_length(s15) - 1 {
		b15 = false;
		b16 = true;
		sentence_index = 0;
		sentence = s16[sentence_index]
}


if b16 or (b15 and sentence_index == array_length(s15) - 1)  {
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