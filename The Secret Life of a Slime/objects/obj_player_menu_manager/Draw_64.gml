// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (global.menu_on) {

	width = 12*64+40;
	height = 6*64+40;
	
	cam = view_get_camera(0);

	left = camera_get_view_width(cam)/2 - width/2;
	top = camera_get_view_height(cam)/2 - height/2; // turn 250 to 350 if get rid of bottom UI
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_font(ft_tabs);
	draw_set_color(c_black);
	
	var _tab_height = string_height(tabs[0])+50;
	var _tab_top = top-_tab_height+20;
	var _tab_width = 0;
	var _tab_left = left+25;
	
	var _tab_txt_x = _tab_left+25;
	var _tab_txt_y = _tab_top+(_tab_height/2);
	
	var _front_tab_left;
	var _front_tab_width;
	var _front_tab_txt_x;
	
	for (var i = 0; i < array_length(tabs); i++) {
		
		_tab_width = string_width(tabs[i])+50;
		
		if (i == tab_index) {
			_front_tab_left = _tab_left;
			_front_tab_width = _tab_width;
			_front_tab_txt_x = _tab_txt_x;
		}
		else {
			draw_sprite_stretched_ext(spr_player_menu_tab, 0, _tab_left, _tab_top, _tab_width, _tab_height, c_gray, 1);
			draw_text(_tab_txt_x, _tab_txt_y, tabs[i]);
		}
		
		_tab_left += _tab_width+20;
		_tab_txt_x = _tab_left+25;
		
	}
	
	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);
	draw_sprite_stretched(spr_player_menu_tab, 0, _front_tab_left, _tab_top, _front_tab_width, _tab_height);
	draw_text(_front_tab_txt_x, _tab_txt_y, tabs[tab_index]);

	left += 20;
	top += 20;
	
	// draw the inventory screen
	if (tab_index == 0) {
		
			draw_set_font(ft_details);
			draw_set_alpha(0.5)
			draw_text(90, 520, "Use A and D to switch beteen tabs")
			draw_set_alpha(1.0)
		
		// draw the inventory boxes with items
		for (var i = 0; i < obj_inventory_manager.MAX_ITEM; i ++) {
		
			var xx = left + (i mod rowLength) * 64;
			var yy = top + (i div rowLength) * 64;
			draw_sprite(spr_inv_slot, 0, xx, yy);
		
			if (i < array_length(obj_inventory_manager.inventory)) {
				draw_sprite(obj_inventory_manager.inventory[i].menu_icon, 0, xx, yy);
			}
		
			if (i == i_cursor) {
				draw_sprite(spr_inv_cursor, 0, xx, yy);
			}
			
		
		}
		
		// draw the description box and selected item
		var _desc_left = left+width/2;
		var _desc_top = top;
		var _desc_width = (width-40)/2-20;
		var _desc_height = height-40;
		
		draw_sprite_stretched(spr_player_menu, 0, _desc_left, _desc_top, _desc_width, _desc_height);
		
		var _sprite_dis_height = (_desc_height-40)/2;
		var _sprite_dis_width = _sprite_dis_height;
		var _sprite_dis_left = _desc_left + (_desc_width/2) - _sprite_dis_width/2;
		var _sprite_dis_top = _desc_top + 20;
		
		
		draw_sprite_stretched(spr_desc_menu, 0, _sprite_dis_left, _sprite_dis_top, _sprite_dis_width, _sprite_dis_height);
		
		draw_set_font(ft_name);
		
		if (i_cursor < array_length(obj_inventory_manager.inventory)) {
			
			selected = obj_inventory_manager.inventory[i_cursor];
			
			var _sprite_scale = _sprite_dis_height/64;
			
			draw_sprite_ext(selected.menu_icon, 0, _sprite_dis_left, _sprite_dis_top, _sprite_scale, _sprite_scale, 0, c_white, 1);
			
			var _name_line_height = string_height(selected.name);
			var _name_height = string_height_ext(selected.name, _name_line_height+3, _desc_width-40);
			var _name_left = _desc_left+(_desc_width/2);
			var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
			draw_set_halign(fa_center);
			
			draw_text_ext(_name_left, _name_top, selected.name, _name_line_height+3, _desc_width-40);
			
			draw_set_font(ft_details);
			
			var _quan_string = "Quantity: " + string(selected.count);
			var _quan_height = string_height(_quan_string);
			
			draw_text(_name_left, _name_top+10+_name_height, _quan_string);
			
			draw_text_ext(_name_left, _name_top+10+_name_height+_quan_height+20, selected.desc, 3 + _quan_height, _desc_width-40);
			
		
			
		}
		
		
		
	}
	
	// draw the player screen
	else if (tab_index == 1) {
		
		// draw the player description box
		var _desc_left = left;
		var _desc_top = top;
		var _desc_width = (width-40)/2-20;
		var _desc_height = height-40;
		
		draw_sprite_stretched(spr_player_menu, 0, _desc_left, _desc_top, _desc_width, _desc_height);
		
		var _curr_sprite = obj_player.sprite[DOWN];
		var _sprite_height = sprite_get_height(_curr_sprite);
		var _sprite_width = sprite_get_width(_curr_sprite);
		
		var _sprite_desc_height = (_desc_height-40)/2;
		var _sprite_desc_width = _sprite_desc_height;
		var _sprite_desc_left = _desc_left + (_desc_width/2) - _sprite_desc_width/2;
		var _sprite_desc_top = _desc_top + 20;
		
		draw_sprite_stretched(spr_desc_menu, 0, _sprite_desc_left, _sprite_desc_top, _sprite_desc_width, _sprite_desc_height);
		
		var _sprite_scale_v = (_sprite_desc_height/2)/_sprite_height;
		var _sprite_scale_h = (_sprite_desc_width/2)/_sprite_width;
		
		var _sprite_x = _sprite_desc_left + _sprite_desc_width/2;
		var _sprite_y = _sprite_desc_top + _sprite_desc_height/2;
			
		draw_sprite_ext(_curr_sprite, 0, _sprite_x, _sprite_y, _sprite_scale_h, _sprite_scale_v, 0, c_white, 1);
		
		draw_set_font(ft_name);
		
		var _player_name = obj_player.name;
		
		var _name_line_height = string_height(_player_name);
		var _name_height = string_height_ext(_player_name, _name_line_height+3, _desc_width-40);
		var _name_left = _desc_left+(_desc_width/2);
		var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
		draw_set_halign(fa_center);
			
		draw_text_ext(_name_left, _name_top, _player_name, _name_line_height+3, _desc_width-40);
		
		draw_set_font(ft_details);
			
		draw_text(_name_left, _name_top+20+_name_height, "That's Me!");
		
		// draw player stats
		draw_set_font(ft_tabs);
		var _stat_height = string_height("Day:");
		var _stat_x = left+width/2;
		
		var _day_y = top + 20;
		var _gold_y = _day_y + _stat_height + 20;
		
		draw_set_halign(fa_left);
		
		draw_text(_stat_x, _day_y, "Day: " + string(floor(global.days)));
		
		draw_set_color(c_yellow);
		draw_text(_stat_x, _gold_y, "Gold: " + string(floor(global.gold)) + "G");
		
		// draw player's energy bar;
		var _bar_width = (width-40)/12;
		var _bar_height = (height-40)*10/12;
		
		var _bar_left = left + ((width-40)*0.875)-10;
		var _bar_top = top + (height-40)/12;
		var _bar_right = _bar_left + _bar_width;
		var _bar_bottom = _bar_top + _bar_height;
		
		draw_healthbar(_bar_left, _bar_top, _bar_right, _bar_bottom, global.energy, c_grey, c_aqua, c_aqua, 3, false, false);
		draw_sprite_stretched(spr_bar_cover, 0, _bar_left-5, _bar_top-5, _bar_width+10, _bar_height+10);
		
		var _energy_text_x = _bar_left - energy_text_width - 10;
		var _energy_text_y = _bar_bottom - energy_text_height/2 + 10;
		
		draw_set_color(c_aqua);
		
		draw_text(_energy_text_x, _energy_text_y, "Energy: " + string(ceil(global.energy)));
	}
	
	// draw the relationships screen
	else if (tab_index == 2) {
		
		
		var _portrait_spacing = 20;
		var _portrait_height = (height-40-(_portrait_spacing*5))/4;
		var _portrait_width = _portrait_height;
		
		draw_set_font(ft_name);
		
		var _text_height = string_height("Name");
		var _bar_height = _portrait_height - _text_height - 10 - 5;
		var _bar_width = width-40-(_portrait_spacing*2)-_portrait_width-10-string_width("100%")-20-10;
		
		var _portrait_x = left+_portrait_spacing;
		var _name_x = _portrait_x + _portrait_width + _portrait_spacing;
		var _bar_x = _name_x + 5;
		var _per_x = _bar_x + (_bar_width+10) + 10;
		
		var _portrait_y = top+_portrait_spacing;
		var _name_y = _portrait_y + _text_height/2;
		var _bar_y = _name_y + _text_height + 5;
		var _per_y = _bar_y + _text_height/2;
		
		for (var i = 0; i<RELATIONSHIP_AMOUNT; i++) {
			
			var _curr = obj_relationship_manager.relationships[i];
			
			draw_sprite_stretched(spr_bar_cover, 0, _portrait_x, _portrait_y, _portrait_width, _portrait_height);
			
			if (_curr.has_met) {
			
				var _sprite_height = sprite_get_height(_curr.icon);
				var _sprite_width = sprite_get_width(_curr.icon);
			
				var _sprite_scale_y = (_portrait_height*2/3)/_sprite_height;
				var _sprite_scale_x = (_portrait_width*2/3)/_sprite_width;
			
				var _sprite_x = _portrait_x + _portrait_width/2;
				var _sprite_y = _portrait_y + _portrait_height/2;
			
				draw_sprite_ext(_curr.icon, 0, _sprite_x, _sprite_y, _sprite_scale_x, _sprite_scale_y, 0, c_white, 1);
				
				draw_set_font(ft_name);
				draw_set_color(c_black);
				draw_text(_name_x, _name_y, _curr.npc_name);
			
				draw_healthbar(_bar_x, _bar_y, _bar_x+_bar_width, _bar_y+_bar_height, _curr.relationship, c_grey, c_maroon, c_red, 0, false, false);
				draw_sprite_stretched(spr_bar_cover, 0, _bar_x-5, _bar_y-5, _bar_width+10, _bar_height+10);
				
				draw_set_color(c_maroon);
				draw_text(_per_x, _per_y, string(_curr.relationship) + "%");
				
			}
			else {
				draw_set_color(c_black);
				draw_set_font(ft_name);
				draw_text(_name_x, _name_y, "???");
			}
			
			_portrait_y += _portrait_spacing + _portrait_height;
			_name_y = _portrait_y + _text_height/2;
			_bar_y = _name_y + _text_height + 5;
			_per_y = _bar_y + _text_height/2;
		}
		
	}
	
	// draw the journal/achievements screen
	else if (tab_index == 3) {
		
		draw_set_font(ft_name);
		var _farm_width = string_width("Farm") + 50;
		var _town_width = string_width("Town") + 50;
		var _j_tab_top = top;
		var _farm_left = left + 25;
		var _town_left = left + (width-40) - _town_width - 25;
			
		var _farm_txt_x = _farm_left+25;
		var _town_txt_x = _town_left+25;
		var _j_txt_y = _j_tab_top+(_tab_height/2);
			
		var _j_menu_x = left;
		var _j_menu_y = top+_tab_height-20;
		var _j_menu_width = width-40;
		var _j_menu_height = height-40-_tab_height+20;
			
		//draw the journal screen
		if (journal_index == 0) {
			// farm tab open
				
			// draw town tab behind
			draw_sprite_stretched_ext(spr_player_menu_tab, 0, _town_left, _j_tab_top, _town_width, _tab_height, c_gray, 1);
			draw_text(_town_txt_x, _j_txt_y, "Town");
				
			// draw player menu
			draw_sprite_stretched(spr_player_menu, 0, _j_menu_x, _j_menu_y, _j_menu_width, _j_menu_height);
				
			// draw farm tab in front
			draw_sprite_stretched(spr_player_menu_tab, 0, _farm_left, _j_tab_top, _farm_width, _tab_height);
			draw_text(_farm_txt_x, _j_txt_y, "Farm");
				
		}
		else {
			// town tab open
				
			// draw farm tab behind
			draw_sprite_stretched_ext(spr_player_menu_tab, 0, _farm_left, _j_tab_top, _farm_width, _tab_height, c_gray, 1);
			draw_text(_farm_txt_x, _j_txt_y, "Farm");
				
			// draw player menu
			draw_sprite_stretched(spr_player_menu, 0, _j_menu_x, _j_menu_y, _j_menu_width, _j_menu_height);
				
			// draw town tab in front
			draw_sprite_stretched(spr_player_menu_tab, 0, _town_left, _j_tab_top, _town_width, _tab_height);
			draw_text(_town_txt_x, _j_txt_y, "Town");
				
		}
			
		var _arrow_height = (_j_menu_height-40)/9;
		var _arrow_scale = _arrow_height/sprite_get_height(spr_menu_arrow);
		var _arrow_width = sprite_get_width(spr_menu_arrow)*_arrow_scale;
			
		var _arrow_x = _j_menu_x + 40;
		var _top_arrow_y = _j_menu_y + 20;
		var _bot_arrow_y = _j_menu_y + (_j_menu_height-40);
		
		draw_set_font(ft_name);
		var _j_txt_height = string_height("Achievement");
		var _txt_spacing = (_j_menu_height-40-((_j_txt_height*2)*3))/4;
			
		var _ach_x = _arrow_x + _arrow_width + 20;
			
			
		// draw top arrow if not at ach min
		if (ach_index != ach_min) {
			draw_sprite_ext(spr_menu_arrow, 0, _arrow_x, _top_arrow_y, _arrow_scale, _arrow_scale, 0, c_white, 1);
		}
			
		// draw bottom arrow if not at ind max
		if ((journal_index == 0) && (ach_index != farm_ach_max)) {
			draw_sprite_ext(spr_menu_arrow, 0, _arrow_x+_arrow_width, _bot_arrow_y, _arrow_scale, _arrow_scale, 180, c_white, 1);
		}
		else if ((journal_index == 1) && (ach_index != town_ach_max)) {
			draw_sprite_ext(spr_menu_arrow, 0, _arrow_x+_arrow_width, _bot_arrow_y, _arrow_scale, _arrow_scale, 180, c_white, 1);
		}
			
		// draw three achievements
		var _ach_y = _j_menu_y + _txt_spacing + 20;
		var _curr_ach;
		var _box_height_width = _j_txt_height*2;
		var _box_x = _j_menu_x + (_j_menu_width-40) - _box_height_width - 20;
		var _cross_scale = _box_height_width/sprite_get_height(spr_plus);
			
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
			
		for (var i = ach_index-1; i <= ach_index + 1; i++) {
				
			if (journal_index == 0) _curr_ach = obj_achievement_manager.farm_achievements[i];
			else _curr_ach = obj_achievement_manager.town_achievements[i]; 
				
			// draw ach name
			draw_set_font(ft_name);
			if (_curr_ach.completed) draw_set_color(c_grey);
			else draw_set_color(c_navy);
			draw_text(_ach_x, _ach_y, _curr_ach.ach_name);
				
			// draw ach detail
			draw_set_font(ft_details);
			if (_curr_ach.completed) draw_set_color(c_grey);
			else draw_set_color(c_black);
			draw_text(_ach_x, _ach_y+_j_txt_height, _curr_ach.detail);
				
			// draw ach progress
			draw_text(_ach_x+string_width(_curr_ach.detail)+10, _ach_y+_j_txt_height, "("+string(_curr_ach.progress)+"/"+string(_curr_ach.goal)+")");
				
			// draw ach box
			draw_sprite_stretched(spr_desc_menu, 0, _box_x, _ach_y, _box_height_width, _box_height_width);
			if (_curr_ach.completed) draw_sprite_ext(spr_plus, 0, _box_x+(_box_height_width/2), _ach_y+(_box_height_width/2), _cross_scale, _cross_scale, 45, c_white, 1);
				
			_ach_y += (_j_txt_height*2) + _txt_spacing;
				
		}
			
		
	}	
	
}