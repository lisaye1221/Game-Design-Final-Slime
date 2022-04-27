// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_confirmation_text(_text_id, _item, _this_machine){

	switch(_text_id){
		// ---------- Text for Slime Jelly conversion machine ------ //
		case "convert-wheat-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Wheat = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " wheat.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "wheat-yes");
				scr_confirmation_option("No", "wheat-no");
				
				/*this_confirm_box = instance_find(obj_confirmationbox, 0);
				if (this_confirm_box != noone){
					this_confirm_box.curr_item = item;
					this_confirm_box.curr_machine = this_machine;					
				} else {
					show_debug_message("cant find it")
				}*/

				break;
			case "wheat-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				/*if (_this_machine == ""){
					show_debug_message("we're getting quotes");
				} else if (_this_machine == 0){
					show_debug_message("we're getting 0");
				} else {*/
				scr_use_item_slime_conv(_item, _this_machine);
				//}
				break;
			case "wheat-no":
				// exit
				scr_add_conf_text("Bye then.");
				//return_value = 0;
				break;
		case "convert-carrot-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Carrots = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " Carrots.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "carrot-yes");
				scr_confirmation_option("No", "carrot-no");
				
				this_confirm_box = instance_find(obj_confirmationbox, 0);
				if (this_confirm_box != noone){
					this_confirm_box.curr_item = _item;
					this_confirm_box.curr_machine = _this_machine;					
				} else {
					show_debug_message("cant find it")
				}

				break;
			case "carrot-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "carrot-no":
				// exit
				scr_add_conf_text("Bye then.");
				//return_value = 0;
				break;
		case "convert-cauliflower-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Cauliflower = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " Cauliflower.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "cauli-yes");
				scr_confirmation_option("No", "cauli-no");
				
				this_confirm_box = instance_find(obj_confirmationbox, 0);
				if (this_confirm_box != noone){
					this_confirm_box.curr_item = _item;
					this_confirm_box.curr_machine = _this_machine;					
				} else {
					show_debug_message("cant find it")
				}

				break;
			case "cauli-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "cauli-no":
				// exit
				scr_add_conf_text("Bye then.");
				//return_value = 0;
				break;
	}
}