// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (menu_open) {

	width = 12*64+40;
	height = 6*64+40;
	
	cam = view_get_camera(0);

	left = camera_get_view_width(cam)/2 - width/2;
	top = camera_get_view_height(cam)/2 - height/2; // turn 250 to 350 if get rid of bottom UI
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_font(ft_tabs);
	draw_set_color(c_black);
	
	var _tab_height = string_height("Inventory")+50;
	var _tab_top = top-_tab_height+20;
	var _tab_width = 0;
	var _tab_left = left+25;
	
	var _tab_txt_x = _tab_left+25;
	var _tab_txt_y = _tab_top+(_tab_height/2);
	
	var _front_tab_left;
	var _front_tab_width;
	var _front_tab_txt_x;
	
	/*
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
	*/
	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);
	/*draw_sprite_stretched(spr_player_menu_tab, 0, _front_tab_left, _tab_top, _front_tab_width, _tab_height);
	draw_text(_front_tab_txt_x, _tab_txt_y, tabs[tab_index]);
	*/
	left += 20;
	top += 20;
	
	// draw the inventory screen
	if (tab_index == 0) {
		
		// draw the inventory boxes with items
		for (var i = 0; i < 15; i ++) {
		
			var xx = left + (i mod rowLength) * 64;
			var yy = top + (i div rowLength) * 64;
			draw_sprite(spr_inv_slot, 0, xx, yy);
		
			if (i < array_length(recipes2)) {
				draw_sprite(recipes2[i].item.menu_icon, 0, xx, yy);
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
		
		if (i_cursor < array_length(recipes2)) {
			
			selected = recipes2[i_cursor];
			
			var _sprite_scale = _sprite_dis_height/64;
			
			draw_sprite_ext(selected.item.menu_icon, 0, _sprite_dis_left, _sprite_dis_top, _sprite_scale, _sprite_scale, 0, c_white, 1);
			
			var _name_height = string_height_ext(selected.item.name, 3, _desc_width-40);
			var _name_left = _desc_left+(_desc_width/2);
			var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
			draw_set_halign(fa_center);
			
			draw_text_ext(_name_left, _name_top, selected.item.name, 3, _desc_width-40);
			
			draw_set_font(ft_details);
			
			var _quan_string = "Quantity: " + string(selected.item.count);
			var _quan_height = string_height(_quan_string);
			
			draw_text(_name_left, _name_top+10+_name_height, _quan_string);
			
			draw_text_ext(_name_left, _name_top+10+_name_height+_quan_height+20, selected.item.desc, 3, _desc_width-40);
			
		}
		
		
	}
}
