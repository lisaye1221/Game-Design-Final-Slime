// Draws the menu when the menu is active

//width = 12+rowLength*36;
//height = 12+(((obj_inventory_manager.MAX_ITEM-1) div rowLength)+1)*36;

if (global.menu_on) {

	width = 24*32;
	height = 12*32;

	left = x + 450 - width/2;
	top = y + 250 - height/2; // turn 250 to 350 if get rid of bottom UI

	draw_sprite_stretched(spr_player_menu, 0, left, top, width, height);

	left += 20;
	top += 20;

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
	
}