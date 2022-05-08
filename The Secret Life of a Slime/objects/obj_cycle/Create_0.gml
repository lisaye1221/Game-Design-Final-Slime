alpha = 0;
alpha_color = 0;

color = c_black;
SUNSET_TIME = 30;
DARK_TIME = 40;
SUNRISE_TIME = 50;


//create light sprite
//create base sprite
var _surf = surface_create(127,127);
surface_set_target(_surf)
draw_clear_alpha(c_white,1);
light_sprite = sprite_create_from_surface(_surf,0,0,127,127,false,false,64,64)
//create transparency sprite
draw_clear_alpha(c_black,1);
draw_circle_color(64,64,64,c_white,c_black,false)
show_debug_message("creating transparency sprite")
var _transparency_sprite = sprite_create_from_surface(_surf,0,0,127,127,false,false,64,64);
//apply transparency sprite
show_debug_message("setting sprite with: "+ string(_transparency_sprite))
sprite_set_alpha_from_sprite(light_sprite,_transparency_sprite);
//clean up
show_debug_message("clearing surface")
surface_reset_target();
surface_free(_surf);
sprite_delete(_transparency_sprite);

surf = noone;
