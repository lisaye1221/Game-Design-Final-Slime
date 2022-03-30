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
	if(x+x_speed > room_width){
		x_speed = 0;
	}
	if(y+y_speed < 0 || y+y_speed >  525){
		y_speed = 0;
	}
	
	// move camera left when player walks off screen
	//view_width = camera_get_view_width(cam);
	//view_x = camera_get_view_x(cam);
	if (x < camera_get_view_x(cam)){
		//view_x -= view_width;	// i think this is shifting by an entire screen width
		show_debug_message("player pos: " + string(x) + ", cam pos: " + string(camera_get_view_x(cam)));
		camera_set_view_pos(cam, camera_get_view_x(cam) - camera_get_view_width(cam)/2, camera_get_view_y(cam));
	}
	if(x > camera_get_view_x(cam) + camera_get_view_width(cam)) {
		camera_set_view_pos(cam, camera_get_view_x(cam) + camera_get_view_width(cam)/2, camera_get_view_y(cam));
	}
	// set collision for solid
	var x_check = instance_place(x+x_speed, y, obj_solid);
	if(x_check!=noone && x_check.solid){
		x_speed = 0;
	}
	var y_check = instance_place(x, y+y_speed, obj_solid)
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
	if(place_meeting(x, y, obj_prompt_grow_crops) && key_z){
		// checking to see if crops are done growing (if any one is done, all are)
		if (instance_find(obj_crop,0).harvestable == true){
		
			// TODO: should we make this take time (time delay here?)
		
		
			// adding crops to player's inventory & subtracting energy cost
			gain_item(global.item_list.wheat, 8);
			global.energy -= 10;
			audio_play_sound(sfx_crop_collect, 2, false);
			// resetting all crops in scene so they will grow again
			for (var i = 0; i < instance_number(obj_crop); i ++;)
			{
			    with (instance_find(obj_crop,i)){
					crop_growth_remaining = crop_growth_time;
					harvestable = false;
				}
			}
		}
	}

	//interact with interactables
	var _interact_check_x = x + DIR[face][0]*10;
	var _interact_check_y = y + DIR[face][1]*10;
	last_interactable_object = interactable_object;
	interactable_object = instance_place(_interact_check_x,_interact_check_y,obj_solid_interactable);
	if (interactable_object!=noone && interactable_object.interactable){
		if (interactable_object!=last_interactable_object){
			draw_prompt_flag = true;
		}
	}
	else {
		draw_prompt_flag = false;
	}
	if (keyboard_check_pressed(ord("Z")) && draw_prompt_flag){
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
			default:
				return;
		}
	}
	
	function increase_energy(amount){
		newAmount = amount + global.energy;
		global.energy = newAmount > global.energy_max ? global.energy_max : newAmount;
	}

	// death
	if (global.energy <= 0) {
		// die
		die();
	}
}