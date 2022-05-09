/// @description Insert description here
// You can write your code in this editor

depth = -9999;

// the max amount before it counts as a seperate item
#macro CROPS_MAX 24
#macro SLIME_JELLY_MAX 2

// the amount of crops in the game
#macro CROP_AMOUNT 9

MAX_ITEM = 6;

// item constructor
function create_item(_name, _icon, _menu_icon, _max_count, _count, _desc, _conversion_rate=0, _sell_price, _seeds=noone) constructor {
	name = _name;
	icon = _icon;
	menu_icon = _menu_icon;
	max_count = _max_count;
	count = _count;
	desc = _desc;
	conversion_rate = _conversion_rate;
	sell_price = _sell_price;
	seeds = _seeds;
}

global.menu_on = false;

// create the items masterlist
global.item_list = 
{
	slime_jelly : new create_item(
		"Slime Jelly",
		spr_item_jelly,
		spr_item_jelly_menu,
		SLIME_JELLY_MAX, 
		0,
		"My favorite food.",
		0,
		10
	),
	berries : new create_item(
		"Berries",
		spr_item_berries,
		spr_item_berries_menu,
		5, 
		0,
		"Blue berries, delicious and sweet.",
		0,
		5
		
	),
	fish: new create_item(
		"Fish",
		spr_item_fish,
		spr_item_fish_menu,
		5,
		0,
		"Nutrious creature of the water.",
		0,
		10
	),
	parts: new create_item(
		"Parts",
		spr_item_parts,
		spr_item_parts_menu,
		1,
		0,
		"Parts for machine. Need these to fix my machine.",
		0,
		2,
	),
	// ---- crops and seeds ------ //
	wheat : new create_item(
		"Wheat",
		spr_item_wheat,
		spr_item_wheat_menu,
		CROPS_MAX, 
		0,
		"A popular grain that makes flour. \n 3 Wheat = 1 Slime Jelly",
		3,
		6,
	),
	wheat_seeds: new create_item(
		"Wheat Seeds",
		spr_item_seeds,
		spr_item_seeds_menu,
		10,
		0,
		"Seeds that grow wheat. Takes 30 seconds to grow.",
		0,
		2,
	),
	tomatoes : new create_item(
		"Tomato",
		spr_item_tomato,
		spr_item_tomato_menu,
		CROPS_MAX,
		0,
		"A red sweet and sour fruit...or vegetable?. \n 2 Tomatoes = 1 Slime Jelly",
		2,
		10,
	),
	tomato_seeds: new create_item(
		"Tomato Seeds",
		spr_item_tom_seeds,
		spr_item_tom_seeds_menu,
		10,
		0,
		"Seeds that grow tomato. Takes 40 seconds to grow.",
		0,
		3
	),
	carrots : new create_item(
		"Carrot",
		spr_item_carrot,
		spr_item_carrot_menu,
		CROPS_MAX,
		0,
		"An orange root vegetable, not popular among kids. \n 2 Carrots = 1 Slime Jelly",
		2,
		15,
	),
	carrot_seeds : new create_item(
		"Carrot Seeds",
		spr_item_carrot_seeds,
		spr_item_carrot_seeds_menu,
		10,
		0,
		"Seeds that grow carrot. Takes 30 seconds to grow.",
		0,
		10
	),
	cauliflower : new create_item(
		"Cauliflower",
		spr_item_cauli,
		spr_item_cauli_menu,
		CROPS_MAX,
		0,
		"2 Cauliflower = 1 Slime Jelly",
		2,
		10,
	),
	cauliflower_seeds : new create_item(
		"Cauliflower Seeds",
		spr_item_cauli_seeds,
		spr_item_cauli_seeds_menu,
		10,
		0,
		"Cauliflower Seeds description",
		0,
		3
	),
	cucumbers : new create_item(
		"Cucumber",
		spr_item_cucumber,
		spr_item_cucumber_menu,
		CROPS_MAX,
		0,
		"Watery skinny gourd. \n 2 Cucumber = 1 Slime Jelly",
		2,
		12,
	),
	cucumber_seeds : new create_item(
		"Cucumber Seeds",
		spr_item_cucumber_seeds,
		spr_item_cucumber_seeds_menu,
		10,
		0,
		"Seeds that grow cucumber. Takes 45 seconds to grow.",
		0,
		4
	),
	eggplants : new create_item(
		"Eggplant",
		spr_item_eggplant,
		spr_item_eggplant_menu,
		CROPS_MAX,
		0,
		"2 Eggplant = 1 Slime Jelly",
		2,
		6,
	),
	eggplant_seeds : new create_item(
		"Eggplant Seeds",
		spr_item_eggplant_seeds,
		spr_item_eggplant_seeds_menu,
		10,
		0,
		"Eggplant Seeds description",
		0,
		3
	),
	lettuce : new create_item(
		"Lettuce",
		spr_item_lettuce,
		spr_item_lettuce_menu,
		CROPS_MAX,
		0,
		"These just look like leaves to me. \n 4 Lettuce = 1 Slime Jelly",
		4,
		7,
	),
	lettuce_seeds : new create_item(
		"Lettuce Seeds",
		spr_item_lettuce_seeds,
		spr_item_lettuce_seeds_menu,
		10,
		0,
		"Seeds that grow lettuce. Takes 15 seconds to grow.",
		0,
		3
	),
	pumpkins : new create_item(
		"Pumpkin",
		spr_item_pumpkin,
		spr_item_pumpkin_menu,
		CROPS_MAX,
		0,
		"An orange Fall gourd, apparently gets carved into different shapes during a certain holiday. \n 2 Pumpkin = 1 Slime Jelly",
		2,
		20,
	),
	pumpkin_seeds : new create_item(
		"Pumpkin Seeds",
		spr_item_pumpkin_seeds,
		spr_item_pumpkin_seeds_menu,
		10,
		0,
		"Seeds that grow pumpkin. Takes 50 seconds to grow.",
		0,
		5
	),
	radishes : new create_item(
		"Radish",
		spr_item_raddish,
		spr_item_raddish_menu,
		CROPS_MAX,
		0,
		"A white root vegetable. \n 2 Radish = 1 Slime Jelly",
		3,
		15,
	),
	radish_seeds : new create_item(
		"Radish Seeds",
		spr_item_raddish_seeds,
		spr_item_raddish_seeds_menu,
		10,
		0,
		"Seeds that grow radish. Takes 45 seconds to grow.",
		0,
		8
	),
	roses : new create_item(
		"Rose",
		spr_item_tulip,
		spr_item_tulip_menu,
		CROPS_MAX,
		0,
		"A pretty red flower that represents love. \n 1 Rose = 1 Slime Jelly",
		1,
		25,
	),
	rose_seeds : new create_item(
		"Rose Seeds",
		spr_item_tulip_seeds,
		spr_item_tulip_seeds_menu,
		10,
		0,
		"Seeds that grow rose. Takes 60 seconds to grow.",
		0,
		7
	),
	stars : new create_item(
		"Star Fruit",
		spr_item_star,
		spr_item_star_menu,
		CROPS_MAX,
		0,
		"A fruit shaped as a star, how cute.",
		0,
		30,
	),
	star_seeds : new create_item(
		"Star Fruit Seeds",
		spr_item_star_seeds,
		spr_item_star_seeds_menu,
		10,
		0,
		"Seeds that grow star fruit. Takes 75 seconds to grow.",
		0,
		10
	),
	tulips : new create_item(
		"Tulip",
		spr_item_tulip,
		spr_item_tulip_menu,
		CROPS_MAX,
		0,
		"Tulip description",
		0,
		15,
	),
	tulip_seeds : new create_item(
		"Tulip Seeds",
		spr_item_tulip_seeds,
		spr_item_tulip_seeds_menu,
		10,
		0,
		"Tulip Seeds description",
		0,
		4
	),
	turnips : new create_item(
		"Turnip",
		spr_item_turnip,
		spr_item_turnip_menu,
		CROPS_MAX,
		0,
		"2 Turnip = 1 Slime Jelly",
		2,
		9,
	),
	turnip_seeds : new create_item(
		"Turnip Seeds",
		spr_item_turnip_seeds,
		spr_item_turnip_seeds_menu,
		10,
		0,
		"Seeds that grow turnip.",
		0,
		3,
	),
	// ---- food ------ //
	egg : new create_item(
		"Egg",
		spr_egg,
		spr_egg_menu,
		4,
		0,
		"An egg. Seems to be a favorite among the humans.",
		0,
		5,
	),
	spaghetti : new create_item(
		"Spaghetti",
		spr_spaghetti,
		spr_spaghetti_menu,
		1,
		0,
		"A plate of spaghetti with tomato sauce. Deliziosa!",
		0,
		40,
	),
	ramen : new create_item(
		"Ramen",
		spr_ramen,
		spr_ramen_menu,
		1,
		0,
		"A bowl of rich and creamy tonkotsu ramen. ",
		0,
		85,
	),
	curry : new create_item(
		"Curry",
		spr_curry,
		spr_curry_menu,
		1,
		0,
		"A plate of curry. Smells delicious.",
		0,
		130,
	),
	sandwich : new create_item(
		"Sandwich",
		spr_sandwhich,
		spr_sandwich_menu,
		1,
		0,
		"A sandwich.",
		0,
		60,
	),
	pumpkin_pie : new create_item(
		"Pumpkin Pie",
		spr_pumpkin_pie,
		spr_pumpkin_pie_menu,
		1,
		0,
		"A slice of pumpkin pie, popular in the Fall seasons.",
		0,
		100,
	),
	gummy_bear : new create_item(
		"Gummy Bear",
		spr_gummy_bear,
		spr_gummy_bear_menu,
		1,
		0,
		"A dreamy gummy bear. Almost too pretty to be eaten.",
		0,
		250,
	),
	cookies : new create_item(
		"Cookies",
		spr_cookies,
		spr_cookies_menu,
		1,
		0,
		"A warm plate of cookies that can bring people happiness, rumored to be a certain blue muppet's favorite.",
		0,
		35,
	),
	cake : new create_item(
		"Cake",
		spr_cake,
		spr_cake_menu,
		1,
		0,
		"Sweet and floral. What humans eat on their birthday.",
		0,
		10,
	),
	bread : new create_item(
		"Bread",
		spr_bread,
		spr_bread_menu,
		1,
		0,
		"A warm loaf of bread. A stable food among the humans.",
		0,
		15,
	),
	burrito : new create_item(
		"Burrito",
		spr_burrito,
		spr_burrito_menu,
		1,
		0,
		"Pre-rolled. Better than Chipotle.",
		0,
		80,
	),
}

// assigning seeds values
global.item_list.carrots.seeds = global.item_list.carrot_seeds;
global.item_list.cauliflower.seeds = global.item_list.cauliflower_seeds;
global.item_list.wheat.seeds = global.item_list.wheat_seeds;
global.item_list.cucumbers.seeds = global.item_list.cucumber_seeds;
global.item_list.eggplants.seeds = global.item_list.eggplant_seeds;
global.item_list.lettuce.seeds = global.item_list.lettuce_seeds;
global.item_list.pumpkins.seeds = global.item_list.pumpkin_seeds;
global.item_list.radishes.seeds = global.item_list.radish_seeds;
global.item_list.roses.seeds = global.item_list.rose_seeds;
global.item_list.stars.seeds = global.item_list.star_seeds;
global.item_list.tomatoes.seeds = global.item_list.tomato_seeds;
global.item_list.tulips.seeds = global.item_list.tulip_seeds;
global.item_list.turnips.seeds = global.item_list.turnip_seeds;

// create the inventory
inventory = array_create(0);

