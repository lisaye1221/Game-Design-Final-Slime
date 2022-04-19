// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_first_interactable(_type,_interact_check_x,_interact_check_y){
	var _interactable_object = noone;
	var _interactable_object_lst = ds_list_create();
	var _num = instance_place_list(_interact_check_x, _interact_check_y, _type, _interactable_object_lst, false);
	if (_num > 0){
		for (var i = 0; i < _num; ++i;){
			if (_interactable_object_lst[| i].interactable){
				_interactable_object = _interactable_object_lst[| i];
				break;
			}
		}
	}
	return _interactable_object
}

function active_persistent_interactable(_id){
	with (id){
		should_be_interactable = true;
		interactable = true;
		visible = true;
		solid = true;
	}
}

function deactive_persistent_interactable(_id){
	with (id){
		should_be_interactable = false;
		interactable = false;
		visible = false;
		solid = false;
	}
}