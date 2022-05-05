 /// @description Insert description here
// You can write your code in this editor

event_inherited();
// main menu
menu[0,0] = "Buy";
menu[0,1] = "Talk";

menu_with_gift[0,0] = "Buy";
menu_with_gift[0,1] = "Talk";
menu_with_gift[0,2] = "Gift";

option = get_relationship_tier(CLAUDE) >= 1? menu_with_gift : menu;


instance_deactivate_object(self);
shopping_page = instance_create_layer(576,128,"Instances",obj_general_shopping_page)
obj_relationship_manager.general_shop_menu = id;