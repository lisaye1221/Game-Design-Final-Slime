/// @description Insert description here
// You can write your code in this editor

audio_play_sound(bgm_home, 0, true)

// record how many days passed by
global.days = 0;
// record how much time passed by
global.time = 0;

// higher = depletes faster
ENERGY_DEPLETION_MULTIPLIER = 3.5;


// ** Game States ** 
is_room_transition = false;
// bushes

// ** Time Limit for Town ** //
// how much time you got in town
TOWN_TIME_LIMIT = 25; // seconds
// how much energy you lose if you're forced back
EXCEED_TIME_ENERGY_COST = 15;
// how much time to wait until you can go back to town
TRANSFORMATION_COOLDOWN_TIME = 50;
transformation_remaining = 0;
transformation_cooldown = 0;
// flag for warning going over time in village
should_warn_went_over_time_limit = false;

global.tiles_collision_name = "Tiles_Collision";
global.door_collision_name = "Door_Collision";
global.farm_collision_name = "Farmlock_Collision";
global.player_in_shop = false;
global.force_player_home = false;
// every time player goes to village, the shop restocks
global.should_shop_restock = false;




global.tut_keys_on = true;
global.tutorial_active = true;
global.paused = false;

global.lola_door_unlock_day = 10;
global.extra_plot_unlock_day = 15;
global.advanced_machine_unlock_day = 20;

objects_with_daily_events = ds_map_create();
