/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_title, 0, 50, 30);

var ending_text = "";
switch(obj_game_ending_manager.ending){
	case ENDING_NORMAL:
		ending_text = "Ending 1: My Secret Life"
		break;
	case ENDING_BETRAYAL:
		ending_text = "Ending 2: A Town with No Humans"
		break;
	case ENDING_CHOICE_BETRAYAL:
		ending_text = "Ending 3: Betrayal and Guilt"
		break;
	case ENDING_CHOICE:
		ending_text = "Ending 4: \n The Not So Secret Life of a Slime"
		break;
	case ENDING_SPECIAL:
		ending_text = "Ending 5: Two Worlds in Harmony"
		break;
}

draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text_ext_transformed(450,500,ending_text, 20, 600 ,2,2,0)

replay_prompt = "Press R to start over."

draw_text_transformed(450, 650, replay_prompt, 1, 1, 0 );
