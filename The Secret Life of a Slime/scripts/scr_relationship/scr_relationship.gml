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
	else{
		gain_relationship_through_talking(_npc);
	}
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
	return obj_relationship_manager.relationships[_name].tier;
}



/// param name_in_caps
/// param val
function increase_relationship(_name, _val){
	var _target_relationship = obj_relationship_manager.relationships[_name]
	_target_relationship.relationship += _val;
	while (_target_relationship.relationship >= obj_relationship_manager.relationship_thresholds[_target_relationship.tier]){
		++_target_relationship.tier;
		relationship_tier_up_rewards(_target_relationship);
	}
	// achievement tracking
	if (get_relationship_tier(_name) >= 3) {
		achi_max_relation(_target_relationship);
	}
}


function relationship_tier_up_rewards(_relationship){
	show_debug_message("tier up event for "+_relationship.npc_name+" triggered")
	switch (_relationship.npc_name){
		case "Lavana":
			switch (_relationship.tier){
				case 1:
					obj_machine_seed.should_be_interactable = true;
					obj_food_shop_menu.option = obj_food_shop_menu.menu_with_gift;
				break;
				case 2:
					obj_food_shop_menu.shopping_page.discount = .9;
				break;
				case 3:
					//TODO:unlock high level food
				break;
			}
		break;
		case "Claude":
			switch (_relationship.tier){
				case 1:
					obj_general_shop_menu.option = obj_general_shop_menu.menu_with_gift;
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"cauliflower_seed",new create_shop_item(global.item_list.cauliflower_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"cucumber_seed",new create_shop_item(global.item_list.cucumber_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"eggplant_seed",new create_shop_item(global.item_list.eggplant_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"lettuce_seed",new create_shop_item(global.item_list.lettuce_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"pumpkin_seed",new create_shop_item(global.item_list.pumpkin_seeds,5,5));
				break;
				case 2:
					obj_general_shop_menu.shopping_page.discount = .9;
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"radish_seed",new create_shop_item(global.item_list.radish_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"star_seed",new create_shop_item(global.item_list.star_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"tulip_seed",new create_shop_item(global.item_list.tulip_seeds,5,5));
					variable_struct_set(obj_general_shop_menu.shopping_page.inventory,"turnip_seed",new create_shop_item(global.item_list.turnip_seeds,5,5));
				break;
				case 3:
				break;
			}
		break;
		case "Nelu":
			switch (_relationship.tier){
				case 1:
					obj_marketplace_menu.option = obj_marketplace_menu.menu_with_gift;
					obj_inventory_manager.MAX_ITEM += 2;
				break;
				case 2:
					active_persistent_interactable(obj_oven);
				break;
				case 3:
					obj_inventory_manager.MAX_ITEM +=2 ;
				break;
			}
		break;
		case "Lola":
			switch (_relationship.tier){
				case 1:
					obj_game_manager.TOWN_TIME_LIMIT *= 1.5;
				break;
				case 2:
					player.move_spd *= 1.5;
				break;
				case 3:
					//TBD
				break;
			}
		break;
	}
	show_debug_message("tier up event completed")
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

