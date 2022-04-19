/// @description Insert description here
// You can write your code in this editor

depth = -9998;

rowLength = 6;
global.menu_on = false;

tabs = ["Inventory", "Player", "Relationships", "Journal"]

i_cursor = 0;

tab_index = 0;

ach_index = 1;
journal_index = 0;

ach_min = 1;
farm_ach_max = array_length(obj_achievement_manager.farm_achievements) - 2;
town_ach_max = array_length(obj_achievement_manager.town_achievements) - 2;

