/// @description Textbox when new recipes unlock
// You can write your code in this editor


if ((!global.paused) && place_free(x,y) && in_home()){
	active_persistent_interactable(id);
	create_textbox("tier1-food-recipes");
}else{
	alarm[11] = 1;
}
