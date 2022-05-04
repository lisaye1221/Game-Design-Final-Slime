 /// @description Insert description here
// You can write your code in this editor

event_inherited();
// main menu
menu[0,0] = "Buy";
menu[0,1] = "Talk";
menu[0,2] = "Exit";

menu_with_gift[0,0] = "Buy";
menu_with_gift[0,1] = "Talk";
menu_with_gift[0,2] = "Gift";
menu_with_gift[0,3] = "Exit";

option = get_relationship_tier(LAVANA) >= 1? menu_with_gift : menu;
shopping_page = instance_create_layer(608,96,"Instances",obj_food_shopping_page)
instance_deactivate_object(self);
obj_relationship_manager.food_shop_menu = id;