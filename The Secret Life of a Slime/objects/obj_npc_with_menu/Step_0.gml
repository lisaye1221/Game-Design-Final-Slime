  /// @description open menu on player interaction
// You can write your code in this editor
if (!instance_exists(menu) && 
	!instance_exists(obj_general_shopping_page) && 
	!instance_exists(obj_food_shopping_page) && 
	!instance_exists(obj_textbox) &&
	!instance_exists(obj_selling_page)
	){
	if (!global.menu_on){
		global.paused = false;
	}
}