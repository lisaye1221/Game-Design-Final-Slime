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
			scr_add_text("Use arrow keys to move. Use Z to interact with objects and people. Z for confirming, X for canceling.");
			scr_add_text("Use E to access your status and your inventory. Use the left and right shift key to navigate through the tabs.");
			scr_add_text("You can only hold 6 items at once. Extra storage is provided in the chest of your home.")
			scr_add_text("Use the 1-6 keys to use the corresponding items in your inventory. This includes eating or planting.")
			scr_add_text("The game ends when you starve and die. Keep your energy up. You can only consume BLUE food.");
			scr_add_text("Seeds are required to grow crops. Machines can convert them to BLUE slime jelly.");
			scr_add_text("Machines can break upon usage and can be repaired with machine parts, which can be bought in town.");
			scr_add_text("There are many stores in town. Everything can be bought or sold. The market refreshes its item stock daily.");
			scr_add_text("When accessing town, you are transformed into a human for " + string(obj_game_manager.TOWN_TIME_LIMIT) + " seconds and will be forced back home afterwards.");
			scr_add_text("There will be a "+ string(obj_game_manager.TRANSFORMATION_COOLDOWN_TIME) +" second cooldown til you can enter town again.");
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
		scr_add_text("Hello, good to see you!");
		scr_add_text("We have some nice produce in stock today. Check them out!");
		break;
	case "Lavana-0-2":
		scr_add_text("Hello, how are you today?");
		scr_add_text("Come look at today's fresh produce!");
		break;
	case "Lavana-0-3":
		scr_add_text("Hello, great to see you!");
		scr_add_text("We have some nice produce in stock today. Check them out!");
		break;
	case "Lavana-1-1":
		scr_add_text("Hello, good to see you!");
		scr_add_text("Are you eating well?");
		scr_add_text("It's important to get your nutrients!");
		break;
	case "Lavana-1-2":
		scr_add_text("Hello! How are you doing today?");
		scr_add_text("The tomatos are super fresh today, you should try them!");
		break;
	case "Lavana-1-3":
		scr_add_text("Hello again! Nice weather outside right?");
		scr_add_text("How are you doing? How is that seed machine I sent you working?");
		scr_add_text("Good! Glad you find it helpful.");
		scr_add_text("I couldn't use it anyways and it was just sitting there. Just don't let Claude know haha, he'd say I'm ruining his business!");
		break;
	case "Lavana-2-1":
		scr_add_text("Oh hey! It's you again!");
		scr_add_text("Always good to see you.");
		scr_add_text("You've been in town for quite a bit now right?");
		scr_add_text("Haha you fit right in! Unlike the girl living down there, I don't think I've ever see her during the day.");
		break;
	case "Lavana-2-2":
		scr_add_text("Hey! Good to see you, how are you today?");
		scr_add_text("It's a nice day today isn't it? Hope your farm is doing well!");
		scr_add_text("Don't overwork yourself. If you're feeling lazy, you can always come to me for some fresh produce.");
		break;
	case "Lavana-2-3":
		scr_add_text("Hey! How are you?");
		break;
	case "Lavana-2-4":
		scr_add_text("Oh hey! Nice to see you again!");
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
		scr_add_text("Hey, great to see you again!");
		scr_add_text("Coming in for some seeds? Hope your farm is doing alright!");
		scr_add_text("Oh yea, I've stocked some new seeds, have you tried them yet?");
		break;
	case "Claude-1-2":
		scr_add_text("Hey friend, good to see you!");
		break;
	case "Claude-1-3":
		scr_add_text("Hey friend, how's it going?");
		break;
	case "Claude-2-1":
		scr_add_text("Hello my friend!");
		scr_add_text("How's your farm doing? My seeds grow well don't they?");
		scr_add_text("It must be quite a lot of work to keep a farm.");
		scr_add_text("Well, if you want a break, take a walk in town or the forest nearby!");
		break;
	case "Claude-2-2":
		scr_add_text("Glad to see you again my friend! ");
		scr_add_text("Here to get some seeds or some machine parts again?");
		scr_add_text("What do you even do with the machine parts, just curious?");
		scr_add_text("Wow you fix things yourself? That's incredible! You've got to teach me some day.");
		break;
	case "Claude-2-3":
		scr_add_text("Hey my friend! How's it going?");
		scr_add_text("Taking a break from your farm chores?");
		scr_add_text("You know, I like to sit by that lake down south of town and chill there sometimes. You should try it!");
		scr_add_text("Speaking of which, you know that house down there? Everybody says they never seen the person who lives there.");
		scr_add_text("But I saw her the other day coming out the house going somewhere, yep a girl.");
		scr_add_text("Lavana likes to judge her but some folks are just not the people type of people.");
		scr_add_text("Anyways that girl seems pretty busy, but I'm surprised she never come to us to buy things. Where does she get her stuff?");
		scr_add_text("Oh well. If you want to go say hi, I know you like doing that, maybe you can go try at night, that's when I saw her.");
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
		scr_add_text("My good friend! Hello hello!");
		scr_add_text("Are you here to see me?");
		break;
	case "Nelu-1-2":
		scr_add_text("My friend! Mi amiga! Wo de peng you! Boku no tomodachi!"); 
		scr_add_text("You have things for me again? I'll make ya RICH."); 
		break;
	case "Nelu-1-3":
		scr_add_text("Hiiiiiiiiii");
		scr_add_text("Slow day today? Maybe I should ditch the shop and go take a walk with you!!!");
		scr_add_text("Haha just kidding, I need to stay here and make bank, maybe another day though.");
		break;
	case "Nelu-2-1":
		scr_add_text("Oooo it's you!");
		scr_add_text("Wasssssuuupppppppppppppppp");
		scr_add_text("How ya doing? Eating well? Sleeping well? Dreaming well?");
		scr_add_text("LET ME TELL YOU!");
		scr_add_text("The other day I was taking a break from the shop and taking an evening stroll south of town.");
		scr_add_text("You know that house down there? Whoever lives there is like NEVER there. Wonder what they be up to.");
		scr_add_text("Anyways the house is pretty dark but I saw some flicker of lights. No clue what the HECK that was.");
		scr_add_text("That's pretty spooky wooky if you ask me, I booked it out of there asap.");
		break;
	case "Nelu-2-2":
		scr_add_text("");
		break;
	case "Nelu-2-3":
		scr_add_text("2-3");
		break;
	case "Nelu-2-4":
		scr_add_text("2-4");
		break;
	case "Nelu-3-1":
		scr_add_text("HI BESTIE!!!");
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
		scr_add_text("Oh, it's you.");
		break;
	case "Lola-1-2":
		scr_add_text("You love coming here don't you?"); 
		break;
	case "Lola-1-3":
		scr_add_text("Thought you would be coming.");
		break;
	case "Lola-2-1":
		scr_add_text("Oh, it's you. Hello.");
		break;
	case "Lola-2-2":
		scr_add_text("Oh hey, slow day today?");
		break;
	case "Lola-2-3":
		scr_add_text("Oh hey, how are you doing?");
		break;
	case "Lola-2-4":
		scr_add_text("Oh hey, here to see me again?");
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
		scr_add_text("....");
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
	case "warn-out-of-stock":
		scr_add_text("Looks like it's out of stock right now. I should come back another time.");
		break;
	case "warn-no-item":
		scr_add_text("I don't have that item.");
		break;
	case "gift-no":
		break;
	case "warn-use-number":
		scr_add_text("Use number keys to indicate which item to use for this.");
		break;
	case "warn-cannot-plant":
		scr_add_text("I can't plant that.");
		break;
	case "warn-cannot-convert":
		scr_add_text("This machine can't convert that. It seems like it only takes in crops that are not blue.");
		break;
	case "warn-cannot-convert-to-seeds":
		scr_add_text("This machine can't convert that. It seems like it only takes in crops.");
		break;
		
	
	//Decorative Item texts
	case "fruitBox":
		scr_add_text("A lot of fruit and vegetables.")
		scr_add_text("Lavana sells those.")
		break;
	case "bookShelf":
		scr_add_text("Reading is good. So they say.")
		scr_add_text("But those are human books but I can't read human language :(.")
		break;
	case "potionShelf":
		scr_add_text("Many Potions are available in this shop.")
		scr_add_text("But they are for human.")
		break;
	case "flower":
		scr_add_text("Beatiful flowers make me happy ~(^_^)~")
		break;
	
			
	// --------- Event texts --------- //
	case "night":
		scr_add_text("Night falls...");
		break;
	case "seed-machine-unlock":
		scr_add_text("Lavana sent me the seed machine.");
		scr_add_text("She said it can convert crops into seeds.");
		scr_add_text("Seems like I can use it like how I use the other machine ^_^.")
		break;
	case "oven-unlock":
		scr_add_text("Finally my oven delivery arrived!");
		scr_add_text("Now I can cook some scrumptious food in the oven ^_^.")
		break;
	case "first-time-in-town":
		scr_add_text("Wow! This place looks so different from back home.");
		scr_add_text("I used my magic to turn into a human for now.");
		scr_add_text("Not really in the mood to get hunted down today.");
		scr_add_text("The transformation is limited, I should watch the time[red bar on the left].");
		scr_add_text("Looks like there are a bunch of shops I can check out. Maybe I should get to know the people in town too.");
		scr_add_text("Time to do human stuff!");
		break;
		
	// --------- Ending texts --------- //
	case "ending-normal":
		scr_add_text("Hello. ");
		scr_add_text("I have been sent here to come check up on you.");
		scr_add_text("Looks like you managed to survive in the human world for a good amount of time.");
		scr_add_text("How does it feel here?");
		break;
		
}// end of switch
}// end of scr_game_text()