/// @description Insert description here
// You can write your code in this editor

depth = -9999;

// the max amount before it counts as a seperate item
#macro CROPS_MAX 24
#macro SLIME_JELLY_MAX 2

MAX_ITEM = 6;

HOTBAR_SLOTS = 6;

INV_LEFT_X = 680;
INV_BACKGROUND_WIDTH = 200;
INV_BACKGROUND_HEIGHT = 20;
INV_BACKGROUND_MARGIN = 5;
INV_RIGHT_X = INV_LEFT_X + INV_BACKGROUND_WIDTH;
INV_TOP_LEFT_Y = 550;
ICON_SIZE = 16;

// item constructor
function create_item(_name, _icon, _menu_icon, _max_count, _count, _desc) constructor {
	name = _name;
	icon = _icon;
	menu_icon = _menu_icon;
	max_count = _max_count;
	count = _count;
	desc = _desc;
	
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
		"Slime Jelly description"
	),
	berries : new create_item(
		"Berries",
		spr_item_berries,
		spr_item_berries_menu,
		8, 
		0,
		"Berries description"
	),
	wheat : new create_item(
		"Wheat",
		spr_item_wheat,
		spr_item_wheat_menu,
		CROPS_MAX, 
		0,
		"Wheat description"
	),
	fish: new create_item(
		"Fish",
		spr_item_fish,
		spr_item_fish_menu,
		5,
		0,
		"Fish description"
	),
	parts: new create_item(
		"Parts",
		spr_item_parts,
		spr_item_parts_menu,
		1,
		0,
		"Parts description"
	),
	wheat_seeds: new create_item(
		"Wheat Seeds",
		spr_item_seeds,
		spr_item_seeds_menu,
		10,
		0,
		"Wheat Seeds description"
	),
	tomato_seeds: new create_item(
		"Tomato Seeds",
		spr_item_tom_seeds,
		spr_item_tom_seeds_menu,
		10,
		0,
		"Tomato Seeds description"
	),
	tomatoes : new create_item(
		"Tomato",
		spr_item_tomato,
		spr_item_tomato_menu,
		CROPS_MAX,
		0,
		"Tomatoes description"
	),
	carrots : new create_item(
		"Carrot",
		spr_item_carrot,
		spr_item_carrot_menu,
		CROPS_MAX,
		0,
		"Carrots description"
	),
	carrot_seeds : new create_item(
		"Carrot Seeds",
		spr_item_carrot_seeds,
		spr_item_carrot_seeds_menu,
		10,
		0,
		"Carrot Seeds description"
	),
	cauliflower : new create_item(
		"Cauliflower",
		spr_item_cauli,
		spr_item_cauli_menu,
		CROPS_MAX,
		0,
		"Cauliflower description"
	),
	cauliflower_seeds : new create_item(
		"Cauliflower Seeds",
		spr_item_cauli_seeds,
		spr_item_cauli_seeds_menu,
		10,
		0,
		"Cauliflower Seeds description"
	),
	cucumbers : new create_item(
		"Cucumber",
		spr_item_cucumber,
		spr_item_cucumber_menu,
		CROPS_MAX,
		0,
		"Cucumber description"
	),
	cucumber_seeds : new create_item(
		"Cucumber Seeds",
		spr_item_cucumber_seeds,
		spr_item_cucumber_seeds_menu,
		10,
		0,
		"Cucumber Seeds description"
	),
	eggplants : new create_item(
		"Eggplant",
		spr_item_eggplant,
		spr_item_eggplant_menu,
		CROPS_MAX,
		0,
		"Eggplant description"
	),
	eggplant_seeds : new create_item(
		"Eggplant Seeds",
		spr_item_eggplant_seeds,
		spr_item_eggplant_seeds_menu,
		10,
		0,
		"Eggplant Seeds description"
	),
	lettuce : new create_item(
		"Lettuce",
		spr_item_lettuce,
		spr_item_lettuce_menu,
		CROPS_MAX,
		0,
		"Lettuce description"
	),
	lettuce_seeds : new create_item(
		"Lettuce Seeds",
		spr_item_lettuce_seeds,
		spr_item_lettuce_seeds_menu,
		10,
		0,
		"Lettuce Seeds description"
	),
	pumpkins : new create_item(
		"Pumpkin",
		spr_item_pumpkin,
		spr_item_pumpkin_menu,
		CROPS_MAX,
		0,
		"Pumpkin description"
	),
	pumpkin_seeds : new create_item(
		"Pumpkin Seeds",
		spr_item_pumpkin_seeds,
		spr_item_pumpkin_seeds_menu,
		10,
		0,
		"Pumpkin Seeds description"
	),
	radishes : new create_item(
		"Radish",
		spr_item_raddish,
		spr_item_raddish_menu,
		CROPS_MAX,
		0,
		"Radish description"
	),
	radish_seeds : new create_item(
		"Radish Seeds",
		spr_item_raddish_seeds,
		spr_item_raddish_seeds_menu,
		10,
		0,
		"Radish Seeds description"
	),
	roses : new create_item(
		"Rose",
		spr_item_rose,
		spr_item_rose_menu,
		CROPS_MAX,
		0,
		"Rose description"
	),
	rose_seeds : new create_item(
		"Rose Seeds",
		spr_item_rose_seeds,
		spr_item_rose_seeds_menu,
		10,
		0,
		"Rose Seeds description"
	),
	stars : new create_item(
		"Star Fruit",
		spr_item_star,
		spr_item_star_menu,
		CROPS_MAX,
		0,
		"Star Fruit description"
	),
	star_seeds : new create_item(
		"Star Fruit Seeds",
		spr_item_star_seeds,
		spr_item_star_seeds_menu,
		10,
		0,
		"Star Fruit Seeds description"
	),
	tulips : new create_item(
		"Tulip",
		spr_item_tulip,
		spr_item_tulip_menu,
		CROPS_MAX,
		0,
		"Tulip description"
	),
	tulip_seeds : new create_item(
		"Tulip Seeds",
		spr_item_tulip_seeds,
		spr_item_tulip_seeds_menu,
		10,
		0,
		"Tulip Seeds description"
	),
	turnips : new create_item(
		"Turnip",
		spr_item_turnip,
		spr_item_turnip_menu,
		CROPS_MAX,
		0,
		"Turnip description"
	),
	turnip_seeds : new create_item(
		"Turnip Seeds",
		spr_item_turnip_seeds,
		spr_item_turnip_seeds_menu,
		10,
		0,
		"Turnip Seeds description"
	),
}

// create the inventory
inventory = array_create(0);

// starting out with 3 seeds
gain_item(global.item_list.wheat_seeds, 3);
gain_item(global.item_list.tomato_seeds, 3);