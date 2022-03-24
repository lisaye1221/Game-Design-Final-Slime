/// @description open menu on player interaction
// You can write your code in this editor
if (activated) {
	show_debug_message("activated")
	activated = false;
	global.paused = true;
	instance_activate_object(menu)
}

if (!instance_exists(menu)){
	global.paused = false;
}