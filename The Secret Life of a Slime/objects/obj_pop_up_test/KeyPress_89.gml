/// @description Insert description here
// You can write your code in this editor

var _target_relationship = obj_relationship_manager.relationships[LAVANA];

show_debug_message("tier up queued");

// 0 means achievement popup
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _target_relationship);
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 1);

show_debug_message("ach queued");

achi_max_relation(_target_relationship);
achi_max_relation(obj_relationship_manager.relationships[LOLA]);
achi_max_relation(obj_relationship_manager.relationships[CLAUDE]);


