/// @description Insert description here
// You can write your code in this editor

menu_x = 200;
menu_y = 90;

textbox_spr_w = sprite_get_width(shop_bg_spr);
textbox_spr_h = sprite_get_height(shop_bg_spr);


// draw the background box
draw_sprite_ext(
	shop_bg_spr, 
	0, 
	menu_x, 
	menu_y, 
	background_w/textbox_spr_w, 
	background_h/textbox_spr_h, 
	0, 
	c_white, 
	1
);

// draw the top displays
var _top_margin = 8;
// arrow
draw_sprite_ext(
	spr_menu_arrow,
	0,
	menu_x + option_x_margin,
	menu_y + _top_margin,
	1,
	1,
	0,
	c_white,
	1
);
// item(stock) label
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_aqua);
draw_text(
menu_x + option_x_margin*2 + 16 ,
	menu_y + _top_margin,
	"Item(stock)"
)
// price label
draw_set_halign(fa_right);
draw_text(menu_x + background_w - option_x_margin,menu_y + _top_margin, "Unit");



// draw each option
draw_set_color(c_white);
for(var i = 0; i < option_num; i++){
	var _icon = curr_inventory[i].item.icon;
	var _stock = curr_inventory[i].stock;
	// draw the icon
	draw_sprite(
	_icon, 
	0, 
	menu_x + option_x_margin, 
	menu_y + arrow_y_space + (i * option_y_space));
	
	// draw the item name
	draw_set_halign(fa_left);
	draw_text(
	menu_x + option_x_margin + sprite_get_width(_icon) + option_x_margin,
	menu_y + arrow_y_space + (i * option_y_space),
	curr_inventory[i].item.name + "(" + string(_stock)+")",
	)
	
	// draw the item price 
	draw_set_halign(fa_right);
	draw_text(
	menu_x + background_w - option_x_margin,
	menu_y + arrow_y_space + (i * option_y_space),
	string(curr_inventory[i].unit_price) +"G",
	)
	
}