/// @description Insert description here
// You can write your code in this editor

// change text alignment and font
draw_set_font(ft_dialog);
draw_set_halign(fa_top);
draw_set_valign(fa_left);

draw_sprite_stretched(spr_player_menu, 0, x_pos, y_curr, box_width, box_height);

var _icon_x = x_pos + border_size;
var _icon_y = y_curr + box_height/2 - icon_height/2;

draw_sprite(icon, 0, _icon_x, _icon_y);

var _text_x = x_pos + border_size + icon_width;
var _top_text_y = y_curr + box_height/2 - text_height/2;
var _bottom_text_y = _top_text_y + text_height/2;

draw_text(_text_x, _top_text_y, top_text);
draw_text(_text_x, _bottom_text_y, bottom_text);

// reset text alignment to default
draw_set_halign(fa_top);
draw_set_valign(fa_middle);
