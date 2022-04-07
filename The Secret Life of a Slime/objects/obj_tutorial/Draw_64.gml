
/*
if global.tutorial_ended == false {
	draw_set_color(c_black)
	draw_set_alpha(0.50)
	draw_rectangle(0, 210 , 900, 250, false)


	draw_set_color(c_white)
	draw_set_alpha(0.7)
	draw_set_font(ft_tutorial)
	draw_text(680,240,string(string_copy(sentence,0,letter_index)))
}
*/

//draw_sprite(spr_tutorial_menu,0,145,50);
	
	//draw_sprite(spr_tutorial_down,0,200,50);
	draw_set_alpha(0.9)

	draw_set_font(ft_tutorial_header)
	draw_text(530,90,"TUTORIAL")
	draw_set_font(ft_status)
	draw_text(458,275,"Z")
	draw_text(608,275,"E")

	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(335,330,"Use arrow keys")
	draw_text(310,350,"to move")

	draw_text(470,330,"Use Z")
	draw_text(500,350,"to interact")

	draw_text(620,330,"Use E")
	draw_text(670,350,"for inventory")

	draw_text(530,420,"Press Z to continue")


draw_set_font(ft_dialog)

