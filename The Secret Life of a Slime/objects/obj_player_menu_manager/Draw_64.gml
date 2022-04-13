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
	
	if (tab_index == 0) {
		
		// draw the inventory screen
		
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
		
		if (i_cursor < array_length(obj_inventory_manager.inventory)) {
			
			selected = obj_inventory_manager.inventory[i_cursor];
			
			var _sprite_scale = _sprite_dis_height/64;
			
			draw_sprite_ext(selected.menu_icon, 0, _sprite_dis_left, _sprite_dis_top, _sprite_scale, _sprite_scale, 0, c_white, 1);
			
			var _name_height = string_height(selected.name);
			var _name_left = _desc_left+(_desc_width/2);
			var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
			draw_set_halign(fa_center);
			
			draw_text(_name_left, _name_top, selected.name);
			
			draw_text(_name_left, _name_top+20+_name_height, selected.desc);
			
		}
		
		
	}
	
	else if (tab_index == 1) {
		
		// draw the player screen
		
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
		
		var _name_height = string_height("Sapphy Slime");
		var _name_left = _desc_left+(_desc_width/2);
		var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
		draw_set_halign(fa_center);
			
		draw_text(_name_left, _name_top, "Sapphy Slime");
			
		draw_text(_name_left, _name_top+20+_name_height, "That's Me!");
		
		// draw player stats
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
		
		var _bar_left = left + ((width-40)*0.875);
		var _bar_top = top + (height-40)/12;
		var _bar_right = _bar_left + _bar_width;
		var _bar_bottom = _bar_top + _bar_height;
		
		draw_healthbar(_bar_left, _bar_top, _bar_right, _bar_bottom, global.energy, c_grey, c_aqua, c_aqua, 3, false, false);
		draw_sprite_stretched(spr_bar_cover, 0, _bar_left-5, _bar_top-5, _bar_width+10, _bar_height+10);
		
		var _energy_text_x = _bar_left - string_width("Energy: 100") - 10;
		var _energy_text_y = _bar_bottom - string_height("Energy: 100")/2 + 10;
		
		draw_set_color(c_aqua);
		draw_text(_energy_text_x, _energy_text_y, "Energy: " + string(ceil(global.energy)));
	}
	
	else if (tab_index == 2) {
		
		// draw the relationships screen
		var _portrait_spacing = 20;
		var _portrait_height = (height-40-(_portrait_spacing*5))/4;
		var _portrait_width = _portrait_height;
		
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
			
				draw_set_color(c_black);
				draw_text(_name_x, _name_y, _curr.npc_name);
			
				draw_healthbar(_bar_x, _bar_y, _bar_x+_bar_width, _bar_y+_bar_height, _curr.relationship, c_grey, c_maroon, c_red, 0, false, false);
				draw_sprite_stretched(spr_bar_cover, 0, _bar_x-5, _bar_y-5, _bar_width+10, _bar_height+10);
			
				draw_set_color(c_maroon);
				draw_text(_per_x, _per_y, string(_curr.relationship) + "%");
				
			}
			else {
				draw_set_color(c_black);
				draw_text(_name_x, _name_y, "???");
			}
			
			_portrait_y += _portrait_spacing + _portrait_height;
			_name_y = _portrait_y + _text_height/2;
			_bar_y = _name_y + _text_height + 5;
			_per_y = _bar_y + _text_height/2;
		}
		
		
		
	}

		
	
}