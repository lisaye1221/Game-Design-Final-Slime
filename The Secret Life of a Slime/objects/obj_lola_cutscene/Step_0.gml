/// @description Insert description here
// You can write your code in this editor

depth = -9999;
	  
// set sprite direction	
if(y_speed > 0) {face = DOWN;}
if(y_speed < 0) {face = UP;}
if(x_speed > 0) {face = RIGHT;}
if(x_speed < 0) {face = LEFT;}
sprite_index = sprite[face]

	
// move the player
x += x_speed;
y += y_speed;

	

