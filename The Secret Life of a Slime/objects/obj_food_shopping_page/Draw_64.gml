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
var _top_margin = 12;
// arrow
draw_sprite_ext(
	spr_menu_arrow,
	0,
	menu_x + option_x_margin,
	menu_y + _top_margin - 4,
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
for(var i = 0; i < NUM_ITEM_SHOWN_MAX; i++){
	
	var _item = curr_inventory[start_pos+i];
	var _icon = _item.item.icon;
	var _stock = _item.stock;
	
	// draw the icon
	draw_sprite(
	_icon, 
	0, 
	menu_x + option_x_margin, 
	menu_y + arrow_y_space + (i * option_y_space));
	
	
	// draw the highlight if selected
	if(start_pos+i == option_pos){
		draw_set_alpha(0.3);
		draw_set_color(c_yellow);
		draw_roundrect(
		menu_x + option_x_margin + sprite_get_width(_icon) + option_x_margin, 
		menu_y + arrow_y_space + (i * option_y_space),
		menu_x + background_w - option_x_margin,
		menu_y + arrow_y_space + (i * (option_y_space) + (option_y_space)),
		false
		)
		draw_set_alpha(1.0);
	}
	
	// draw the item name
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(
	menu_x + option_x_margin + sprite_get_width(_icon) + option_x_margin,
	menu_y + arrow_y_space + (i * option_y_space),
	_item.item.name + "(" + string(_stock)+")",
	)
	
	// draw the item price 
	draw_set_halign(fa_right);
	draw_text(
	menu_x + background_w - option_x_margin,
	menu_y + arrow_y_space + (i * option_y_space),
	string(_item.unit_price) +"G",
	)
	
	
}

draw_set_halign(fa_left);
// draw the bottom arrow
draw_sprite_ext(
	spr_menu_arrow,
	0,
	menu_x + option_x_margin + sprite_get_width(spr_menu_arrow), // adding width because rotation
	menu_y + arrow_y_space + (NUM_ITEM_SHOWN_MAX * option_y_space) + 20,
	1,
	1,
	180,
	c_white,
	1
);

// draw the item details menu 
if(menu_level > 0) {
	
	details_menu_x = menu_x + background_w + 20;
	details_menu_y = menu_y + 20;

	// draw the background
	draw_sprite_ext(
		shop_bg_spr, 
		0, 
		details_menu_x, 
		details_menu_y, 
		background_item_details_w/textbox_spr_w, 
		background_item_details_h/textbox_spr_h, 
		0, 
		c_white, 
		1
	);
	
	// draw how much gold player has
	draw_set_color(c_orange);
	draw_set_halign(fa_right);
	draw_text(
		details_menu_x + background_item_details_w - 10,
		details_menu_y + 10,
		string(global.gold) + "G");
		
	// draw the item info
	var _selected_icon = selected_item.item.icon;
	var _selected_item_name = selected_item.item.name;
	var _details_menu_x_margin = 10;
	// icon
	draw_sprite_ext(
		_selected_icon, 
		0, 
		details_menu_x + item_info_magin_y,  
		details_menu_y + item_info_magin_y,
		1.5, 
		1.5, 
		0, 
		c_white, 
		1
	);
	// name
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(
	details_menu_x + item_info_magin_x + 35,
	details_menu_y + item_info_magin_y,
	_selected_item_name
	);
	
	// draw the selection interface
	
	
	// draw the buttons
	var _button_h = 15;
	var _button_w = 40;
	var _button_text_padding = 5;
	var _button_margin = 10;
	draw_text(
		details_menu_x + 10,
		details_menu_y + background_item_details_h - _button_h - _button_text_padding - _button_margin,
		"[Z]Buy");
		
	draw_text(
	details_menu_x + 10 + _button_w + 50,
	details_menu_y + background_item_details_h - _button_h - _button_text_padding - _button_margin,
	"[X]Cancel");
	
}
