/// @description Insert description here
// You can write your code in this editor

if not (global.dead or global.paused) {
	depth = -y;
	key_up = keyboard_check(vk_up);
	key_right = keyboard_check(vk_right);
	key_down = keyboard_check(vk_down);
	key_left = keyboard_check(vk_left);
	key_z = keyboard_check_pressed(ord("Z"));

	key_1 = keyboard_check_pressed(ord("1"));
	key_2 = keyboard_check_pressed(ord("2"));
	key_3 = keyboard_check_pressed(ord("3"));
	key_4 = keyboard_check_pressed(ord("4"));
	key_5 = keyboard_check_pressed(ord("5"));
	key_6 = keyboard_check_pressed(ord("6"));

	// ** Movement ** //

	x_speed = (key_right - key_left) * move_spd;
	y_speed = (key_down - key_up) * move_spd;

	// set sprite direction	
	if(y_speed > 0) {face = DOWN;}
	if(y_speed < 0) {face = UP;}
	if(x_speed > 0) {face = RIGHT;}
	if(x_speed < 0) {face = LEFT;}
	sprite_index = sprite[face]
	//if(x+x_speed > room_width || x+x_speed < 0){
	/*if(x+x_speed > room_width){
		x_speed = 0;
	}
	if(y+y_speed < 0 || y+y_speed >  room_height){
		y_speed = 0;
	}*/
	
	// move camera left when player walks off screen
	if (x < camera_get_view_x(cam)){
		//view_x -= view_width;	// i think this is shifting by an entire screen width
		show_debug_message("player pos: " + string(x) + ", cam pos: " + string(camera_get_view_x(cam)));
		camera_set_view_pos(cam, camera_get_view_x(cam) - camera_get_view_width(cam)/2, camera_get_view_y(cam));
	}
	if(x > camera_get_view_x(cam) + camera_get_view_width(cam)) {
		camera_set_view_pos(cam, camera_get_view_x(cam) + camera_get_view_width(cam)/2, camera_get_view_y(cam));
	}
	
	// move camera down when player walks below screen
	if (y < camera_get_view_y(cam)){
		show_debug_message("player pos: " + string(y) + ", cam pos: " + string(camera_get_view_y(cam)));
		camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam) - camera_get_view_height(cam)/2);
	}
	if (y > camera_get_view_y(cam) + camera_get_view_height(cam)){
		camera_set_view_pos(cam, camera_get_view_x(cam), camera_get_view_y(cam) + camera_get_view_height(cam)/2);
	}

	// set collision for solid
	var x_check = find_first_interactable(obj_solid,x+x_speed, y);
	if(x_check!=noone && x_check.solid){
		x_speed = 0;
	}
	var y_check = find_first_interactable(obj_solid,x, y+y_speed)
	if(y_check!=noone && y_check.solid){
		y_speed = 0;
	}
	// move the player
	x += x_speed;
	y += y_speed;
	
	if (global.force_player_home) {
		global.force_player_home = false;
		forced_home(id);
	}

	// ** Interaction ** //
	if(place_meeting(x, y, obj_prompt_town) && key_z){
		go_to_town(self);
	}
	if(place_meeting(x,y, obj_prompt_home) && key_z){
		go_home(self);
	}
	/*
	if(place_meeting(x, y, obj_prompt_grow_crops) && key_z){
		// checking to see if crops are done growing (if any one is done, all are)
		if (instance_find(obj_crop,0).ready){
		
			// TODO: should we make this take time (time delay here?)
		
		
			// adding crops to player's inventory & subtracting energy cost
			gain_item(global.item_list.wheat, 8);
			global.energy -= 10;
			audio_play_sound(sfx_crop_collect, 2, false);
			// resetting all crops in scene so they will grow again
			for (var i = 0; i < instance_number(obj_crop); i ++;)
			{
			    with (instance_find(obj_crop,i)){
					grow_time_remaining = MAX_GROWTH_TIME;
					ready = false;
				}
			}
		}
	}*/
	
	if !global.tutorialBedDone and place_meeting(x, y, obj_tutorial_check) {
		global.touchedBed = true;
		global.tutorialBedDone = true;
	}

	//interact with interactables
	var _interact_check_x = x + DIR[face][0]*10;
	var _interact_check_y = y + DIR[face][1]*10;
	last_interactable_object = interactable_object;
	interactable_object = find_first_interactable(obj_solid_interactable,_interact_check_x,_interact_check_y)
	if (interactable_object!=noone){
		if (interactable_object!=last_interactable_object){
			draw_prompt_flag = true;
		}
	}
	else {
		draw_prompt_flag = false;
	}

	// for interactables which use inventory slots instead of generic z key
	// (farm plots and machines)
	if (draw_prompt_flag && interactable_object.uses_inventory){
		
		inv = obj_inventory_manager.inventory
		inv_count = array_length(inv);
	
		if (key_1 && inv_count >= 1){
			interactable_object.inv_slot = 1;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		} else if (key_2 && inv_count >= 2){
			interactable_object.inv_slot = 2;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		} else if (key_3 && inv_count >= 3){
			interactable_object.inv_slot = 3;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		} else if (key_4 && inv_count >= 4){
			interactable_object.inv_slot = 4;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		} else if (key_5 && inv_count >= 5){
			interactable_object.inv_slot = 5;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		} else if (key_6 && inv_count >= 6){
			interactable_object.inv_slot = 6;
			interactable_object.alarm[0] = 1;
			draw_prompt_flag = false;
		}
	}
	//********
	
	// use regular interactables
	else if (keyboard_check_pressed(ord("Z")) && draw_prompt_flag){
		interactable_object.alarm[0] = 1;
		draw_prompt_flag = false;
	}
	
	
	// using items
	inv = obj_inventory_manager.inventory
	inv_count = array_length(inv);
	if(key_1 && inv_count >= 1){
		use_item(inv[0]);
	}
	if(key_2 && inv_count >= 2){
		use_item(inv[1]);
	}
	if(key_3 && inv_count >= 3){
		use_item(inv[2]);
	}
	if(key_4 && inv_count >= 4){
		use_item(inv[3]);
	}
	if(key_5 && inv_count >= 5){
		use_item(inv[4]);
	}
	if(key_6 && inv_count >= 6){
		use_item(inv[5]);
	}


	function use_item(item){
		switch(item.name){
			case global.item_list.berries.name:
				increase_energy(3);
				lose_one_item(item);
				break;
			case global.item_list.slime_jelly.name:
				increase_energy(10);
				lose_one_item(item);
				break;
			case global.item_list.fish.name:
				increase_energy(6);
				lose_one_item(item);
				break;
			case global.item_list.stars.name:
				increase_energy(10);
				lose_one_item(item);
				break;
			case global.item_list.tulips.name:
				increase_energy(6);
				lose_one_item(item);
				break;
			default:
				// create_textbox("warn-cannot-use-item");
				return;
		}
	}
	
	function increase_energy(amount){
		newAmount = amount + global.energy;
		global.energy = newAmount > global.energy_max ? global.energy_max : newAmount;
	}
	
	// hacky way of gaining more seeds
	if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("W"))){
		gain_one_item(global.item_list.wheat_seeds);		// gain wheat seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("C"))){
		gain_one_item(global.item_list.carrot_seeds);		// gain carrot seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("F"))){
		gain_one_item(global.item_list.cauliflower_seeds);		// gain cauliflower seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("U"))){
		gain_one_item(global.item_list.cucumber_seeds);		// gain cucumber seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("G"))){
		gain_one_item(global.item_list.eggplant_seeds);		// gain eggplant seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("L"))){
		gain_one_item(global.item_list.lettuce_seeds);		// gain lettuce seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("P"))){
		gain_one_item(global.item_list.pumpkin_seeds);		// gain pumpkin seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("D"))){
		gain_one_item(global.item_list.radish_seeds);		// gain radish seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("R"))){
		gain_one_item(global.item_list.rose_seeds);		// gain rose seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("S"))){
		gain_one_item(global.item_list.star_seeds);		// gain star seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("M"))){
		gain_one_item(global.item_list.tomato_seeds);		// gain tomato seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("T"))){
		gain_one_item(global.item_list.tulip_seeds);		// gain tulip seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("N"))){
		gain_one_item(global.item_list.turnip_seeds);		// gain turnip seeds
	} else if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("H"))){
		gain_one_item(global.item_list.parts);		// gain turnip seeds
	}
		

	// death
	if (global.energy <= 0) {
		// die
		die();
	}
}