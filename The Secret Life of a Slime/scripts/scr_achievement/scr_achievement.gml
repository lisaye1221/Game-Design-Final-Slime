// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// for recording gold spent for achievements
function achi_spent_gold(_amount_spent){
	achi_gain_progress("MODEST_SPENDER", _amount_spent);
	achi_gain_progress("BIG_SPENDER", _amount_spent);
	achi_gain_progress("THE_ECONOMY_IS_ON_MY_SHOULDER", _amount_spent);
}

// for recording crops harvested for achievements
function achi_harvest_crop(_amount_harvest, _item_harvest){
	achi_gain_progress("FARMING_BEGINNER", _amount_harvest);
	achi_gain_progress("FARMING_INTERMEDIATE", _amount_harvest);
	achi_gain_progress("FARMING_MASTER", _amount_harvest);
	achi_track_progress("DIVERSE_FARM", _item_harvest);
	achi_track_progress("PASSION_IN_AGRICULTURE", _item_harvest);
	
}

// for recording relationship progress achievements
function achi_max_relation(_relationship) {
	achi_track_progress("FIRST_BEST_FRIEND", _relationship);
	achi_track_progress("OUTGOING_SLIME", _relationship);
	achi_track_progress("POPULAR_SLIME", _relationship);
	achi_track_progress("SLIME_OF_THE_PEOPLE", _relationship);
}

// for achievements that need to use the array to track progress
function achi_track_progress(_achi_name, _item) {
	var _achievement = obj_achievement_manager.achievement_list[$ _achi_name];
	
	// check if achievement is already completed
	if (!_achievement.completed) {
		// check if item is in the tracker
		if (!search_tracker(_achievement.tracker, _item)) {
			
			// add item to tracker
			array_push(_achievement.tracker, _item);
			
			var _goal = _achievement.goal;
			var _new_progress = _achievement.progress + 1;
			
			if (_new_progress >= _goal) {
				complete_ach(_achievement);
			}
			else {
				_achievement.progress = _new_progress;
			}
			
		}
	}
}

// searches achievement tracker and returns true if the current item is in the tracker
function search_tracker(_achi_tracker, _item) {
	
	// check if tracker is empty
	if (_achi_tracker == []) {
		return false;
	}
	
	for (var i=0; i < array_length(_achi_tracker); i++) {
		if (_achi_tracker[i] == _item) {
			return true;
		}
	}
	
	return false;
}

function achi_gain_progress(_achi_name, _val){
	// check if achievement is already completed
	var _achievement = obj_achievement_manager.achievement_list[$ _achi_name];
	if(!_achievement.completed){
		new_progress = _achievement.progress + _val;
		goal = _achievement.goal;
		// if goes beyond or reach goal
		if(new_progress >= goal){
			complete_ach(_achievement);
		}
		else{
			// update progress
			_achievement.progress = new_progress;
		}
	}
}

function complete_ach(_achievement) {
	// update progress and completed to true
	_achievement.progress = _achievement.goal;
	_achievement.completed = true;
	
	// add ach popup to the popup queue
	// 0 means achievement popup
	ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _achievement);
	ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 0);
		
}
