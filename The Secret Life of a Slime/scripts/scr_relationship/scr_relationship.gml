// Script assets have changed for v2.3.0 see

#macro TIER_0_DIALOGUE_AMOUNT 3
#macro TIER_1_DIALOGUE_AMOUNT 3
#macro TIER_2_DIALOGUE_AMOUNT 4
#macro TIER_3_DIALOGUE_AMOUNT 5
function talk_to(_npc){
	var _npc_name = "";
	var dialogue_amount = 1;
	var relationship_tier = get_relationship_tier(_npc);
	// get npc name
	switch(_npc){
		case LAVANA:
			_npc_name = "Lavana";
			break;
		case CLAUDE:
			_npc_name = "Claude";
			break;
		case NELU:
			_npc_name = "Nelu";
			break;
		case LOLA:
			_npc_name = "Lola";
			break;
	}
	// get relationship tier
	switch(relationship_tier){
		case 0:
			dialogue_amount = TIER_0_DIALOGUE_AMOUNT;
			break;
		case 1:
			dialogue_amount = TIER_1_DIALOGUE_AMOUNT;
			break;
		case 2:
			dialogue_amount = TIER_2_DIALOGUE_AMOUNT;
			break;
		case 3:
			dialogue_amount = TIER_3_DIALOGUE_AMOUNT;
			break;
	}
	// add them together, also randomize the dialogue from the pool of dialogue
	var _text_id = _npc_name + "-" 
					+ string(relationship_tier) + "-"
					+ string(irandom_range(1, dialogue_amount));
	// replace with special first time dialogue if have not met
	if(!has_met_npc(_npc)){
		// ex: Lavana-first-meet
		_text_id = _npc_name + "-first-meet";
	}
	show_debug_message("text_id : " + _text_id);
	create_textbox(_text_id);
}

function gain_relationship_through_talking(_name){
	if(!global.talked_this_trip_already[_name]){
		increase_relationship(_name, 1);
		global.talked_this_trip_already[_name] = true;
	}
}

// tier 0: 0-10
// tier 1: 11-40 [unlock gift gifting]
// tier 2: 41-70
// tier 3: 71-100
#macro TIER_1_THRESHOLD 11
#macro TIER_2_THRESHOLD 41
#macro TIER_3_THRESHOLD 71
function get_relationship_tier(_name){
	
	var relationship = get_relationship(_name);
	
	if(relationship > TIER_3_THRESHOLD){
		return 3;	
	}
	if(relationship > TIER_2_THRESHOLD){
		return 2;
	}
	if(relationship > TIER_1_THRESHOLD){
		return 1;
	}
	return 0;
	
}



/// param name_in_caps
/// param val
function increase_relationship(_name, _val){
	obj_relationship_manager.relationships[_name].relationship += _val;
}

function first_talk_completed(_name){
	obj_relationship_manager.relationships[_name].has_met = true;	
}

function has_met_npc(_name){
	return obj_relationship_manager.relationships[_name].has_met;
}

function get_relationship(_name){
	return obj_relationship_manager.relationships[_name].relationship;
}

