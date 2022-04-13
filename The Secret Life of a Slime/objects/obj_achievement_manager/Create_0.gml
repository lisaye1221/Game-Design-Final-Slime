/// @description Insert description here
// You can write your code in this editor

// achievement constructor
// name: string achievement's name
// detail: string description of the achievement
// progress: int player's current progress with the achievement
// goal: int achievement goal
// completed: bool false means player has completed and true means player has completed
function create_achievement(_name, _detail, _progress, _goal, _completed) constructor {
	name = _name;
	detail = _detail;
	progress = _progress;
	goal = _goal;
	completed = _completed;
}

#macro ACHIEVEMENT_AMOUNT 4

// create the achievement tracker
achievements = 
{
	dont_starve : new create_achievement(
	"Don't Starve",
	"Eat your first slime jelly",
	0,
	1,
	false
	),
	
	farming_beginner : new create_achievement(
	"Farming Beginner",
	"Harvest 30 crops",
	0,
	30,
	false
	),
	
	cooking_slime : new create_achievement(
	"Cooking Slime",
	"Use machine 30 times to make food",
	0,
	30,
	false
	),
	
}
