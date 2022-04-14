// This file will store all of the game's dialogue text

function scr_game_text(_text_id){
	
switch(_text_id){
	
	// ---------- Text in house area (inside) ------ //
	case "home_hanging_picture":
		scr_add_text("A nice picture of a road on a beautiful day.");
		
	break;
	case "home_clock":
		scr_add_text("It's a clock.");
		scr_add_text("Too bad I can't read it.");
	break;
	
	case "home_tutorial":
		scr_add_text("Would you like a quick recap of controls and gameplay?")
			scr_option("Yes", "tutorial-yes");
			scr_option("No", "tutorial-no");
		break;
		
		case "tutorial-yes":
			scr_add_text("Use arrow keys to move. Use Z to interact with objects and people.");
			scr_add_text("Use E to access your status and your inventory. Use M and N to navigate through the tabs.");
			scr_add_text("You can only hold 6 items at once. Extra storage is provided in the chest of your home.")
			scr_add_text("Use the 1-6 keys to use items in your inventory. This includes eating or planting.")
			scr_add_text("The game ends when you die. Keep your energy up by eating food. You can eat berries from bushes or grow your own food.");
			scr_add_text("Seeds are required to grow crops. When grown, they must be converted into the machines for consumption.");
			scr_add_text("Machines can break upon usage and can be repaired with machine parts, which can be bought in town.");
			scr_add_text("There are many stores in town. Everything can be bought or sold. The market refreshes its item stock daily.");
			scr_add_text("When accessing town, you are transformed into a human for 40 seconds and will be forced back home afterwards.");
			scr_add_text("There will be a 45 second cooldown til you can enter town again.");
			scr_add_text("That is all you need to know, good luck!")		
		break;
		
		case "tutorial-no":
			scr_add_text("Carry on.")
		break;
	
	case "bed":
		scr_add_text("This surface is very soft (Press Z to continue).");
		scr_add_text("But I can't sleep since I'm a slime :(");
	break;
	
	case "home_door_lock":
		scr_add_text("Door is locked until tutorial is finished. (Press Z to continue).");
	break;
	
	
	
	// ---------- Text in home area (outside) ------ //
	
	// Text that would show up if you interact with sign 
	case "village_sign":
		scr_add_text("There is a sign here.");
		scr_add_text("Seems like there is a village over there.");
	break;
	
	case "mushroom":
		scr_add_text("A mushroom.");
		scr_add_text("Should I eat it?");
			scr_option("Yes", "mushroom-yes");
			scr_option("No", "mushroom-no");
		break;
		case "mushroom-yes":
			scr_add_text("....");
			scr_add_text("On a second thought, maybe I shouldn't");
			break;
		case "mushroom-no":
			scr_add_text("A wise choice.");
			scr_add_text("I am not Mario.");
			break;
			
	case "farm_tutorial_lock":
		scr_add_text("Cannot enter until after tutorial is finished. (Press Z to continue). ");
		break;
		
	
		
		
	// ---------- Text in village area (outside) ------ //
	
	case "food_shop_sign":
		scr_add_text("The food shop.");
		scr_add_text("Looks like they sell food.");
		break;
	case "general_shop_sign":
		scr_add_text("The general shop.");
		scr_add_text("Looks like a place that sells general things.");
		break;
	case "trading_shop_sign":
		scr_add_text("The trading shop.");
		scr_add_text("Looks like I can sell things here.");
		break;
		
	case "door_locked":
		scr_add_text("Door is locked.");
		scr_add_text("Maybe the owner is not in town now.");
		break;
		
	// ---------- Text for NPCs ------ //
		
	case "Lavana-first-meet":
		scr_add_text("Hello, nice to meet you.");
		scr_add_text("My name is Lavana, I sell food around here.");
		break;
		
		
	// ---------- Text for Warnings/Hints ------ //
	
	case "warn-no-money":
		scr_add_text("I don't have enough money for that.");
		break;
	case "warn-cannot-use-item":
		scr_add_text("I can't use that item right now.");
		break;
}

}