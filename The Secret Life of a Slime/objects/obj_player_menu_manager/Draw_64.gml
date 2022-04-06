// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (global.menu_on) {

	width = 12*64+40;
	height = 6*64+40;
	
	cam = view_get_camera(0);

	left = camera_get_view_width(cam)/2 - width/2;
	top = camera_get_view_height(cam)/2 - height/2; // turn 250 to 350 if get rid of bottom UI
	
	var _tab_height = 50;
	var _tab_width = 100;
	var _tab_left = left+20;
	var _tab_top = top-_tab_height+20;
	
	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);
	draw_sprite_stretched(spr_player_menu_tab, 0, _tab_left, _tab_top, _tab_width, _tab_height);

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
			
			var _name_left = _desc_left+(_desc_width/2);
			var _name_top = _desc_top+(_desc_height/2)+20;
			
			draw_set_halign(fa_center);
			
			// might want bigger font
			draw_text(_name_left, _name_top, selected.name);
			
			// smaller font here
			// need to add desc val to all items
			//draw_text(_name_left+20, _name_top+20, selected.desc);
			
		}
		
		
	}

		
	
}