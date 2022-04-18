// Script assets have changed for v2.3.0 see

/// @param text
function scr_add_text(_text){
	 text[page_number] = _text;
	 
	 page_number++;
}

/// @param text_id
function create_textbox(_text_id){
	return_value = 0;
	with(instance_create_depth(0, 0, -9999, obj_textbox)){
		return_value = scr_game_text(_text_id);	
	}
	show_debug_message("Return from textbox_function: " + string(return_value));
	return return_value;

}

/// @param option_text
/// @param link_id
function scr_option(_option_text, _link_id){
	option[option_num] = _option_text;
	option_link_id[option_num] = _link_id;
	option_num++;
}