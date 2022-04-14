

if !global.tutorial_ended_farm {
	draw_set_color(c_black)
	draw_set_alpha(0.65)
	draw_rectangle(0, y_val_pos - 20 , 900, y_val_pos + 20, false)

	if b16 and sentence_index == 3 {
		draw_set_color(c_red)
		draw_set_alpha(0.65)
	}
	else {
		draw_set_color(c_white)
	}
	draw_set_alpha(0.85)
	draw_set_font(ft_tutorial)
	

	

	if string_length(sentence) < 60 and string_length(sentence) >= 50  {
		draw_text(490,y_val_pos,string(string_copy(sentence,0,100)))
	}
	else if string_length(sentence) > 80 {
		draw_text(450,y_val_pos,string(string_copy(sentence,0,100)))
	}
	else if string_length(sentence) >= 70 {
		draw_text(470,y_val_pos,string(string_copy(sentence,0,100)))
	}
	else if string_length(sentence) >= 60 {
		draw_text(480,y_val_pos,string(string_copy(sentence,0,100)))
	}
	//else if string_length(sentence) > 20 and string_length(sentence) < 30 {
	//	draw_text(450,230,string(string_copy(sentence,0,100)))
	//}

	else {
		draw_text(480,y_val_pos,string(string_copy(sentence,0,100)))
	}

}



