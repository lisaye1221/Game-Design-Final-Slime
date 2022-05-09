/// @description Insert description here
// You can write your code in this editor

// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (storage_open) {

	width = 6*64+40;
	height = 6*64+40;
	
	cam = view_get_camera(0);

	left = camera_get_view_width(cam)/2 - width - 10;
	top = camera_get_view_height(cam)/2 - height/2; // turn 250 to 350 if get rid of bottom UI
	
	draw_set_halign(fa_left);
	draw_set_font(ft_tabs);
	draw_set_color(c_black);
	
	var _tab_height = string_height("Inventory")+50;
	var _tab_top = top-_tab_height+20;
	var _inv_tab_width = string_width("Inventory")+50;
	var _inv_tab_left = left+(width/2)-(_inv_tab_width/2);
	
	var _inv_tab_txt_x = _inv_tab_left+25;
	var _tab_txt_y = _tab_top+(_tab_height/2);
	
	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);
	
	draw_sprite_stretched_ext(spr_player_menu_tab, 0, _inv_tab_left, _tab_top, _inv_tab_width, _tab_height, c_white, 1);
	draw_text(_inv_tab_txt_x, _tab_txt_y, "Inventory");

	left += 20;
	top += 20;
		
	// draw the inventory screen
	
	draw_set_font(ft_hotbar);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
		
	// draw the inventory boxes with items
	for (var i = 0; i < obj_inventory_manager.MAX_ITEM; i ++) {
		
		var xx = left + (i mod rowLength) * 64;
		var yy = top + (i div rowLength) * 64;
		
		if (i < array_length(obj_inventory_manager.inventory)) {
			draw_sprite(obj_inventory_manager.inventory[i].menu_icon, 0, xx, yy);
			draw_sprite(spr_inv_slot_count, 0, xx, yy);
				
		}
		else {
			draw_sprite(spr_inv_slot, 0, xx, yy);
		}
		
		if (i == i_cursor) {
			draw_sprite(spr_inv_cursor, 0, xx, yy);
		}
			
		if (i < array_length(obj_inventory_manager.inventory)) {
			draw_text(xx + 47, yy + 56, obj_inventory_manager.inventory[i].count);
				
		}
			
		
	}
		
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(ft_tabs);
		
	// draw the storage inv 
	var _str_left = camera_get_view_width(cam)/2 + 10;
	var _str_top = camera_get_view_height(cam)/2 - height/2;
	var _str_width = width;
	var _str_height = height;
	
	var _str_tab_width = string_width("Storage")+50;
	var _str_tab_left = _str_left+(_str_width/2)-(_str_tab_width/2);
	
	var _str_tab_txt_x = _str_tab_left+25;
	
	draw_sprite_stretched(spr_player_menu, 0, _str_left, _str_top, _str_width, _str_height);
	draw_sprite_stretched_ext(spr_player_menu_tab, 0, _str_tab_left, _tab_top, _str_tab_width, _tab_height, c_white, 1);
	draw_text(_str_tab_txt_x, _tab_txt_y, "Storage");
	
	draw_set_font(ft_details);
	draw_set_alpha(0.6)
	draw_text(105, 500, "(Use Z to move items)")
	draw_text(135, 520, "(Use X to exit)")
	draw_set_alpha(1.0)
	
	_str_left += 20;
	_str_top += 20;
	
	draw_set_font(ft_hotbar);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	// draw the storage boxes with items
	for (var i = 0; i < obj_storage_manager.MAX_ITEM; i ++) {
		
		var xx = _str_left + (i mod rowLength) * 64;
		var yy = _str_top + (i div rowLength) * 64;
		
		if (i < array_length(obj_storage_manager.inventory)) {
			draw_sprite(obj_storage_manager.inventory[i].menu_icon, 0, xx, yy);
			draw_sprite(spr_inv_slot_count, 0, xx, yy);
				
		}
		else {
			draw_sprite(spr_inv_slot, 0, xx, yy);
		}
		
		if (i == (i_cursor - obj_inventory_manager.MAX_ITEM)) {
			draw_sprite(spr_inv_cursor, 0, xx, yy);
		}
			
		if (i < array_length(obj_storage_manager.inventory)) {
			draw_text(xx + 47, yy + 56, obj_storage_manager.inventory[i].count);
				
		}
		
	}
	
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(ft_tabs);
		
}
