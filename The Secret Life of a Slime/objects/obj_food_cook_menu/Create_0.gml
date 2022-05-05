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
		[4, 2],
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
		[global.item_list.carrots, global.item_list.radishes, global.item_list.pumpkins],
		[2,2,3],
	),
	sandwich_recipe : new create_recipe(
		"Sandwich",
		global.item_list.sandwich,
		[global.item_list.lettuce, global.item_list.tomatoes, global.item_list.cucumbers, global.item_list.bread],
		[1, 1, 1, 2],
	),
	pumpkin_pie_recipe : new create_recipe(
		"Pumpkin Pie",
		global.item_list.pumpkin_pie,
		[global.item_list.wheat, global.item_list.pumpkins],
		[6,3],
	),
	gummy_bear_recipe : new create_recipe(
		"Gummy Bear",
		global.item_list.gummy_bear,
		[global.item_list.stars, global.item_list.roses, global.item_list.berries],
		[4,3,10],
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
	burrito_recipe : new create_recipe(
		"Burrito",
		global.item_list.burrito,
		[global.item_list.wheat, global.item_list.lettuce, global.item_list.tomatoes, global.item_list.carrots, global.item_list.radishes],
		[3, 2, 1, 1, 1],
	),
}

// i know this is ridiculous but bear with me
recipes2 = [recipes.spaghetti_recipe, recipes.ramen_recipe, recipes.curry_recipe, recipes.sandwich_recipe, recipes.pumpkin_pie_recipe, recipes.gummy_bear_recipe, recipes.cookies_recipe, recipes.pancake_recipe, recipes.bread_recipe, recipes.burrito_recipe];

tier0_recipes = [recipes.spaghetti_recipe, recipes.sandwich_recipe, recipes.cookies_recipe, recipes.bread_recipe];
tier1_recipes = [recipes.ramen_recipe, recipes.curry_recipe, recipes.pumpkin_pie_recipe, recipes.gummy_bear_recipe, recipes.pancake_recipe, recipes.burrito_recipe];

recipe_tiers = [tier0_recipes, tier1_recipes]

which_tier = 0;

recipe_list = recipe_tiers[which_tier];
num_recipes = array_length(recipe_list);
