

if !global.tutorial_ended_farm {
	if (on_inventory){
		y_val_pos = y_val_pos_inventory_open;
	}else{
		y_val_pos = y_val_pos_inventory_close;
	}
	
	draw_set_halign(fa_center)
	draw_set_color(c_black)
	draw_set_alpha(0.55)
	draw_rectangle(0, y_val_pos - 20 , 900, y_val_pos + 20, false)
	if (b15 and sentence_index == 3) {
		draw_set_color(c_red)
	}
	else if (on_inventory) {
		draw_set_alpha(0.35)
		draw_rectangle(0, y_val_pos - 20 , 900, y_val_pos + 20, false)
		draw_set_color(c_yellow)
	}
	else if b13 and sentence_index == 0 {
		draw_set_color(c_aqua)
	}
	else {
		draw_set_color(c_white)
	}
	
	draw_set_alpha(0.7)
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



