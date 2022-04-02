/// @description Insert description here
// You can write your code in this editor
show_debug_message(room)
show_debug_message(created_room)
if (room != created_room){
	show_debug_message("disabled")
	visible = false;	
	interactable = false;
	solid = false;
}else{
	visible = true;	
	interactable = true;
	solid = true;
}