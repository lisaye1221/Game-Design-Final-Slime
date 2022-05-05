// Script assets have changed for v2.3.0 see

function get_gift(_npc){
	var _tier = get_relationship_tier(_npc);
	if(_tier == 0) {return;}
	return	obj_relationship_manager.gifts[_npc][_tier - 1]; // minus 1 for index offset
}

#macro TIER_0_DIALOGUE_AMOUNT 3
#macro TIER_1_DIALOGUE_AMOUNT 3
#macro TIER_2_DIALOGUE_AMOUNT 4
#macro TIER_3_DIALOGUE_AMOUNT 5
function talk_to(_npc){
	var _npc_name = "";
	var dialogue_amount = 2;
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
		_npc_name = "???";
	}
	else{
		gain_relationship_through_talking(_npc);
	}
	create_textbox(_text_id, _npc_name);
}

#macro GIFT_POINTS 5
function gain_relationship_through_gift(_name){
	increase_relationship(_name, GIFT_POINTS);	
}

#macro TALK_POINTS 2
function gain_relationship_through_talking(_name){
	if(!global.talked_this_trip_already[_name]){
		increase_relationship(_name, TALK_POINTS);
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
	_target_relationship.relationship = clamp(_target_relationship.relationship, 0, RELATIONSHIP_VAL_MAX);
	while (_target_relationship.relationship >= obj_relationship_manager.relationship_thresholds[_target_relationship.tier]){
		++_target_relationship.tier;
		relationship_tier_up_rewards(_target_relationship);
		
		// add relationship popup to the popup queue
		// 1 means tier up popup
		ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _target_relationship);
		ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 1);
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
					obj_relationship_manager.food_shop_menu.option = obj_relationship_manager.food_shop_menu.menu_with_gift;				
	
				break;
				case 2:
					obj_relationship_manager.food_shop_menu.shopping_page.discount = .9;
					obj_relationship_manager.general_shop_menu.shopping_page.inventory.egg.max_stock = 4;
				break;
				case 3:
					//TODO:unlock high level food
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"spaghetti",new create_shop_item(global.item_list.spaghetti,40,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"pancake",new create_shop_item(global.item_list.pancake,40,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"radish_seed",new create_shop_item(global.item_list.cookies,40,5));
				break;
			}
		break;
		case "Claude":
			switch (_relationship.tier){
				case 1:
					obj_relationship_manager.general_shop_menu.option = obj_relationship_manager.general_shop_menu.menu_with_gift;
					global.seedTier = 1;
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"carrot_seed",new create_shop_item(global.item_list.carrot_seeds,15,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"lettuce_seed",new create_shop_item(global.item_list.lettuce_seeds,6,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"radish_seed",new create_shop_item(global.item_list.radish_seeds,10,5));
					obj_relationship_manager.general_shop_menu.shopping_page.inventory.parts.max_stock = 4;
					//variable_struct_set(obj_food_shop_menu.shopping_page.inventory,"radish",new create_shop_item(global.item_list.radishes,20,5));
					//variable_struct_set(obj_food_shop_menu.shopping_page.inventory,"carrot",new create_shop_item(global.item_list.carrots,20,5));
					//variable_struct_set(obj_food_shop_menu.shopping_page.inventory,"lettuce",new create_shop_item(global.item_list.lettuce,10,5));
					
				break;
				case 2:
					obj_relationship_manager.general_shop_menu.shopping_page.discount = .9;
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"rose_seed",new create_shop_item(global.item_list.rose_seeds,20,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"pumpkin_seed",new create_shop_item(global.item_list.pumpkin_seeds,10,5));
					variable_struct_set(obj_relationship_manager.general_shop_menu.shopping_page.inventory,"star_seed",new create_shop_item(global.item_list.star_seeds,15,5));
					global.seedTier = 2;
				break;
				case 3:
				break;
			}
		break;
		case "Nelu":
			switch (_relationship.tier){
				case 1:
					obj_relationship_manager.marketplace_menu.option = obj_relationship_manager.marketplace_menu.menu_with_gift;
					obj_inventory_manager.MAX_ITEM += 2;
				break;
				case 2:
					obj_oven.should_be_interactable = true;
					obj_food_cook_menu.which_tier = 1;
					obj_food_cook_menu.alarm[11] = 1;
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
					obj_inventory_manager.lola_menu.option = obj_lola_menu.menu_with_gift;
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

