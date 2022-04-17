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

// commented out in favor of array_length()
// #macro FARM_ACHIEVEMENT_AMOUNT 5
// #macro TOWN_ACHIEVEMENT_AMOUNT 3

// keeps a list of achievement and its progress
achievement_list = 
{
	// (name) (detail) (progress) (goal) (completed)
	
	// ------ Farm related ----------- //
	DONT_STARVE: new create_achievement(
		"Don't Starve",
		"Eat your first slime jelly",
		0,
		1,
		false
		),	
		
	FARMING_BEGINNER: new create_achievement(
		"Farming Beginner",
		"Harvest 30 crops",
		0,
		30,
		false
		),
		
	FARMING_INTERMEDIATE: new create_achievement(
		"Farming Intermediate",
		"Harvest 100 crops",
		0,
		100,
		false
		),
		
	FARMING_MASTER: new create_achievement(
		"Farming Master",
		"Harvest 300 crops",
		0,
		300,
		false
		),
		
	COOKING_SLIME: new create_achievement(
		"Cooking Slime",
		"Use machine 30 times to make food",
		0,
		30,
		false
		),
		
		// ------ Town related ----------- //
	
	MODEST_SPENDER: new create_achievement(
		"Modest Spender",
		"Spend 500G",
		0,
		500,
		false
	),
	
	BIG_SPENDER: new create_achievement(
		"Big Spender",
		"Spend 1000G",
		0,
		1000,
		false
	),
	
	THE_ECONOMY_IS_ON_MY_SHOULDER: new create_achievement(
		"The Economy is on My Shoulder",
		"Spend 5000G",
		0,
		5000,
		false
	),
}

// create the farm achievement tracker
farm_achievements = 
[
	achievement_list.DONT_STARVE,
	
	achievement_list.FARMING_BEGINNER,
	
	achievement_list.FARMING_INTERMEDIATE,
	
	achievement_list.FARMING_MASTER,
	
	achievement_list.COOKING_SLIME,
	
]

// create the town achievement tracker
town_achievements = 
[
	achievement_list.MODEST_SPENDER,
	
	achievement_list.BIG_SPENDER,
	
	achievement_list.THE_ECONOMY_IS_ON_MY_SHOULDER,
	
]
