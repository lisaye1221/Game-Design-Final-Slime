/// @description Insert description here
// You can write your code in this editor
if (room != created_room){
	// show_debug_message("disabled "+object_get_name(object_index))
	visible = false;	
	interactable = false;
	solid = false;
}else{
	if (should_be_interactable){
		if (!activation_text_triggered){
			activation_text_triggered = true;
			//trigger instantly or start queueing
			if (!global.paused){
				create_textbox(activation_text)
			}else{
				alarm[11] = 1;
			}
		}
		
		// show_debug_message("resetting "+object_get_name(object_index))
		visible = true;	
		interactable = true;
		solid = true;
	}
}