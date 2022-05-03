/// @description Insert description here
// You can write your code in this editor

if(global.days >= UNLOCK_ENDING_DAY){
	global.has_reached_ending = true;
	
	// determine which ending
	var achi_requirement_complete = true;
	for(var i = 0; i < array_length(achi_requirement); i++){
		if(!achi_requirement[i]){
			achi_requirement_complete = false;
			break;
		}
	}
	
	if(achi_requirement_complete){
		ending = ENDING_BETRAYAL;	
	}
	if(
		get_relationship(LAVANA) >= RELATIONSHIP_VAL_MAX &&
		get_relationship(CLAUDE) >= RELATIONSHIP_VAL_MAX &&
		get_relationship(NELU) >= RELATIONSHIP_VAL_MAX
	){
		ending = ENDING_CHOICE;
	}
	if(get_relationship(LOLA) >= RELATIONSHIP_VAL_MAX){
		ending = ENDING_SPECIAL;
	}
	
}

if(global.has_reached_ending && in_home() && !ending_setup){
	ending_setup = true;
	/*
	if(in_home() && !object_exists(obj_textbox)){
		ending_setup = true;
		create_textbox("warn-slime-arrival");
	}
	
	*/
	if (!global.paused){
		create_textbox("warn-slime-arrival")
	}else{
		alarm[11] = 1;
	}
}

