/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_prompt)

if not global.dead {

	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if(is_show_prompt){
		if(player_x > room_width - BOUNDARY_SPACE){
			x_pos = room_width - BOUNDARY_SPACE;
		}
		else if(player_x < BOUNDARY_SPACE){
			x_pos = BOUNDARY_SPACE;
		}
		else{
			x_pos = player_x
		}
		x_pos -= camera_get_view_x(view_camera[0]);
		y_pos = player_y - y_offset < 0 ? 0 : player_y - y_offset;
		y_pos -= camera_get_view_y(view_camera[0]);
		switch (which_text){
			case 0:
				draw_text(x_pos, y_pos, prompt_text);
				break;
			case 1:
				draw_text(x_pos, y_pos, alt_prompt_text1);
				break;
			case 2:
				draw_text(x_pos, y_pos, alt_prompt_text2);		
				break;
			case 3:
				draw_text(x_pos, y_pos, alt_prompt_text3);		
				break;
		}
	}

}