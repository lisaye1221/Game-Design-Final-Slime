 /// @description Insert description here
// You can write your code in this editor

event_inherited();
// main menu
menu[0,0] = "Sell";
menu[0,1] = "Talk";
menu[0,2] = "Exit";

menu_with_gift[0,0] = "Sell";
menu_with_gift[0,1] = "Talk";
menu_with_gift[0,2] = "Gift";
menu_with_gift[0,3] = "Exit";

option = get_relationship_tier(NELU) >= 1? menu_with_gift : menu;


instance_deactivate_object(self);