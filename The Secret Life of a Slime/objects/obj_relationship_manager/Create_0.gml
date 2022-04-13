/// @description Insert description here
// You can write your code in this editor

depth = -9999;

persistent = true;

// relationship constructor
// name: string with NPC's name
// icon: sprite with NPC's portrait
// relationship: int with player's relationship stat out of 100
// has_met: bool where false means player has not met and true means player has met
function create_relationship(_name, _icon, _relationship, _has_met) constructor {
	npc_name = _name;
	icon = _icon;
	relationship = _relationship;
	has_met = _has_met;
}

#macro RELATIONSHIP_AMOUNT 4

// create the relationship tracker
relationships = 
[
	new create_relationship(
	"Lavana",
	spr_npc,
	10,
	true
	),
	
	new create_relationship(
	"Machine Man",
	spr_machineman,
	90,
	true
	),
	
	new create_relationship(
	"Farmer",
	spr_farmer_right,
	0,
	false
	),
	
	new create_relationship(
	"Template",
	spr_npc,
	0,
	false
	)
]

