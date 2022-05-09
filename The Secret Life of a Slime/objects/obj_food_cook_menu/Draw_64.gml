// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (menu_open) {

	width = 12*64+40;
	height = 7.5*64+40;
	
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
		for (var i = 0; i < num_recipes; i ++) {
		
			var xx = left + (i mod rowLength) * 64;
			var yy = top + (i div rowLength) * 64;
			draw_sprite(spr_inv_slot, 0, xx, yy);
		
			if (i < num_recipes) {
				draw_sprite(recipe_list[i].item.menu_icon, 0, xx, yy);
				
				if (!can_cook_this(recipe_list[i])){
					draw_sprite(spr_greyed_out, 0, xx, yy);
				}
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
		
		draw_set_font(ft_details)
		draw_set_alpha(0.7)
		draw_text(125, 530, "(Use Z to cook the item)")
		draw_text(170, 560, "(Use X to exit)")
		draw_set_alpha(1.0)
		
		if (i_cursor < num_recipes) {
			
			selected = recipe_list[i_cursor];
			
			var _sprite_scale = _sprite_dis_height/64;
			
			draw_sprite_ext(selected.item.menu_icon, 0, _sprite_dis_left, _sprite_dis_top, _sprite_scale, _sprite_scale, 0, c_white, 1);
			
			var _name_height = string_height_ext(selected.item.name, 3, _desc_width-40);
			var _name_left = _desc_left+(_desc_width/2);
			var _name_top = _desc_top+(_desc_height/2)+20+_name_height/2;
			
			draw_set_halign(fa_center);
			
			draw_text_ext(_name_left, _name_top, selected.item.name, 3, _desc_width-40);
			
			draw_set_font(ft_details);
			
			// The recipe itself
			var _recipe_string_1 = "Requires: ";
			var _rs1_height = string_height(_recipe_string_1);
			var _recipe_string_2 = "";
			var _recipe_string_3 = "";
			
			// first two ingredients
			for(i=0; i < array_length(selected.ingredients) - 1; i++){
				if (i < 2){
					_recipe_string_2 += string(selected.amounts[i]) + " " + selected.ingredients[i].name + ", ";
				} else {
					_recipe_string_3 += string(selected.amounts[i]) + " " + selected.ingredients[i].name + ", ";
				}
			}
			
			if  array_length(selected.ingredients) == 1 {
				_recipe_string_2 += string(selected.amounts[array_length(selected.ingredients) - 1]) + " " + selected.ingredients[array_length(selected.ingredients) - 1].name;
			}
			else {
				_recipe_string_3 += string(selected.amounts[array_length(selected.ingredients) - 1]) + " " + selected.ingredients[array_length(selected.ingredients) - 1].name;
			}
			
			//var _quan_string = "Quantity: " + string(selected.item.count);
			//var _quan_height = string_height(_quan_string);
			
			draw_text(_name_left + 10, _name_top+10+_name_height+10, _recipe_string_1);
			
			draw_text_ext(_name_left, _name_top+10+_name_height+_rs1_height+20, _recipe_string_2, 3, _desc_width-40);
			draw_text_ext(_name_left, _name_top+10+_name_height+_rs1_height+40, _recipe_string_3, 3, _desc_width-40);
			
			
		}
		
		
	}
}
