// Creating a rectangle

//var c = color;
draw_set_color(c_black)
draw_set_alpha(alpha);

draw_rectangle(0,0,guiWidth, guiHeight, 0);


// trying to put spotlight on the player
/*if (currently == "night"){
	gpu_set_blendmode(bm_subtract);
	draw_set_color(c_white);
	with (obj_player) draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
}*/

draw_set_alpha(1);