/// queuing relationship up text

if(!instance_exists(obj_textbox)){
	if(room == rm_shop1){
		// Lavana
		create_textbox("Lavana-relationship-"+string(get_relationship_tier(LAVANA)), "Lavana")
	}
	else if(room == rm_shop2){
		// Claude	
		create_textbox("Claude-relationship-"+string(get_relationship_tier(CLAUDE)), "Claude")
	}
	else if(room == rm_shop3){
		// Nelu
		create_textbox("Nelu-relationship-"+string(get_relationship_tier(NELU)), "Nelu")
	}
	else if(room == rm_lola){
		// Lola
		create_textbox("Lola-relationship-"+string(get_relationship_tier(LOLA)), "Lola")
	}
}
else{
	alarm[11] = 1;	
}
