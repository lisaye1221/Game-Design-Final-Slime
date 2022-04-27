/// @description Insert description here
// You can write your code in this editor

// if textbox is empty, delete self
if(page_number = 0){
	global.paused = is_previously_paused;
	instance_destroy(id);
}
