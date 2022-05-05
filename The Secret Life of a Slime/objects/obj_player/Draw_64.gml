/// @description Insert description here
// You can write your code in this editor
if (draw_prompt_flag){
	//find if anything interactable exists infront of player; if so, display its prompt text.
	if (interactable_object!=noone&&instance_exists(interactable_object)){
		draw_set_halign(fa_middle);
		if(x > room_width - BOUNDARY_SPACE){
			var x_pos = room_width - BOUNDARY_SPACE;
		}
		else if(x < BOUNDARY_SPACE){
			x_pos = BOUNDARY_SPACE;
		}
		else{
			x_pos = x;
		}
		
		var x_pos = x - camera_get_view_x(view_camera[0]);
		var y_pos = y + 30 + BOUNDARY_SPACE > room_height ? room_height-30 : y+30;
		y_pos -= camera_get_view_y(view_camera[0]);
		draw_set_color(c_white)
		draw_set_font(ft_prompt)
		//adding text here is slightly performancewise costy. it reduce manual effort though
		if (interactable_object.uses_inventory){
			var _text = interactable_object.ready?interactable_object.prompt_text+"[1-"+string(obj_inventory_manager.MAX_ITEM)+"]":interactable_object.prompt_text;
		} else {
			var _text = interactable_object.ready?interactable_object.prompt_text+"[Z]":interactable_object.prompt_text;
		}
		draw_set_color(c_gray)
		draw_set_alpha(.4)
		draw_rectangle(x_pos-string_width(_text)/2-10,y_pos - 15,x_pos+string_width(_text)/2+10,y_pos+15,false);
		draw_set_color(c_white)
		draw_set_alpha(1)
		draw_text(x_pos,y_pos,_text)
	}
}