// Script assets have changed for v2.3.0 see


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
	
	var relationship = get_relationship_tier(_name);
	
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

