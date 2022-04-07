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
}

// create the inventory
inventory = array_create(0);

// starting out with 3 seeds
gain_item(global.item_list.wheat_seeds, 3);
gain_item(global.item_list.tomato_seeds, 3);