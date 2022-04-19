/// @description Insert description here
// You can write your code in this editor

depth = -9998;

rowLength = 6;

i_cursor = 0;

MAX_ITEM = 30;

menu_open = false;

// just so it will draw something
tabs = ["Inventory", "Player", "Relationships", "Journal"]
tab_index = 0;

// item constructor
function create_recipe(_name, _item, _ingredients, _amounts) constructor {
	name = _name;
	item = _item;
	ingredients = _ingredients;		// array of crop ingredients
	amounts = _amounts;				// amount of each corresponding ingredient
}

recipes = {
	spaghetti_recipe : new create_recipe(
		"Spaghetti",
		global.item_list.spaghetti,
		[global.item_list.wheat, global.item_list.tomatoes],
		[5, 3],
	),
	ramen_recipe : new create_recipe(
		"Ramen",
		global.item_list.ramen,
		[global.item_list.wheat, global.item_list.lettuce, global.item_list.egg, global.item_list.radishes],
		[4,2,1,2],
	),
}

// i know this is ridiculous but bear with me
recipes2 = [recipes.spaghetti_recipe, recipes.ramen_recipe];

num_recipes = 2;
