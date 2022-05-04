/// @description Insert description here
// You can write your code in this editor

// for fading
draw_sprite_ext(spr_pixel, 0, 0,0, 900, 900, 0, c_black,a);

if(show_text){
	draw_sprite_ext(spr_pixel, 0, 0,500, 900, 100, 0, c_black,0.8);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(ft_dialog);
	draw_text(450, 550, print);
}


