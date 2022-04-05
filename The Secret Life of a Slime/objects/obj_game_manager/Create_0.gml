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
TOWN_TIME_LIMIT = 40; // seconds
EXCEED_TIME_ENERGY_COST = 15;
TRANSFORMATION_COOLDOWN_TIME = 45;
transformation_remaining = 0;
transformation_cooldown = 0;

firstTimeFarm = true

global.tiles_collision_name = "Tiles_Collision";
global.player_in_shop = false;
global.force_player_home = false;

global.paused = false;
