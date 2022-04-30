/// cheats

relationship_lavana = keyboard_check_pressed(ord("1"));
relationship_claude = keyboard_check_pressed(ord("2"));
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
