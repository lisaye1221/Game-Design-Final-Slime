/// @description Insert description here
// You can write your code in this editor

depth = -9998;

rowLength = 6;

i_cursor = 0;

MAX_ITEM = 30;

menu_open = false;

// just so it will draw something; should delete
tabs = ["Inventory", "Player", "Relationships", "Journal"]
tab_index = 0;


/*****  Storing the recipe informations  *****/

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
	curry_recipe : new create_recipe(
		"Curry",
		global.item_list.curry,
		[global.item_list.carrots, global.item_list.eggplants, global.item_list.cauliflower],
		[3,3,3],
	),
	sandwich_recipe : new create_recipe(
		"Sandwich",
		global.item_list.sandwich,
		[global.item_list.lettuce, global.item_list.tomatoes, global.item_list.cucumbers, global.item_list.wheat],
		[3, 3, 3, 3],
	),
	pumpkin_pie_recipe : new create_recipe(
		"Pumpkin Pie",
		global.item_list.pumpkin_pie,
		[global.item_list.wheat, global.item_list.pumpkins],
		[6,4],
	),
	gummy_bear_recipe : new create_recipe(
		"Gummy Bear",
		global.item_list.gummy_bear,
		[global.item_list.stars, global.item_list.roses, global.item_list.tulips],
		[2,4,2],
	),
	cookies_recipe : new create_recipe(
		"Cookies",
		global.item_list.cookies,
		[global.item_list.wheat, global.item_list.egg],
		[3,2],
	),
	pancake_recipe : new create_recipe(
		"Pancakes",
		global.item_list.pancake,
		[global.item_list.wheat, global.item_list.egg, global.item_list.roses],
		[4,4,1],
	),
	bread_recipe : new create_recipe(
		"Bread",
		global.item_list.bread,
		[global.item_list.wheat],
		[3],
	),
}

// i know this is ridiculous but bear with me
recipes2 = [recipes.spaghetti_recipe, recipes.ramen_recipe, recipes.curry_recipe, recipes.sandwich_recipe, recipes.pumpkin_pie_recipe, recipes.gummy_bear_recipe, recipes.cookies_recipe, recipes.pancake_recipe, recipes.bread_recipe];

num_recipes = array_length(recipes2);
