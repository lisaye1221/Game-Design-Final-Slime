/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (storage_open) {
	storage_open = false;
	global.paused = false;
}
else {
	storage_open = true;
	global.paused = true;
}



