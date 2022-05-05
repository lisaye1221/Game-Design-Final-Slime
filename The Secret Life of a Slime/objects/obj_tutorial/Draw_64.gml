

draw_set_halign(fa_right)
if !b0 and global.tutorial_ended == false {
	draw_set_color(c_black)
	draw_set_alpha(0.50)
	draw_rectangle(0, 210 , 900, 250, false)
	
	draw_set_color(c_white)
	draw_set_alpha(0.7)
	draw_set_font(ft_tutorial)
	draw_set_valign(fa_bottom)
	draw_text(680,240,string(string_copy(sentence,0,100)))
	
}


if global.tut_keys_on {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_sprite(spr_tutorial_buttons_up,0,250,190);
	draw_sprite(spr_tutorial_buttons_down,0,250,270);
	draw_sprite(spr_tutorial_buttons_left,0,200,230);
	draw_sprite(spr_tutorial_buttons_right,0,300,230);
	
	draw_sprite(spr_tutorial_plain,0,430,237);
	draw_sprite(spr_tutorial_plain,0,580,237);
	
	draw_set_halign(fa_right)
	
	draw_set_alpha(0.9)

	draw_set_font(ft_tutorial_header)
	draw_text(540,90,"TUTORIAL")
	draw_set_font(ft_status)
	draw_text(458,255,"Z")
	draw_text(608,255,"E")

	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(335,330,"Use arrow keys")
	draw_text(305,350,"to move")

	draw_text(470,320,"Use Z")
	draw_text(500,340,"to interact")

	draw_text(620,320,"Use E")
	draw_text(670,340,"for inventory")
	draw_text(655,360,"and status")
	

	draw_text(590,400,"Press X to continue the tutorial")
	draw_text(570,425,"Press S to skip the tutorial")
	
	draw_set_font(ft_tutorial_small)
	draw_set_alpha(0.8)
	draw_set_color(c_red)
	draw_text(610,445,"(Recap is provided in the diary of your home)")
	

}

draw_set_alpha(1)