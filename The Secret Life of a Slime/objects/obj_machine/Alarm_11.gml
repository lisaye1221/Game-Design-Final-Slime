/// @description textbox queue
// You can write your code in this editor
if ((!global.paused) && place_free(x,y)){
	active_persistent_interactable(id);
	create_textbox(activation_text);
}else{
	alarm[11] = 1;
}