/// @description Insert description here
// You can write your code in this editor

var _ending = obj_game_ending_manager.ending;

switch(_ending){
	case ENDING_NORMAL:
		create_textbox("ending-normal")
		break
	case ENDING_BETRAYAL:
		create_textbox("ending-betrayal");
		break
	case ENDING_CHOICE:
		create_textbox("ending-choice");
		break
	case ENDING_SPECIAL:
		create_textbox("ending-special");
		alarm[11] = 1;
		break
}
