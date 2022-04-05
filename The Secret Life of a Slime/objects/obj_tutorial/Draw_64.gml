
if global.tutorial_ended == false {
	draw_set_color(c_black)
	draw_set_alpha(0.40)
	draw_rectangle(0, 210 , 900, 250, false)


	draw_set_color(c_white)
	draw_set_alpha(1.0)
	draw_set_font(ft_tutorial)
	draw_text(x,y,string(string_copy(sentence,0,letter_index)))
}

draw_rectangle(0, 210 , 900, 250, false)