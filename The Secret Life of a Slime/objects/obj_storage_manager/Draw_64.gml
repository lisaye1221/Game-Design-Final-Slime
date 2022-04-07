/// @description Insert description here
// You can write your code in this editor

// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (obj_chest.storage_open) {

	width = 12*64+40;
	height = 6*64+40;
	
	cam = view_get_camera(0);

	left = camera_get_view_width(cam)/2 - width/2;
	top = camera_get_view_height(cam)/2 - height/2; // turn 250 to 350 if get rid of bottom UI
	
	draw_set_halign(fa_left);
	draw_set_font(ft_tabs);
	draw_set_color(c_black);
	
	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);

	left += 20;
	top += 20;
		
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
		
	// draw the storage inv 
	var _str_left = left+width/2;
	var _str_top = top;
	var _str_width = (width-40)/2-20;
	var _str_height = height-40;
	
	draw_sprite_stretched(spr_player_menu, 0, _str_left, _str_top, _str_width, _str_height);
	
	// draw the storage boxes with items
	for (var i = 0; i < obj_storage_manager.MAX_ITEM; i ++) {
		
		var xx = _str_left + (i mod rowLength) * 64;
		var yy = _str_top + (i div rowLength) * 64;
		draw_sprite(spr_inv_slot, 0, xx, yy);
		
		if (i < array_length(obj_storage_manager.inventory)) {
			draw_sprite(obj_storage_manager.inventory[i].menu_icon, 0, xx, yy);
		}
		
		if (i == (i_cursor - obj_inventory_manager.MAX_ITEM)) {
			draw_sprite(spr_inv_cursor, 0, xx, yy);
		}
		
		
	}
		
}
