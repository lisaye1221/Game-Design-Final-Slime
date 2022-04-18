// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_confirmation_text(_text_id, _item, _this_machine){
	switch(_text_id){
		// ---------- Text for Slime Jelly conversion machine ------ //
		case "convert-wheat-to-jelly":
			scr_add_text(string(global.item_list.wheat.conversion_rate) + " Wheat = 1 Slime Jelly");
			scr_add_text("You own " + string(get_item_count(global.item_list.wheat)) + " wheat.");
			scr_add_text("Continue?");
				scr_option("Yes", "wheat-yes");
				scr_option("No", "wheat-no");
			break;
			case "wheat-yes":
				// call conversion function
				scr_add_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "wheat-no":
				// exit
				scr_add_text("Bye then.");
				//return_value = 0;
				break;
	}
}