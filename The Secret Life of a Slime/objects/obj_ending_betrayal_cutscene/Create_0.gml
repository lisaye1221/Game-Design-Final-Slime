/// @description Insert description here
// You can write your code in this editor

alarm_triggered = false;
scene_start = false;
show_text = false;
a = 1; // alpha
fadeout = false; 

curr_text = ""
print = ""
letter = 0;
next = 0;

text[0] = "With my help, we drove the humans out of town."
text[1] = "After that, we brought some slimes over to live here."
text[2] = "For me, I get to go back home, and I did."
text[3] = "Sometimes I come back to the farm and to this town though."
text[4] = "Till this day, I am still not sure if I made the right choice."

text_2[0] = "With my help, we drove the humans, my friends, out of town."
text_2[1] = "After that, we brought some slimes over to live here."
text_2[2] = "They seem happy."
text_2[3] = "For me, I get to go back home, and I did."
text_2[4] = "I don't think I can ever come back to the human world."
text_2[5] = "I don't deserve to. I betrayed my friends. "
text_2[6] = "Maybe I made the wrong choice, but it's all too late now."

if(obj_game_ending_manager.ending == ENDING_CHOICE_BETRAYAL){
	text = text_2;	
}

