// Script assets have changed for v2.3.0 see

/// @param text
function scr_add_text(_text){
	 text[page_number] = _text;
	 
	 page_number++;
}

/// @param text_id
/// @param name
function create_textbox(_text_id, _name = ""){

	with(instance_create_depth(0, 0, -9999, obj_textbox)){
		scr_game_text(_text_id);
		speaker_name = _name;
	}
	
}

/// @param option_text
/// @param link_id
function scr_option(_option_text, _link_id){
	option[option_num] = _option_text;
	option_link_id[option_num] = _link_id;
	option_num++;
	confirmation_box = false;
}


