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
function create_achievement(_name, _detail, _progress, _goal, _completed, _tracker=[]) constructor {
	ach_name = _name;
	detail = _detail;
	progress = _progress;
	goal = _goal;
	completed = _completed;
	tracker = _tracker;
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
		"Harvest 25 crops",
		0,
		25,
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
		"Harvest 150 crops",
		0,
		150,
		false
		),
	
	
	COOKING_SLIME: new create_achievement(
		"Cooking Slime",
		"Cook and collect food 5 times",
		0,
		5,
		false
		),
		
	GORDAN_RAMSLIME: new create_achievement(
		"Gordan Ramslime",
		"Cook and collect food 15 times",
		0,
		15,
		false
		),
	
	
	DIVERSE_FARM: new create_achievement(
		"Diverse Farm",
		"Harvest 3 different species of crops",
		0,
		3,
		false
		),
		
	PASSION_IN_AGRICULTURE: new create_achievement(
		"Passion in Agriculture",
		"Harvest 6 species of crops",
		0,
		6,
		false
		),
	
	AGRICULTURE_SPECIALIST:  new create_achievement(
		"Agriculure Specialist",
		"Harvest every species of crops",
		0,
		CROP_AMOUNT,
		false
		),
	
		
	NOT_FREE_REAL_ESTATE: new create_achievement(
		"It's Not Free Real Estate",
		"Use gold to unlock 1 extra plot of land",
		0,
		1,
		false
		),
		
		// ------ Town related ----------- //
	
	MODEST_SPENDER: new create_achievement(
		"Modest Spender",
		"Spend 100G",
		0,
		100,
		false
	),
	
	BIG_SPENDER: new create_achievement(
		"Big Spender",
		"Spend 500G",
		0,
		500,
		false
	),
	
	THE_ECONOMY_IS_ON_MY_SHOULDER: new create_achievement(
		"The Economy is on My Shoulder",
		"Spend 1000G",
		0,
		1000,
		false
	),
	
	FIRST_BEST_FRIEND: new create_achievement(
		"My First Best Friend",
		"Maxing relationship with 1 person",
		0,
		1,
		false
	),
	
	OUTGOING_SLIME: new create_achievement(
		"Outgoing Slime",
		"Maxing relationship with 2 people",
		0,
		2,
		false
	),
	
	POPULAR_SLIME: new create_achievement(
		"Popular Slime",
		"Maxing relationship with 3 people",
		0,
		3,
		false
	),
	
	SLIME_OF_THE_PEOPLE: new create_achievement(
		"Slime of the People",
		"Maxing all relationships",
		0,
		RELATIONSHIP_AMOUNT,
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
	
	achievement_list.GORDAN_RAMSLIME,
	
	achievement_list.DIVERSE_FARM,
	
	achievement_list.PASSION_IN_AGRICULTURE,
	
	achievement_list.AGRICULTURE_SPECIALIST,
	
	achievement_list.NOT_FREE_REAL_ESTATE
	
]

// create the town achievement tracker
town_achievements = 
[
	achievement_list.MODEST_SPENDER,
	
	achievement_list.BIG_SPENDER,
	
	achievement_list.THE_ECONOMY_IS_ON_MY_SHOULDER,
	
	achievement_list.FIRST_BEST_FRIEND,
	
	achievement_list.OUTGOING_SLIME,
	
	achievement_list.POPULAR_SLIME,
	
	achievement_list.SLIME_OF_THE_PEOPLE
	
]

