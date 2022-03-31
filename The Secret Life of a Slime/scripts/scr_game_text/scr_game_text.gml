// This file will store all of the game's dialogue text

function scr_game_text(_text_id){
	
switch(_text_id){
	
	// Text that would show up if you interact with sign 
	case "village_sign":
		scr_add_text("There is a sign here.");
		scr_add_text("Seems like there is a village over there.");
	break;
	
	case "mushroom":
		scr_add_text("A mushroom.");
		scr_add_text("Should I eat it?");
			scr_option("Yes");
			scr_option("No");
		break;
		case "mushroom-yes":
			scr_add_text("....");
			scr_add_text("On a second thought, maybe I shouldn't");
			break;
		case "mushroom-no":
			scr_add_text("A wise choice");
			scr_add_text("I am not Mario");
			break;
	
	
	
}

}