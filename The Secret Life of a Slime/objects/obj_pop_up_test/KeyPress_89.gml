/// @description Insert description here
// You can write your code in this editor

var _target_relationship = obj_relationship_manager.relationships[LAVANA];

// 0 means achievement popup
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _target_relationship);
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 1);
achi_max_relation(_target_relationship);

_target_relationship = obj_relationship_manager.relationships[LOLA];
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _target_relationship);
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 1);
achi_max_relation(_target_relationship);

_target_relationship = obj_relationship_manager.relationships[CLAUDE];
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, _target_relationship);
ds_queue_enqueue(obj_pop_up_manager.pop_up_queue, 1);
achi_max_relation(_target_relationship);


