/// cheats

relationship_claude = keyboard_check_pressed(ord("1"));
relationship_lavana = keyboard_check_pressed(ord("2"));
relationship_nelu = keyboard_check_pressed(ord("3"));
relationship_lola = keyboard_check_pressed(ord("4"));

if(relationship_lavana){
	increase_relationship(LAVANA, 5);
}
if(relationship_claude){
	increase_relationship(CLAUDE, 5);
}
if(relationship_nelu){
	increase_relationship(NELU, 5);
}
if(relationship_lola){
	increase_relationship(LOLA, 5);
}

if(keyboard_check_pressed(ord("0"))){
	obj_game_ending_manager.ending = ENDING_NORMAL;	
}
if(keyboard_check_pressed(ord("9"))){
	obj_game_ending_manager.ending = ENDING_BETRAYAL;	
}
if(keyboard_check_pressed(ord("8"))){
	obj_game_ending_manager.ending = ENDING_CHOICE;	
}
if(keyboard_check_pressed(ord("7"))){
	obj_game_ending_manager.ending = ENDING_SPECIAL;	
}

if(keyboard_check_pressed(ord("E"))){
	global.days = 42;	
}
