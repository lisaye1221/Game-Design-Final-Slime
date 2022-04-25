// This file will store all of the game's dialogue text

// apart from that, this is also where you can specify some actions you 
// want to happen after a dialogue is done (increasing friendship, etc.)

function scr_game_text(_text_id){
	return_value = 0;
	
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
			scr_add_text("The game ends when you die. Keep your energy up. You can only consume BLUE food.");
			scr_add_text("Seeds are required to grow crops. Machines can convert them to BLUE slime jelly.");
			scr_add_text("Machines can break upon usage and can be repaired with machine parts, which can be bought in town.");
			scr_add_text("There are many stores in town. Everything can be bought or sold. The market refreshes its item stock daily.");
			scr_add_text("When accessing town, you are transformed into a human for 40 seconds and will be forced back home afterwards.");
			scr_add_text("There will be a 45 second cooldown til you can enter town again.");
			scr_add_text("That is all you need to know, good luck!")		
		break;
		
		case "tutorial-no":
			scr_add_text("Get rich, make friends, and stay alive!")
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
			scr_add_text("You died.");
			scr_add_text("....Just kidding!");
			scr_add_text("I'm better off not eating that.");
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
		scr_add_text("The marketplace.");
		scr_add_text("Looks like I can sell things here.");
		break;
		
	case "door_locked":
		scr_add_text("Door is locked.");
		scr_add_text("Maybe the owner is not in town now.");
		break;
		
	// --------------------- Text for NPCs for Talking ---------------------- //
		
	case "Lavana-first-meet":
		scr_add_text("Hello, nice to meet you.");
		scr_add_text("My name is Lavana, I sell food around here.");
		first_talk_completed(LAVANA);
		break;
		
	case "Claude-first-meet":
		scr_add_text("Hey, how's it going?");
		scr_add_text("A new face! Nice to meet ya.");
		scr_add_text("I'm Claude, I sell a bunch of stuff ya probably need.");
		first_talk_completed(CLAUDE);
		break;
	case "Nelu-first-meet":
		scr_add_text("Hi hi hi!");
		scr_add_text("The name is Nelu.");
		scr_add_text("This your first time? I can tell. Plus, I know everybody around here.");
		scr_add_text("Welcome to my marketplace, I'll buy certain items off of you.");
		first_talk_completed(NELU);
		break;
	case "Lola-first-meet":
		scr_add_text("....");
		scr_add_text("Who are you?");
		scr_add_text("Why are you in my house?");
			scr_option("Sorry.", "Lola-first-meet-1");
			scr_option("What's your name?", "Lola-first-meet-2");
		break;
		case "Lola-first-meet-1":
			scr_add_text("...");
			scr_add_text("You should leave.");
			break
		case "Lola-first-meet-2":
			scr_add_text("Lola.");
			scr_add_text("....");
			scr_add_text("You're kinda weird.");
			scr_add_text("You should leave if you don't have any business with me.");
			first_talk_completed(LOLA);
			break
		
	// naming convention "(name)-(relationship tier)-(id)"
	// dialogue marked with relationship tier 1 will only appear when 
	// relationship level is tier 1
	case "Lavana-0-1":
		scr_add_text("Hi, good to see you!");
		scr_add_text("We have some nice produce in stock today. Check them out!");
		break;
	case "Lavana-0-2":
		scr_add_text("Hi, how are you today?");
		scr_add_text("Come look at today's fresh produce!");
		break;
	case "Lavana-0-3":
		scr_add_text("Hi, great to see you!");
		scr_add_text("We have some nice produce in stock today. Check them out!");
		break;
	case "Lavana-1-1":
		scr_add_text("Hi, good to see you!");
		scr_add_text("Are you eating well?");
		break;
	case "Lavana-1-2":
		scr_add_text("1-2"); // placeholder for dialogue
		break;
	case "Lavana-1-3":
		scr_add_text("1-3");
		break;
	case "Lavana-2-1":
		scr_add_text("2-1");
		break;
	case "Lavana-2-2":
		scr_add_text("2-2");
		break;
	case "Lavana-2-3":
		scr_add_text("2-3");
		break;
	case "Lavana-2-4":
		scr_add_text("2-4");
		break;
	case "Lavana-3-1":
		scr_add_text("3-1");
		break;
	case "Lavana-3-2":
		scr_add_text("3-2");
		break;
	case "Lavana-3-3":
		scr_add_text("3-3");
		break;
	case "Lavana-3-4":
		scr_add_text("3-4");
		break;
	case "Lavana-3-5":
		scr_add_text("3-5");
		break;
		
		
	case "Claude-0-1":
		scr_add_text("Hey again!");
		scr_add_text("Isn't it a great day today?");
		break;
	case "Claude-0-2":
		scr_add_text("Hello again!");
		scr_add_text("Beautiful day to get some work done!");
		break;
	case "Claude-0-3":
		scr_add_text("Oh hey it's you!");
		scr_add_text("How are you doing today?");
		break;
	case "Claude-1-1":
		scr_add_text("1-1");
		break;
	case "Claude-1-2":
		scr_add_text("1-2");
		break;
	case "Claude-1-3":
		scr_add_text("1-3");
		break;
	case "Claude-2-1":
		scr_add_text("2-1");
		break;
	case "Claude-2-2":
		scr_add_text("2-2");
		break;
	case "Claude-2-3":
		scr_add_text("2-3");
		break;
	case "Claude-2-4":
		scr_add_text("2-4");
		break;
	case "Claude-3-1":
		scr_add_text("3-1");
		break;
	case "Claude-3-2":
		scr_add_text("3-2");
		break;
	case "Claude-3-3":
		scr_add_text("3-3");
		break;
	case "Claude-3-4":
		scr_add_text("3-4");
		break;
	case "Claude-3-5":
		scr_add_text("3-5");
		break;
		
	case "Nelu-0-1":
		scr_add_text("Hiiiiiiii.");
		scr_add_text("Do you got more things for me today?");
		break;
	case "Nelu-0-2":
		scr_add_text("Hi Hi Hi.");
		scr_add_text("How are you? I'm doing great!");
		break;
	case "Nelu-0-3":
		scr_add_text("Helloooooo!");
		scr_add_text("Got anything you need me to take from your hands today?");
		break;
	case "Nelu-1-1":
		scr_add_text("1-1");
		break;
	case "Nelu-1-2":
		scr_add_text("1-2"); 
		break;
	case "Nelu-1-3":
		scr_add_text("1-3");
		break;
	case "Nelu-2-1":
		scr_add_text("2-1");
		break;
	case "Nelu-2-2":
		scr_add_text("2-2");
		break;
	case "Nelu-2-3":
		scr_add_text("2-3");
		break;
	case "Nelu-2-4":
		scr_add_text("2-4");
		break;
	case "Nelu-3-1":
		scr_add_text("3-1");
		break;
	case "Nelu-3-2":
		scr_add_text("3-2");
		break;
	case "Nelu-3-3":
		scr_add_text("3-3");
		break;
	case "Nelu-3-4":
		scr_add_text("3-4");
		break;
	case "Nelu-3-5":
		scr_add_text("3-5");
		break;
		
	case "Lola-0-1":
		scr_add_text("Oh it's you again.");
		scr_add_text("What do you want?");
		scr_add_text("Just saying hi? ");
		scr_add_text("You sure got a lot of time.");
		break;
	case "Lola-0-2":
		scr_add_text("You again?");
		scr_add_text("You're here to say hi?");
		scr_add_text("I wish I have time like you.");
		break;
	case "Lola-0-3":
		scr_add_text("...");
		scr_add_text("What do you want?");
		scr_add_text("Saying hi? Hi.");
		scr_add_text("Now leave.");
		break;
	case "Lola-1-1":
		scr_add_text("1-1");
		break;
	case "Lola-1-2":
		scr_add_text("1-2"); 
		break;
	case "Lola-1-3":
		scr_add_text("1-3");
		break;
	case "Lola-2-1":
		scr_add_text("2-1");
		break;
	case "Lola-2-2":
		scr_add_text("2-2");
		break;
	case "Lola-2-3":
		scr_add_text("2-3");
		break;
	case "Lola-2-4":
		scr_add_text("2-4");
		break;
	case "Lola-3-1":
		scr_add_text("3-1");
		break;
	case "Lola-3-2":
		scr_add_text("3-2");
		break;
	case "Lola-3-3":
		scr_add_text("3-3");
		break;
	case "Lola-3-4":
		scr_add_text("3-4");
		break;
	case "Lola-3-5":
		scr_add_text("3-5");
		break;
		
	// --------------------- Text for NPCs for Gifting ---------------------- //
	case "Lavana-gift-1":
		scr_add_text("Maybe I can gift Lavana something?");
		var gift = get_gift(LAVANA);
		scr_add_text("If I remember, Lavana wants a " + gift.name +".");
			scr_option("Gift", "Lavana-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Lavana-gift-yes":
				var gift = get_gift(LAVANA);
				if(has_item(gift)){
					lose_one_item(gift);
					gain_relationship_through_gift(LAVANA);
					scr_game_text("Lavana-gift-success");
				}
				else{
					scr_game_text("warn-no-item");	
				}
				break;
	case "Claude-gift-1":
		scr_add_text("Maybe I can gift Claude something?");
		var gift = get_gift(CLAUDE);
		scr_add_text("If I remember, Claude wants a " + gift.name +".");
			scr_option("Gift", "Claude-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Claude-gift-yes":
				var gift = get_gift(CLAUDE);
				if(has_item(gift)){
					lose_one_item(gift);
					gain_relationship_through_gift(CLAUDE);
					scr_game_text("Claude-gift-success");
				}
				else{
					scr_game_text("warn-no-item");	
				}
				break;
	case "Nelu-gift-1":
		scr_add_text("Maybe I can gift Nelu something?");
		var gift = get_gift(NELU);
		scr_add_text("If I remember, Nelu wants a " + gift.name +".");
			scr_option("Gift", "Nelu-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Nelu-gift-yes":
				var gift = get_gift(NELU);
				if(has_item(gift)){
					lose_one_item(gift);
					gain_relationship_through_gift(NELU);
					scr_game_text("Nelu-gift-success");
				}
				else{
					scr_game_text("warn-no-item");	
				}
				break;
	case "Lola-gift-1":
		scr_add_text("Maybe I can gift Lola something?");
		var gift = get_gift(LOLA);
		scr_add_text("If I remember, Lola wants a " + gift.name +".");
			scr_option("Gift", "Lola-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Lola-gift-yes":
				var gift = get_gift(LOLA);
				if(has_item(gift)){
					lose_one_item(gift);
					gain_relationship_through_gift(LOLA);
					scr_game_text("Lola-gift-success");
				}
				else{
					scr_game_text("warn-no-item");	
				}
				break;
				
	case "Lavana-gift-success":
		scr_add_text("Oh is that for me?");
		scr_add_text("I was just thinking I wanted some of those.");
		scr_add_text("Thank you! You're too sweet.");
		break;
	case "Claude-gift-success":
		scr_add_text("A gift for me?");
		scr_add_text("Thanks! I appreciate it a lot.");
		break;
	case "Nelu-gift-success":
		scr_add_text("WOWWWW. For meeeeeeeeee?");
		scr_add_text("Thank you so much!!!!!");
		scr_add_text("You're the best!");
		break;
	case "Lola-gift-success":
		scr_add_text("...");
		scr_add_text("Seems like Lola liked the gift.");
		break;
		
	// -------------------- Text for Warnings/Hints --------------------- //
	
	case "warn-no-money":
		scr_add_text("I don't have enough money for that.");
		break;
	case "warn-cannot-use-item":
		scr_add_text("I can't use that item right now.");
		break;
	case "warn-transformation-time-out":
		scr_add_text("I lost some energy while rushing home.");
		scr_add_text("I should be aware of the transformation time next time in town...");
		break;
	case "warn-inventory-full":
		scr_add_text("My bag is full.");
		break;
	case "warn-no-item-to-sell":
		scr_add_text("I am out of things to sell.");
		break;
	case "warn-no-item":
		scr_add_text("I don't have that item.");
		break;
	case "gift-no":
		break;
		
	
	//Decorative Item texts
	case "fruitBox":
		scr_add_text("A lot of fruit and vegetables.")
		scr_add_text("Lavana sells those.")
		break;
	case "bookShelf":
		scr_add_text("Reading is good.")
		scr_add_text("But those are human books but I can't read human language :(.")
		break;
	case "potionShelf":
		scr_add_text("Many Potions are available in this shop.")
		scr_add_text("But they are for human.")
		break;
	case "flower":
		scr_add_text("Beatiful flowers make me happy ~(^_^)~")
		break;
	
	
	// ---------- Text for Slime Jelly conversion machine ------ //
	
	// NOT USED
	case "convert-wheat-to-jelly":
		scr_add_text("4 Wheat = 1 Slime Jelly");
		scr_add_text("You own " + string(get_item_count(global.item_list.wheat)) + " wheat.");
		scr_add_text("Continue?");
			scr_option("Yes", "wheat-yes");
			scr_option("No", "wheat-no");
		break;
		case "wheat-yes":
			// call conversion function
			scr_add_text("You got it dude.");
			return_value = 1;
			break;
		case "wheat-no":
			// exit
			scr_add_text("Bye then.");
			return_value = 0;
			break;
			
	// --------- Event texts --------- //
	case "night":
		scr_add_text("Night falls...");
		break;
	case "seed-machine-unlock":
		scr_add_text("Lavana sent me the seed machine.");
		scr_add_text("It can convert crops into seeds.");
		scr_add_text("Use it like using your food machine ^_^.")
		break;
	case "oven-unlock":
		scr_add_text("Finally my oven delivery arrived!");
		scr_add_text("Now I can cook advanced food in the oven ^_^.")
		break;
}

// NOT USED
show_debug_message("Return from game_text: " + string(return_value));
return return_value;

}