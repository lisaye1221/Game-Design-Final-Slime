/// @description Insert description here
// You can write your code in this editor

depth = -9999;

persistent = true;

// achievement constructor
// name: string achievement's name
// detail: string description of the achievement
// progress: int player's current progress with the achievement
// goal: int achievement goal
// completed: bool false means player has completed and true means player has completed
function create_achievement(_name, _detail, _progress, _goal, _completed) constructor {
	ach_name = _name;
	detail = _detail;
	progress = _progress;
	goal = _goal;
	completed = _completed;
}

#macro FARM_ACHIEVEMENT_AMOUNT 4
#macro TOWN_ACHIEVEMENT_AMOUNT 5

// create the farm achievement tracker
farm_achievements = 
[
	new create_achievement(
	"Don't Starve",
	"Eat your first slime jelly",
	1,
	1,
	true
	),
	
	new create_achievement(
	"Farming Beginner",
	"Harvest 30 crops",
	20,
	30,
	false
	),
	
	new create_achievement(
	"Cooking Slime",
	"Use machine 30 times to make food",
	10,
	30,
	false
	),
	
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	)
	
]

// create the town achievement tracker
town_achievements = 
[
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	),
	
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	),
	
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	),
	
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	),
	
	new create_achievement(
	"Template",
	"Template Detail",
	0,
	30,
	false
	)
	
]
