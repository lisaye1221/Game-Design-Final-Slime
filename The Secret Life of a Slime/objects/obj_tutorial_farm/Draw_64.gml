

if !global.tutorial_ended_farm {
	draw_set_color(c_black)
	draw_set_alpha(0.50)
	draw_rectangle(0, 210 , 900, 250, false)


	draw_set_color(c_white)
	draw_set_alpha(0.7)
	draw_set_font(ft_tutorial)
	
	

	if string_length(sentence) < 60 and string_length(sentence) > 50  {
		draw_text(740,230,string(string_copy(sentence,0,100)))
	}
	else if string_length(sentence) > 75 {
		draw_text(830,230,string(string_copy(sentence,0,100)))
	}
	else if string_length(sentence) > 50 {
		draw_text(800,230,string(string_copy(sentence,0,100)))
	}
	else {
		draw_text(680,230,string(string_copy(sentence,0,100)))
	}

}



