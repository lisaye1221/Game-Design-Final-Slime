/// @description cheat to go to night
// You can write your code in this editor
global.time = 40;
obj_cycle.alarm[0] = -1;
obj_cycle.alarm[1] = obj_cycle.night * room_speed;
obj_cycle.alpha = .7;
obj_cycle.currently = "night"