/// @description Insert description here


textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) - textbox_height);


accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"));

// ** Setup ** //
if(!setup){
	setup = true;
	
	// loop through the pages
	page_number = array_length(text); 
	
	// find how many char are on each page
	for(var p = 0; p < page_number; p++){
		text_length[p] = string_length(text[p]);
		
		// get the x position for the textbox
			// no character pic (center the textbox)
			text_x_offset[p] = (camera_get_view_width(view_camera[0]) - textbox_width) / 2;
	}
	
}
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);

// ** Typing the Text ** //
if(draw_char < text_length[page]){
	draw_char += text_speed;
	// sets a min/max for draw_char
	draw_char = clamp(draw_char, 0, text_length[page]);
}

// flip through pages
if(accept_key){
	// if current page is done typing
	if(draw_char == text_length[page]){
		// next page
		if(page < page_number - 1){
			page++;
			draw_char = 0;
		}
		// no more pages left
		else{
			instance_destroy();	
		}
	}
	// if current page isn't filled yet
	else{ // display the whole page
		draw_char = text_length[page];
	}
}

// ** Draw the Textbox ** //
textbox_spr_w = sprite_get_width(textbox_spr);
textbox_spr_h = sprite_get_height(textbox_spr);
// textbox bg
draw_sprite_ext(
	textbox_spr, 
	0, 
	textbox_x + text_x_offset[page], 
	textbox_y, 
	textbox_width/textbox_spr_w, 
	textbox_height/textbox_spr_h, 
	0, 
	c_white, 
	1
);
// draw the text
var _drawtext = string_copy(text[page], 1, draw_char);

draw_text_ext(
	textbox_x + text_x_offset[page] + text_border,
	textbox_y + text_border,
	_drawtext,
	line_margin,
	line_width
);