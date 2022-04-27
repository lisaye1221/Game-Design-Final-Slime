/// @description Insert description here
// You can write your code in this editor

if (!ds_queue_empty(pop_up_queue)) {
	
	if (pop_up_type < 0) {
		
		pop_up_item = ds_queue_dequeue(pop_up_queue);
		pop_up_type = ds_queue_dequeue(pop_up_queue);
		
		// create the pop-up instance
		instance_create_layer(0, 0, "Instances", obj_pop_up);
		
	}
	
}
