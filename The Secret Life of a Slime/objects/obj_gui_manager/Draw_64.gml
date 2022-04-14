/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_name);
if not global.dead {
	// time of day
	var _time_box_width = max(string_width(parts_of_day[0]),
							  string_width(parts_of_day[1]),
							  string_width(parts_of_day[2]),
							  string_width(parts_of_day[3])) + 40;
	var _time_box_height = max(string_height(parts_of_day[0]),
							   string_height(parts_of_day[1]),
							   string_height(parts_of_day[2]),
							   string_height(parts_of_day[3])) + 50;
	var _time_box_x = screen_width - _time_box_width + 20;
	var _time_box_y = -20;
	
	var _time_txt_x = _time_box_x + ((_time_box_width-40)/2) + 20;
	var _time_txt_y = _time_box_y + 25;
	
	draw_sprite_stretched(spr_player_menu, 0, _time_box_x, _time_box_y, _time_box_width, _time_box_height);
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_color(c_maroon);
	
	if ((global.time >= 0) && (global.time < 15)) {
		draw_text(_time_txt_x, _time_txt_y, parts_of_day[0]);
	}
	else if ((global.time >= 15) && (global.time < 30)) {
		draw_text(_time_txt_x, _time_txt_y, parts_of_day[1]);
	}
	else if ((global.time >= 30) && (global.time < 45)) {
		draw_text(_time_txt_x, _time_txt_y, parts_of_day[2]);
	}
	else {
		draw_text(_time_txt_x, _time_txt_y, parts_of_day[3]);
	}
	
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	
	// energy
	// draw player's energy bar;
	var _bar_width = screen_width/15 - 10;
	var _bar_height = screen_height*2/5 - 10;
		
	var _bar_left = 15;
	var _bar_top = 15;
	var _bar_right = _bar_left + _bar_width;
	var _bar_bottom = _bar_top + _bar_height;
		
	draw_healthbar(_bar_left, _bar_top, _bar_right, _bar_bottom, global.energy, c_grey, c_aqua, c_aqua, 3, false, false);
	draw_sprite_stretched(spr_bar_cover, 0, _bar_left-5, _bar_top-5, _bar_width+10, _bar_height+10);
		
	//var _energy_text_x = _bar_left - string_width("Energy: 100") - 10;
	//var _energy_text_y = _bar_bottom - string_height("Energy: 100")/2 + 10;
		
	//draw_set_color(c_aqua);
	//draw_text(_energy_text_x, _energy_text_y, "Energy: " + string(ceil(global.energy)));
	
	// town energy
	if(in_town()){
		
		var _trans_bar_top = _bar_left+_bar_height+20;
		var _trans_bar_height = _bar_height/2;
		var _trans_bar_bottom = _trans_bar_top + _trans_bar_height;
		
		draw_healthbar(_bar_left, _trans_bar_top, _bar_right, _trans_bar_bottom, obj_game_manager.transformation_remaining * (100 / obj_game_manager.TOWN_TIME_LIMIT), c_white, c_red, c_red, 3, false, false);
		draw_sprite_stretched(spr_bar_cover, 0, _bar_left-5, _trans_bar_top-5, _bar_width+10, _trans_bar_height+10);
		
	}
	
	draw_set_color(c_white);
	draw_set_font(ft_hotbar);
	draw_set_halign(fa_center);
	//show_debug_message("max width:");
	//show_debug_message(max(string_width("1"), string_width("2"), string_width("3"), string_width("4"), string_width("5"), string_width("6")));
	//show_debug_message("max height:");
	//show_debug_message(max(string_height("1"), string_height("2"), string_height("3"), string_height("4"), string_height("5"), string_height("6")));
	
	// draw hotbar
	var _hotbar_width = sprite_get_width(spr_hotbar);
	var _hotbar_height = sprite_get_height(spr_hotbar);
	var _hotbar_box_width = _hotbar_width/6;
	
	var _hotbar_x = screen_width/2 - (_hotbar_width/2);
	var _hotbar_y = screen_height - _hotbar_height;
	
	draw_sprite(spr_hotbar_blank, 0, _hotbar_x, _hotbar_y);
	
	for (var i = 0; i<6; i++) {
		// draw number
		draw_text(_hotbar_x + (_hotbar_box_width*i) + 9, _hotbar_y + 10, string(i+1));
	}
	
	// draw hotbar inventory
	for(var i = 0; i < array_length(obj_inventory_manager.inventory); i++){
		
		
		if (i < obj_inventory_manager.HOTBAR_SLOTS) {
	
		// icon
		draw_sprite(obj_inventory_manager.inventory[i].menu_icon, 0, _hotbar_x + (_hotbar_box_width*i), _hotbar_y);
		
		// draw count
		draw_text(_hotbar_x + (_hotbar_box_width*(i+1)) - 9, _hotbar_y + _hotbar_box_width - 10, obj_inventory_manager.inventory[i].count);
		
		//// icon
		//draw_sprite(inventory[i].icon, 0, INV_LEFT_X + space, y1+margin);
		//// item name
		//draw_set_valign(fa_center);
		//draw_set_halign(fa_left);
		//draw_text(INV_LEFT_X + ICON_SIZE + (space * 2), y1+(height/2), inventory[i].name);
		//// count
		//draw_set_halign(fa_right);
		//draw_text(INV_RIGHT_X - space, y1+(height/2), "x" + string(inventory[i].count));
		
		}
	}
	
	draw_set_halign(fa_left);

}
