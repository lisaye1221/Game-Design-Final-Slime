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
#macro LAVANA 0
#macro CLAUDE 1
#macro NELU 2
#macro LOLA 3

// ex of getting relationship of Claude
// obj.relationship_manager.relationships[CLAUDE].relationship
// or use the function get_relationship(CLAUDE)

// create the relationship tracker
relationships = 
[
	new create_relationship(
	"Lavana",
	spr_npc,
	0,
	false
	),
	
	new create_relationship(
	"Claude",
	spr_machineman,
	0,
	false
	),
	
	new create_relationship(
	"Nelu",
	spr_farmer_right,
	0,
	false
	),
	
	new create_relationship(
	"Lola",
	spr_npc,
	0,
	false
	)
]

