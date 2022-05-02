/// @description Insert description here
// You can write your code in this editor

#macro ENDING_NORMAL 0;
#macro ENDING_BETRAYAL 1;
#macro ENDING_CHOICE 2;
#macro ENDING_SPECIAL 3;

UNLOCK_ENDING_DAY = 42;
// defaults to this ending
ending = ENDING_NORMAL;

achi_requirement = array_create(0);
array_push(achi_requirement, 
obj_achievement_manager.achievement_list.FARMING_MASTER);
array_push(achi_requirement, 
obj_achievement_manager.achievement_list.PASSION_IN_AGRICULTURE);
array_push(achi_requirement, 
obj_achievement_manager.achievement_list.BIG_SPENDER);
