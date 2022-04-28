// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_confirmation_text(_text_id, _item, _this_machine){
	
	switch(_text_id){
		case "crops-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " " + _item.name + " = 1 Slime Jelly \n" +
			"You own " + string(get_item_count(_item)) + " " + _item.name + ".");
			
			_offering = 1;
			
			if (get_item_count(_item) >= _item.conversion_rate){
				scr_add_conf_text("You will have " + string(get_item_count(_item) - _item.conversion_rate) + " " + _item.name + " left. \n" + "Continue?");
					if (get_item_count(_item) >= _item.conversion_rate * (_offering+1)){
						scr_confirmation_option("+", "more-crops-to-jelly");
					}
					scr_confirmation_option("Convert " + string(_offering), "yes-crops-to-jelly");
					if (_offering > 1){
						scr_confirmation_option("-", "less-crops-to-jelly");					
					}
					scr_confirmation_option("Cancel", "no-crops-to-jelly");			
			}
				break;
			case "yes-crops-to-jelly":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "no-crops-to-jelly":
				// exit
				scr_add_conf_text("Bye then.");
				break;		
			case "more-crops-to-jelly":
				_offering++;
				scr_add_conf_text("You will have " + string(get_item_count(_item) - (_item.conversion_rate * _offering)) + " " + _item.name + " left. \n" + "Continue?");
				if (get_item_count(_item) >= _item.conversion_rate * (_offering+1)){
					scr_confirmation_option("+", "more-crops-to-jelly");
				}
				scr_confirmation_option("Convert " + string(_offering), "yes-crops-to-jelly");
				if (_offering > 1){
					scr_confirmation_option("-", "less-crops-to-jelly");					
				}
				scr_confirmation_option("Cancel", "no-crops-to-jelly");			
				break;
			case "less-crops-to-jelly":
				_offering--;
				scr_add_conf_text("You will have " + string(get_item_count(_item) - (_item.conversion_rate * _offering)) + " " + _item.name + " left. \n" + "Continue?");
				if (get_item_count(_item) >= _item.conversion_rate * (_offering+1)){
					scr_confirmation_option("+", "more-crops-to-jelly");
				}
				scr_confirmation_option("Convert " + string(_offering), "yes-crops-to-jelly");
				if (_offering > 1){
					scr_confirmation_option("-", "less-crops-to-jelly");					
				}
				scr_confirmation_option("Cancel", "no-crops-to-jelly");			
				break;				
				
				
		case "crops-to-seeds":
			scr_add_conf_text("1 " + _item.name + " = 3 " + _item.name + " seeds \n" +
			"You own " + string(get_item_count(_item)) + " " + _item.name + ".");
			
			if (get_item_count(_item) >= 1){
				scr_add_conf_text("You will have " + string(get_item_count(_item) - 1) + " " + _item.name + " left. \n" + "Continue?");
					scr_confirmation_option("Yes", "yes-crops-to-seeds");
					scr_confirmation_option("No", "no-crops-to-seeds");			
			}
				break;
			case "yes-crops-to-seeds":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_seeds_conv(_item, _this_machine);
				break;
			case "no-crops-to-seeds":
				// exit
				scr_add_conf_text("Bye then.");
				break;			
	}

	//switch(_text_id){
		// ---------- Text for Slime Jelly conversion machine ------ //
		/*case "convert-wheat-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Wheat = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " Wheat.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "wheat-yes");
				scr_confirmation_option("No", "wheat-no");

				break;
			case "wheat-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "wheat-no":
				// exit
				scr_add_conf_text("Bye then.");
				break;
		case "convert-carrot-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Carrots = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " Carrots.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "carrot-yes");
				scr_confirmation_option("No", "carrot-no");

				break;
			case "carrot-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "carrot-no":
				// exit
				scr_add_conf_text("Bye then.");
				break;
		case "convert-cauliflower-to-jelly":
			scr_add_conf_text(string(_item.conversion_rate) + " Cauliflower = 1 Slime Jelly");
			scr_add_conf_text("You own " + string(get_item_count(_item)) + " Cauliflower.");
			scr_add_conf_text("Continue?");
				scr_confirmation_option("Yes", "cauli-yes");
				scr_confirmation_option("No", "cauli-no");

				break;
			case "cauli-yes":
				// call conversion function
				scr_add_conf_text("You got it dude.");
				scr_use_item_slime_conv(_item, _this_machine);
				break;
			case "cauli-no":
				// exit
				scr_add_conf_text("Bye then.");
				break;
	}*/
}