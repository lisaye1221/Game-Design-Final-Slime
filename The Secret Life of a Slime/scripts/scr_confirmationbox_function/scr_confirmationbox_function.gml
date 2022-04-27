// Script assets have changed for v2.3.0 see

/// @param text
function scr_add_conf_text(_text){
	 text[page_number] = _text;
	 
	 page_number++;
}

/// @param text_id
/// @param item
/// @param this_machine

item = ""
machine = ""
function create_confirmationbox(_text_id, _item=0, _this_machine=0){
	if (_this_machine != 0){
		machine = _this_machine;
		item = _item;
	}
	return_value = 0;
	with(instance_create_depth(0, 0, -9999, obj_textbox)){
		//return_value = 
		scr_confirmation_text(_text_id, item, machine);	
	}
	
	// NOT USED
	show_debug_message("Return from textbox_function: " + string(return_value));
	return return_value;

}

/// @param option_text
/// @param link_id
function scr_confirmation_option(_option_text, _link_id){
	option[option_num] = _option_text;
	option_link_id[option_num] = _link_id;
	option_num++;
}
