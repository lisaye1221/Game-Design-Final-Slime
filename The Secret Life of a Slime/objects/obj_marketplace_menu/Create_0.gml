 /// @description Insert description here
// You can write your code in this editor

event_inherited();
// main menu
menu[0,0] = "Sell";
menu[0,1] = "Talk";


menu_with_gift[0,0] = "Sell";
menu_with_gift[0,1] = "Talk";
menu_with_gift[0,2] = "Gift";


option = get_relationship_tier(NELU) >= 1? menu_with_gift : menu;

obj_relationship_manager.marketplace_menu = id;
instance_deactivate_object(self);