 /// @description Insert description here
// You can write your code in this editor

event_inherited();
// main menu
menu[0,0] = "Talk";
menu[0,1] = "Exit";

menu_with_gift[0,0] = "Talk";
menu_with_gift[0,1] = "Gift";
menu_with_gift[0,2] = "Exit";

option = get_relationship_tier(LOLA) >= 1? menu_with_gift : menu;


instance_deactivate_object(self);
shopping_page = instance_create_layer(608,96,"Instances",obj_food_shopping_page)
obj_relationship_manager.lola_menu = id;