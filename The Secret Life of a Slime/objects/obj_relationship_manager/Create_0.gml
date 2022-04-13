/// @description Insert description here
// You can write your code in this editor

// relationship constructor
// name: string with NPC's name
// icon: sprite with NPC's portrait
// relationship: int with player's relationship stat out of 100
// has_met: bool where false means player has not met and true means player has met
function create_relationship(_name, _icon, _relationship, _has_met) constructor {
	name = _name;
	icon = _icon;
	relationship = _relationship;
	has_met = _has_met;
}

#macro RELATIONSHIP_AMOUNT 4

// create the relationship tracker
relationships = 
{
	lavana : new create_relationship(
	"Lavana",
	spr_npc,
	0,
	false
	),
	
	machine_man : new create_relationship(
	"Machine Man",
	spr_machineman,
	0,
	false
	),
	
	farmer : new create_relationship(
	"Farmer",
	spr_farmer_right,
	0,
	false
	),
	
	last : new create_relationship(
	"Last",
	spr_npc,
	0,
	false
	)
}

