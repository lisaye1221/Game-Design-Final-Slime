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
		
	case "ending_town_lock":
		scr_add_text("There is somebody here to see me.");
		scr_add_text("I shouldn't go to town right now.");
		break;
	case "ending_farming_lock":
		scr_add_text("There is somebody here to see me.");
		scr_add_text("I shouldn't leave them hanging. I'll do this later.");
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
		scr_add_text("Hey! How are you? Are you eating well?");
		scr_add_text("On the topic of eating well, I have a confession to make.");
		scr_add_text("I'm not very good at cooking. Is that surprising?");
		scr_add_text("It's a shame, I can't put these produce to use! Are you good at cooking? You should teach me some time!");
		break;
	case "Lavana-2-4":
		scr_add_text("Oh hey! Nice to see you again!");
		scr_add_text("How's your farm doing? I hope it does so well that you don't even need to buy my produce haha!");
		break;
	case "Lavana-3-1":
		scr_add_text("Hi Hi!");
		scr_add_text("Taking a break? Oh yea, have you check out some of the food I've stocked yet?");
		scr_add_text("Actually, to be honest, I think the food you cook tastes better.");
		scr_add_text("Want to consider being my supplier? Haha, jk, you don't have time to be a full time chef right.");
		break;
	case "Lavana-3-2":
		scr_add_text("Oh heyyy!");
		scr_add_text("How are you doing? Isn't it nice outside?");
		scr_add_text("Speaking of which, I was taking a walk earlier and I finally met Lola, yep the girl who lives down there!");
		scr_add_text("I saw her by the river and introduced myself to her. Nice girl, just a bit shy. Well, I hope she's eating well!");
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
		scr_add_text("How's your farm doing? If you don't know what to grow, I suggest some good old wheat!");
		scr_add_text("Ok, or some radishes, Nelu told me they're profitable.");
		break;
	case "Claude-1-3":
		scr_add_text("Hey friend, how's it going?");
		scr_add_text("Want to go out for a walk later? No?");
		scr_add_text("Haha you're always in a rush, guess it's busy at the farm isn't it?");
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
		scr_add_text("Oh hey, if it isn't my friend! How ya doing?");
		scr_add_text("You caught me just in time, I just came back from Nelu's place.");
		scr_add_text("And did you know? Apparently he helped Lola settled in when she first came to town back then.");
		scr_add_text("Lola's the girl living down there if ya didn't know. Anyways, Nelu's always so helpful! Glad to have him here.");
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
		scr_add_text("Oh yea have you met Lola yet? That's the girl living south of town.");
		scr_add_text("She doesn't come out often, a reserved girl, with a personality for sure! But she's actually super sweet!");
		scr_add_text("Actually, she's originally not from this town just like you, but I helped her settled here. She didn't have a farm like you did.");
		scr_add_text("Let me know if you want to move here too haha! Maybe we can move your farm here? Then the products you sell me can be even more fresh!!");
		break;
	case "Nelu-2-2":
		scr_add_text("Heyyyyyyy wasssupppppp");
		scr_add_text("How's that recipe book I gave you? Hope it helped your cooking!");
		scr_add_text("What do I eat? Hmmm usually I eat a sandwhich, simple and quick!");
		scr_add_text("I am pretty busy despite what it looks like HAHA.");
		scr_add_text("What about you? What do you usually eat?");
		scr_add_text("Berries and jelly? Hmmmm, interesting, but those do taste good, can't blame you!" );
		break;
	case "Nelu-2-3":
		scr_add_text("Yooooooooo hiiiiiii");
		scr_add_text("What chu up to, wanna hang out later, I'm closing my shop earlier today.");
		scr_add_text("Whatttt come on, you're always busy! It's time to relax bro.");
		scr_add_text("Work hard, play hard, prioritize mental health, reject hustle culture, etc.");
		scr_add_text("Ok fine, next time, I'll drag you out of work!");
		break;
	case "Nelu-2-4":
		scr_add_text("Hey hey hey my friendo");
		scr_add_text("What are you up to today? Busy as usual?");
		scr_add_text("It sure isn't easy to keep up a farm, and I've got you to thank for bringing me all these products to trade!");
		scr_add_text("Well, just let me know if you need a hand, I'll hop right on over to water your crops or something.");
		break;
	case "Nelu-3-1":
		scr_add_text("HI BESTIE!!!");
		scr_add_text("Very random, are you...");
		scr_add_text("Nevermind haha! It doesn't matter. I mean it does, but it doesn't.");
		scr_add_text("What am I saying? I'm saying glad to see you!! Wanna hang out later?");
		break;
	case "Nelu-3-2":
		scr_add_text("Heyyyyyyy my besto friendo");
		scr_add_text("How's that recipe book I gave you some time ago? Putting it to good use?");
		scr_add_text("My favorite is probably the pumpkin pie! People don't usually make them unless it's Thanksgiving though.");
		scr_add_text("But I think it should be a year-round dessert! Pumpkin pie is the best pie, I will not participate in any debate.");
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
		var relation = get_relationship_tier(LAVANA);
		if relation == 2 or relation == 3 {
			scr_add_text("If I remember, Lavana wants a " + gift.name +".");
		}
		else {
			scr_add_text("If I remember, Lavana wants 3 " + gift.name +"s.");
		}
			scr_option("Gift", "Lavana-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Lavana-gift-yes":
				var gift = get_gift(LAVANA);
				var relation = get_relationship_tier(LAVANA);
				//if it's tier 2 or 3 only accept one of that item
				if relation == 2 or relation == 3 {
					if(has_item(gift)){
						lose_one_item(gift);
						gain_relationship_through_gift(LAVANA);
						scr_game_text("Lavana-gift-success");
					}	
					else{
						scr_game_text("warn-no-item");	
					}
				}
				//if it'st tier 1.. take 3 of the crops
				else{
					if(has_triple_item(gift)){
						lose_three_items(gift);
						gain_relationship_through_gift(LAVANA);
						scr_game_text("Lavana-gift-success");
					}	
					else{
						scr_game_text("warn-not-enough-items");	
					}
				}
						
				break;
	case "Claude-gift-1":
		scr_add_text("Maybe I can gift Claude something?");
		var relation = get_relationship_tier(CLAUDE);
		var gift = get_gift(CLAUDE);
		if relation == 2 or relation == 3 {
			scr_add_text("If I remember, Claude wants a " + gift.name +".");
		}
		else {
			scr_add_text("If I remember, Claude wants 3 " + gift.name +"s.");
		}
			scr_option("Gift", "Claude-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Claude-gift-yes":
				var gift = get_gift(CLAUDE);
				var relation = get_relationship_tier(CLAUDE);
				//if it's tier 2 or 3 only accept one of that item
				if relation == 2 or relation == 3 {
					if(has_item(gift)){
						lose_one_item(gift);
						gain_relationship_through_gift(CLAUDE);
						scr_game_text("Claude-gift-success");
					}	
					else{
						scr_game_text("warn-no-item");	
					}
				}
				//if it'st tier 1.. take 3 of the crops
				else{
					if(has_triple_item(gift)){
						lose_three_items(gift);
						gain_relationship_through_gift(CLAUDE);
						scr_game_text("Claude-gift-success");
					}	
					else{
						scr_game_text("warn-not-enough-items");	
					}
				}
				break;
	case "Nelu-gift-1":
		scr_add_text("Maybe I can gift Nelu something?");
		var relation = get_relationship_tier(NELU);
		var gift = get_gift(NELU);
		if relation == 2 or relation == 3 {
			scr_add_text("If I remember, Nelu wants a " + gift.name +".");
		}
		else {
			scr_add_text("If I remember, Nelu wants 3 " + gift.name +"es.");
		}
			scr_option("Gift", "Nelu-gift-yes");
			scr_option("Maybe next time...", "gift-no");
		break;
			case "Nelu-gift-yes":
				var gift = get_gift(NELU);
				var relation = get_relationship_tier(NELU);
				//if it's tier 2 or 3 only accept one of that item
				if relation == 2 or relation == 3 {
					if(has_item(gift)){
						lose_one_item(gift);
						gain_relationship_through_gift(NELU);
						scr_game_text("Nelu-gift-success");
					}	
					else{
						scr_game_text("warn-no-item");	
					}
				}
				//if it'st tier 1.. take 3 of the crops
				else{
					if(has_triple_item(gift)){
						lose_three_items(gift);
						gain_relationship_through_gift(NELU);
						scr_game_text("Nelu-gift-success");
					}	
					else{
						scr_game_text("warn-not-enough-items");	
					}
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
		scr_add_text("Oh is that for me?", "Lavana");
		scr_add_text("I was just thinking I wanted some of those.", "Lavana");
		scr_add_text("Thank you! You're too sweet.", "Lavana");
		break;
	case "Claude-gift-success":
		scr_add_text("A gift for me?", "Claude");
		scr_add_text("Thanks! I appreciate it a lot.", "Claude");
		break;
	case "Nelu-gift-success":
		scr_add_text("WOWWWW. For meeeeeeeeee?", "Nelu");
		scr_add_text("Thank you so much!!!!!", "Nelu");
		scr_add_text("You're the best!", "Nelu");
		break;
	case "Lola-gift-success":
		scr_add_text("....");
		scr_add_text("Seems like Lola liked the gift.");
		break;
		
	// --------------- Relationship Up Text --------------- //
	
	case "Lavana-relationship-1":
		scr_add_text("Oh hey, thanks for always coming by and saying hi.", "Lavana");
		scr_add_text("By the way, I have this machine that I have no idea how to use.", "Lavana");
		scr_add_text("It's supposed to convert crops into seeds, apparently.", "Lavana");
		scr_add_text("Since it's just sitting there and taking up space for me so why don't you have it?", "Lavana");
		break;
	case "Lavana-relationship-2":
		scr_add_text("Oh, forgot to tell you, but I actually offer a discount to regular customers.");
		scr_add_text("And since you've been coming here so often and are such a good friend");
		scr_add_text("I'll be offering you a discount from now on!");
		break;
	case "Lavana-relationship-3":
		scr_add_text("Oh yea by the way!");
		scr_add_text("Thanks for the gifts and telling me about cooking")
		scr_add_text("And thanks to you, I think my cooking is much better now!")
		scr_add_text("So I'll be carrying some dishes in the shop soon.")
		scr_add_text("Obviously won't be as good as what you make, but if you ever get lazy, you know where to come.")
		break;
	case "Claude-relationship-1":
		scr_add_text("What's up my friend! Thanks for stopping by again.");
		scr_add_text("Also want to let you know that I'll be stocking some new seeds very soon, don't forget to come check it out.");
		scr_add_text("Good luck on your farm!");
		break;
	case "Claude-relationship-2":
		scr_add_text("Oh right, before you head out.");
		scr_add_text("Need to let you know that I'll be offering you special prices from now on, just for you!");
		scr_add_text("Don't be shy! This is a thank you for being such a good buddy.");
		scr_add_text("You help me out, I help you out, am I right? Haha");
		scr_add_text("Oh AND I'll have some new seeds for you the next time I restock.");
		scr_add_text("It's like Christmas or something right?");
		break;
	case "Claude-relationship-3":
		break;
	case "Nelu-relationship-1":
		scr_add_text("Heyyyy, a bit random, but");
		scr_add_text("You don't carry a lot of stuff with you do you?");
		scr_add_text("Want a bigger bag? I have an extra. Here you go!");
		scr_add_text("No need to thank me! This way, you can carry more stuff over here to me haha!");
		break;
	case "Nelu-relationship-2":
		scr_add_text("Ooo before I forget, I got this recipe book recently.");
		scr_add_text("I know you like to cook right?");
		scr_add_text("You can have it! I have no use for this, I mean, do I look like I cook? HAHA");
		scr_add_text("Oh and if you don't have an oven yet, you can take my old one.");
		scr_add_text("No need to thank me! But if you do want to thank me, you can cook me something tasty next time!");
		break;
	case "Nelu-relationship-3":
		scr_add_text("Guess what I have.");
		scr_add_text("Another bag for you! Yep, this one is even bigger.");
		scr_add_text("Here you go, you need it more than me right? You're always bringing stuff back and forth from your farm.");
		scr_add_text("If things get too heavy you can ask me for help!");
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
		global.is_forced_back = false;
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
	case "warn-not-enough-items":
		scr_add_text("I don't have enough.");
		break;
	case "gift-no":
		break;
	case "warn-use-number":
		scr_add_text("Use number keys to indicate which item from inventory to use.");
		break;
	case "warn-plot-use-number":
		scr_add_text("A farm plot where I can plant things. [Use number keys to indicate which seed from inventory to plant]");
		break;
	case "warn-machine-use-number":
		scr_add_text("My slime jelly machine. [Use number keys to indicate which crops to convert.]");
		break;
	case "warn-seed-machine-use-number":
		scr_add_text("My seed machine. [Use number keys to indicate which crops to convert.]");
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
		scr_add_text("The transformation is limited, I should watch the time [red bar on the left].");
		scr_add_text("Looks like there are a bunch of shops I can check out. Maybe I should get to know the people in town too.");
		scr_add_text("Time to do human stuff!");
		break;
	case "tier1-food-recipes":
		scr_add_text("Oh look! Nelu sent me a cookbook with some new recipes for me to try.");
		scr_add_text("What a good friend :-)")
		break;
		
	// --------- Ending texts --------- //
	case "warn-slime-arrival":
		scr_add_text("?");
		scr_add_text("Looks like somebody is here.");
		break;
	case "ending-normal":
		scr_add_text("Hello. ", "Messenger");
		scr_add_text("I have been sent here to come check up on you.", "Messenger");
		scr_add_text("Looks like you managed to survive in the human world for a good amount of time.", "Messenger");
		scr_add_text("How does it feel here? I'd imagine it's not as comfortable as back home.", "Messenger");
		scr_add_text("I took the liberty to look around. We feel like you can do much better than this.", "Messenger");
		scr_add_text("How about this, once you make your farm flourish and master the ins and outs of the human world. We can consider letting you back to the slime world.", "Messenger");
		scr_add_text("Until then, good luck!", "Messenger");
		global.go_to_ending_cutscene = true;
		break;
	case "ending-betrayal":
		scr_add_text("Hello. ", "Messenger");
		scr_add_text("I have been sent here to come check up on you.", "Messenger");
		scr_add_text("Looks like you managed to survive in the human world for a good amount of time.", "Messenger");
		scr_add_text("Wow! You have been managing your little farm pretty well haven't you? Seems like you're not just surviving, you're flourishing! ", "Messenger");
		scr_add_text("Very well, very well. The king would be please to hear this.", "Messenger");
		scr_add_text("Since you're living so prosperously, we've been thinking about...expanding our world a little. And this area looks perfect for us. I mean, look at you!", "Messenger");
		scr_add_text("So, what do you say? Want to help us relocate these humans to make some space for us? As a reward, you'll be allow back to the slime world. ", "Messenger");
			scr_option("Accept", "ending-betrayal-accept");
			scr_option("Hesitate", "ending-betrayal-hesitate");
		break;
		case "ending-betrayal-accept":
			scr_add_text("I can finally go back! Sorry to the humans over at the town but I want to go home.");
			scr_add_text("I'll take on this deal.");
			scr_add_text("Very well! I knew you'll accept the deal. I'll be back again very soon with more details.", "Messenger");
			scr_add_text("See you soon.", "Messenger")
			global.go_to_ending_cutscene = true;
			break;
		case "ending-betrayal-hesitate":
			scr_add_text("Should I really accept this? This means we're taking over the town right? What would happen to the humans there?");
			scr_add_text("But if I accept this, then I can go home! ");
			scr_add_text("I see that you're hesitating. Do you feel bad for the humans? Don't. Are you even close with them?", "Messenger")
			scr_add_text("The minute they find out you are a slime, they'll hunt you down without a thought. So why feel bad for them?", "Messenger")
			scr_add_text("We're just trying to create some space for us to live, what's wrong with that?", "Messenger")
			scr_add_text("That's true... I guess I should accept the deal. I do want to go home.")
			scr_add_text("Very well! I knew you'll accept the deal. I'll be back again very soon with more details.", "Messenger");
			scr_add_text("See you soon.", "Messenger")
			global.go_to_ending_cutscene = true;
			break;
	case "ending-choice":
		scr_add_text("Hello. ", "Messenger");
		scr_add_text("I have been sent here to come check up on you.", "Messenger");
		scr_add_text("Looks like you managed to survive in the human world for a good amount of time.", "Messenger");
		scr_add_text("Wow! You have been managing your little farm pretty well haven't you? Seems like you're not just surviving, you're flourishing! ", "Messenger");
		scr_add_text("Very well, very well. The king would be please to hear this.", "Messenger");
		scr_add_text("Since you're living so prosperously, we've been thinking about...expanding our world a little. And this area looks perfect for us. I mean, look at you!", "Messenger");
		scr_add_text("So, what do you say? Want to help us relocate these humans to make some space for us? As a reward, you'll be allow back to the slime world. ", "Messenger");
			scr_option("Hesitate", "ending-choice-hesitate");
			scr_option("Decline", "ending-choice-decline");
		break;
		case "ending-choice-hesitate":
			scr_add_text("Should I really accept this deal? This means we're taking over the town right? What would happen to the humans there?");
			scr_add_text("Lavana, Claude, Nelu, and even Lola. They're all my friends. I can't let that happen to them.");
			scr_add_text("Even though I do want to go home, I can't betray my friends like that.");
			scr_add_text("I see that you're hesitating. Do you feel bad for the humans? Don't.", "Messenger")
			scr_add_text("The minute they find out you are a slime, they'll hunt you down without a thought. So why feel bad for them?", "Messenger")
			scr_add_text("We're just trying to create some space for us to live, what's wrong with that? Come on, make the right choice, help us out.", "Messenger")
				scr_option("Decline", "ending-choice-decline")
				scr_option("Accept", "ending-choice-accept")
			break;
		case "ending-choice-decline":
			scr_add_text("No! I can't do that. Those humans are my friends. ");
			scr_add_text("I can't help you kick them out of their home. That's messed up.");
			scr_add_text("Your friends? Look at you, made some human friends haven't you?", "Messenger")
			scr_add_text("You are so naive. Friends? Do you think those humans will still regard you as that when you show your true form, as a slime?", "Messenger")
			scr_add_text("Ok then, hope you don't regret your choice", "Messenger")
			scr_add_text("Since you love the humans so much, you don't need to come back to us right? You can stay here with your friends.", "Messenger")
			scr_add_text("Oh and I'll be taking away that transformation magic you've been using to disguise yourself. Let's see if those humans still see you as a friend HAHA.", "Messenger")
			scr_add_text("I'll be taking my leave now, enjoy yourself here, forever. Goodbye. ", "Messenger")
			scr_add_text("Wait!");
			global.go_to_ending_cutscene = true;
			obj_game_ending_manager.ending = ENDING_CHOICE;
			break;
		case "ending-choice-accept":
			scr_add_text("...");
			scr_add_text("He's right. Maybe I shouldn't feel bad. Maybe the humans are just nice to me because they don't know who I truly am.");
			scr_add_text("We also deserve space to live, space to live in the open, not secretly. ");
			scr_add_text("Ok... I'll take on your deal.");
			scr_add_text("Wonderful! I knew you would understand.", "Messenger");
			scr_add_text("I'll be back with more details soon. See you later.", "Messenger");
			global.go_to_ending_cutscene = true;
			obj_game_ending_manager.ending = ENDING_CHOICE_BETRAYAL;
			break;
	case "ending-special":
		scr_add_text("Hello. ", "Messenger");
		scr_add_text("I have been sent here to come check up on you.", "Messenger");
		scr_add_text("Looks like you managed to survive in the human world for a good amount of time.", "Messenger");
		scr_add_text("Wow! You have been managing your little farm pretty well haven't you? Seems like you're not just surviving, you're flourishing! ", "Messenger");
		scr_add_text("Very well, very well. The king would be please to hear this.", "Messenger");
		scr_add_text("Since you're living so prosperously, we've been thinking about...expanding our world a little. And this area looks perfect for us. I mean, look at you!", "Messenger");
		scr_add_text("So, what do you say? Want to help us relocate these humans to make some space for us? As a reward, you'll be allow back to the slime world. ", "Messenger");
			scr_option("Hesitate", "ending-special-hesitate");
			scr_option("Decline", "ending-special-decline");
		break;
		case "ending-special-hesitate":
			scr_add_text("Should I really accept this deal? This means we're taking over the town right? What would happen to the humans there?");
			scr_add_text("Lavana, Claude, Nelu, and even Lola. They're all my friends. I can't let that happen to them.");
			scr_add_text("Even though I do want to go home, I can't betray my friends like that.");
			obj_messenger_slime.special_ending_lola_text_id = "ending-special-hesitate-lola"
			break;
		case "ending-special-hesitate-lola":
			obj_player.sprite_index = spr_slime_right;
			global.should_lola_appear = true;
			scr_add_text("That's a quite an offer you're making. Don't you think that's not very nice to the humans?","???")
			scr_add_text("And who might you be- WAIT", "Messenger")
			scr_add_text("You.... Is that you? Princess?", "Messenger")
			scr_add_text("Where have you been! We've been searching for you all this time. Wait! It's the humans isn't it? They abducted you! ", "Messenger")
			scr_add_text("No, nobody abducted me, who do you think I am?", "Princess?")
			scr_add_text("I left myself, to see the human world myself. Was probably not a good idea since I had nothing on me.", "Princess?")
			scr_add_text("But it's the same human you loathe that helped me out, got me a place to live, to live amongst them.", "Princess?")
			scr_add_text("The humans... helped you?", "Messenger")
			scr_add_text("Without them, I probably would not be standing here right now. ", "Princess?")
			scr_add_text("[what is going on...]")
			scr_add_text("Haha, don't say you don't recognize me. Aren't we good friends?", "Princess?")
			scr_add_text("It's me, Lola.", "Lola")
			scr_add_text("LOLA? YOU'RE A SLIME????");
			scr_add_text("What's the big deal? You're a slime too.", "Lola(Slime)");
			scr_add_text("I-")
			scr_add_text("I must inform the king right away that you are well my princess. Let us return at once.", "Messenger")
			scr_add_text("No, you go ahead, I'll stay here. Oh, and tell father to cancel that ridiculous scheme. Nobody's getting driven out of their homes on my watch.", "Lola(Slime)")
			scr_add_text("If that is what you wish my princess.", "Messenger");
			global.go_to_ending_cutscene = true;
			break;
		case "ending-special-decline":
			scr_add_text("No! I can't do that. Those humans are my friends. ");
			scr_add_text("I can't help you kick them out of their home. That's not right.");
			scr_add_text("Your friends? Look at you, made some human friends haven't you?", "Messenger")
			scr_add_text("You are so naive. Friends? Do you think those humans will still regard you as that when you show your true form, as a slime?", "Messenger")
			scr_add_text("Ok then, hope you don't regret your choice", "Messenger")
			scr_add_text("Since you love the humans so much, you don't need to come back to us right? You can stay here with your friends.", "Messenger")
			scr_add_text("Oh and I'll be taking away that transformation magic you've been using to disguise yourself. Let's see if those humans still see you as a friend.", "Messenger")
			obj_messenger_slime.special_ending_lola_text_id = "ending-special-decline-lola"
			break;
		case "ending-special-decline-lola":
			obj_player.sprite_index = spr_slime_right;
			global.should_lola_appear = true;
			scr_add_text("No you won't.", "???")
			scr_add_text("And who might you be- WAIT", "Messenger")
			scr_add_text("You.... Is that you? Princess?", "Messenger")
			scr_add_text("Where have you been! We've been searching for you all this time. Oh I know! It's the humans isn't it? They abducted you! ", "Messenger")
			scr_add_text("No, nobody abducted me, who do you think I am?", "Princess?")
			scr_add_text("I left myself, to see the human world myself. Was probably not a good idea since I had nothing on me.", "Princess?")
			scr_add_text("But it's the same human you loathe that helped me out, got me a place to live, to live amongst them.", "Princess?")
			scr_add_text("The humans... helped you?", "Messenger")
			scr_add_text("Without them, I probably would not be standing here right now. ", "Princess?")
			scr_add_text("[what is going on...]")
			scr_add_text("Haha, don't say you don't recognize me. Aren't we good friends?", "Princess?")
			scr_add_text("It's me, Lola.", "Lola")
			scr_add_text("LOLA? YOU'RE A SLIME????");
			scr_add_text("What's the big deal? You're a slime too.", "Lola(Slime)");
			scr_add_text("I-")
			scr_add_text("I must inform the king right away that you are well my princess. Let us return at once.", "Messenger")
			scr_add_text("No, you go ahead, I'll stay here. Oh, and tell father to forget that ridiculous scheme. Nobody's getting driven out of their homes on my watch.", "Lola(Slime)")
			scr_add_text("If that is what you wish my princess.", "Messenger");
			global.go_to_ending_cutscene = true;
			break;
			
		case "ending-normal-cutscene":
			scr_add_text("Oh, looks like I'm out of seeds. I should go to town to get some.");
			scr_add_text("Maybe I should check on my machine too to see if I need any parts.");
			break;
		case "ending-betrayal-cutscene":
			scr_add_text(".....");
			scr_add_text("Sorry everybody.");
			scr_add_text("This is something I have to do. Please don't blame me.");
			break;
		case "ending-betrayal-human-dialogue":
			scr_add_text("Oh hi, what a cute slime! Hm, you look a little familiar", "Lavana");
			scr_add_text("Wait. What are you doing?", "Lavana");
			scr_add_text("WAIT NO.", "Lavana");
			scr_add_text("....");
			scr_add_text("Oh what do we have here? Hey there little one.", "Claude");
			scr_add_text("Hold up a minute, why are you doing that.", "Claude");
			scr_add_text("....");
			scr_add_text("Oh my god, if it isn't another slime! Hello, hello, are you lost as well?", "Nelu");
			scr_add_text("Wait, wait, wait, wait, WHAT ARE YOU DOING", "Nelu")
			scr_add_text("....");
			if(obj_game_ending_manager.has_met_Lola){
				scr_add_text("Hm, Lola is not here. Well, that's for the better.");
			}
			else{
				scr_add_text("Hm, whoever lives here is not here. Well, that's for the better.");
			}
			break;
		case "ending-betrayal-choice-human-dialogue":
			scr_add_text("Oh hi, what a cute slime! Wait, are you....?", "Lavana");
			scr_add_text("Wait. What are you doing?", "Lavana");
			scr_add_text("WAIT NO. Why would you do that?", "Lavana");
			scr_add_text("I thought we were friends.", "Lavana");
			scr_add_text("....");
			scr_add_text("I'm sorry Lavana.");
			scr_add_text("Oh what do we have here? Hey there little one.", "Claude");
			scr_add_text("Hold up a minute, you are....", "Claude");
			scr_add_text("...What are you doing?", "Claude");
			scr_add_text("....");
			scr_add_text("I'm sorry Claude.");
			scr_add_text("Oh my god, if it isn't another slime! Hello, hello, are you lost as well?", "Nelu");
			scr_add_text("Wait a minute.. it's you my friend isn't it! Haha, it makes sense now.", "Nelu");
			scr_add_text("Wait, wait, wait, wait, WHAT ARE YOU DOING", "Nelu")
			scr_add_text("....");
			scr_add_text("I'm so sorry Nelu.");
			if(obj_game_ending_manager.has_met_Lola){
				scr_add_text("Hm, Lola is not here. Well, that's for the better.");
			}
			else{
				scr_add_text("Hm, whoever lives here is not here. Well, that's for the better.");
			}
			break;
		case "ending-confess-dialogue-1":
			scr_add_text("I don't have my magic anymore...")
			scr_add_text("10 days has gone by. I tried to stay at the farm as much as I can, but I'm running out of supplies.")
			scr_add_text("Well I guess if I am staying in the human world forever, I can't hide forever like this")
			scr_add_text("I think it's time to confess to the humans my true identity")
			break;
		case "ending-confess-dialogue-2":
			scr_add_text("Oh look, they're all gathered over there. ")
			scr_add_text("Oh man, what if they kick me out of here because I'm a slime.")
			scr_add_text("Here goes nothing.")
			break;
		case "ending-confess-dialogue-3":
			scr_add_text("Um....Hi")
			scr_add_text("OMG LOOK A SLIME!", "Nelu")
			scr_add_text("oh no...maybe I should make a run for it...")
			scr_add_text("Calm down Nelu, we know you love slimes, but you're scaring the little one here.", "Claude")
			scr_add_text("How cute! Hi, do you need anything?", "Lavana")
			scr_add_text("Cute......?")
			scr_add_text("Wait a minute, you sound a bit familiar...", "Nelu")
			scr_add_text("Now that you mention it...", "Claude")
			scr_add_text("Oh um yea, it's me...if you can even recognize me like this...")
			scr_add_text("Sorry for hiding it, I am actually a slime, not a human. Please don't-")
			scr_add_text("OMG BESTIE WHERE HAVE YOU BEEN. We were soooooo worried about you. You didn't come to town for so long!!", "Nelu")
			scr_add_text("Yea! We were actually just talking about finding your farm to go check up on you.", "Lavana")
			scr_add_text("It's unusal of you not coming to town for so long. We thought something happened to you.", "Claude")
			scr_add_text("Yea... I lost my magic that turns myself into human.")
			scr_add_text("Why do you need to turn into a human to come to town?", "Lavana")
			scr_add_text("Is it because you can't carry stuff as a slime? We can all help you! Nelu's strong.", "Claude")
			scr_add_text("Oh. I thought you guys would hunt me down or something, cause you know, slimes.")
			scr_add_text("WHAT, we'd NEVER do something like that!", "Nelu")
			scr_add_text("Sorry if we made you thought that, it must've been a lot of work trying to hide yourself.", "Lavana")
			scr_add_text("Oh yea, Nelu'll hunt us down if we even have the thought of hunting a slime HAHA.", "Claude")
			scr_add_text("Oh, so, you guys don't mind, um, me?")
			scr_add_text("Oh come on, we're friends right?", "Lavana")
			scr_add_text("Don't mind not even one bit. In fact, I think you're cuter this way. Actually, can I ask you a favor?", "Nelu")
			scr_add_text("Can I touch you?", "Nelu")
			scr_add_text("[Face palm]", "Claude&Lavana")
			scr_add_text("No.")
			scr_add_text("Oh come on, not even a little squish? Fine. Ok what about that magic you're talking about. Teach me some magic!!", "Nelu")
			scr_add_text("Nelu, he said he lost the magic!", "Claude")
			scr_add_text("Oh.", "Nelu")
			break;
		case "ending-special-dialogue-1":
			scr_add_text("Um, is it ok if we just walk into town looking like this?");
			scr_add_text("Yea, why wouldn't it?", "Lola");
			scr_add_text("Back to your other voice...")
			scr_add_text("Well if anybody sees us, wouldn't they, um, try to do something about it?");
			scr_add_text("Oh please, still believing the bullshit from back home?", "Lola");
			scr_add_text("Don't you know them well enough to know they wouldn't hurt us? Plus, Nelu already knows I'm a slime, not sure about the others though.", "Lola");
			scr_add_text("NELU KNOWS WHAT. Wait why were you a human then all those times when I saw you.")
			scr_add_text("Just for fun. Don't you think I look cute as a human?", "Lola");
			scr_add_text("And, so that people from back home wouldn't recognize me I guess.", "Lola")
			scr_add_text("I thought you would knew. I mean did you not realize those potions I gave you were a little bit...too convenient?", "Lola")
			scr_add_text("Oh, well maybe you were a master in magic! Which I guess you kind of are.")
			scr_add_text("Haha, well, aren't you glad I stuck around? What would happen if I didn't stop that slime back there?", "Lola")
			scr_add_text("Stuck around?")
			scr_add_text("Yea, I was going to leave, onward to my next place. But, I think I like it here, and the people here.", "Lola")
			scr_add_text("What about you. You staying here? You can go home if you want, I'll let them let you back.", "Lola")
			scr_add_text("Me?")
			break
		case "ending-special-dialogue-2":
			scr_add_text("I think.");
			scr_add_text("I think I'll stay.");
			scr_add_text("Good choice! I think everybody would be happy to hear that too. Shall we go tell them the big news?", "Lola")
			break;
		case "ending-special-dialogue-3":
			scr_add_text("Just in time", "Lola");
			scr_add_text("Omg they're all there. Did you call them over?");
			scr_add_text("Yea, told them their dear friend has something to say.", "Lola")
			scr_add_text("...You knew I was going to decide to stay didn't you?")
			scr_add_text("Let's not worry about the details. Come on, let's go.", "Lola")
			break;
		case "ending-special-dialogue-4":
			scr_add_text("Hi everybody", "Lola");
			scr_add_text("Lola? You, you're in your slime form today? Is that ok? I mean super cute but what about your slimes back home", "Nelu");
			scr_add_text("Nah it's ok, they found out, it was for the better too.", "Lola")
			scr_add_text("Hold up, when did Lola turn into a slime?", "Claude")
			scr_add_text("I think she was originally a slime Claude. Wow, wait, this is actually so cool. Look at you, so cute!", "Lavana")
			scr_add_text("Is this what you called us here for? And is this your slime friend?", "Lavana")
			scr_add_text("Well, not quite. And this one here, I think you all know who this is. Take a closer look.", "Lola")
			scr_add_text("Um, hi Claude, hi Lavana, hi Nelu...well, this is more awkward than I thought.")
			scr_add_text("OMG WHAT,if it isn't my friendo!!! Wait, you too? Hahaha I kinda had an idea.", "Nelu")
			scr_add_text("Oh it's you! Hold up, why's everybody a slime. Can I be one too?", "Lavana")
			scr_add_text("If it isn't my friend! Ok, spill it Nelu, you're a slime too right?", "Claude")
			scr_add_text("Nope, I'm an elf.", "Nelu")
			scr_add_text("Why were you in human form anyways, same reason as Lola?", "Lavana")
			scr_add_text("Oh, is it because you can't carry stuff as a slime? We can all help you! Nelu's strong.", "Claude")
			scr_add_text("Haha, this one here thinks you guys would em down or something for being a slime.", "Lola")
			scr_add_text("WHAT, we'd NEVER do something like that!", "Nelu")
			scr_add_text("Haha, yea, I guess that was a silly thought. So... I guess you guys will see me more like this from now on.")
			scr_add_text("Hold up, don't tell me you were farming like that the whole time. Wow, how does that even work, you're amazing.", "Claude")
			scr_add_text("You guys are always welcome here! By the way, is the reason why your food taste so good magic? You should teach me-", "Lavana")
			scr_add_text("YES! Stay like that. And also, can I ask you something.", "Nelu")
			scr_add_text("Can I touch you? Just a little squish?", "Nelu")
			scr_add_text("No.")
			scr_add_text("He asked me the same thing before too.", "Lola")
			scr_add_text("Oh come on! I'll let you touch my ears or something.", "Nelu")
			scr_add_text("No? Fine! How about this, you should bring more slimes here [and maybe one of them will let me squish them]", "Nelu")
			scr_add_text("Hm, not a bad idea. Though I doubt any of them would let you squish them.", "Lola")
			scr_add_text("WHAT", "Nelu")
			scr_add_text("How about you turn into a slime and squish yourself?", "Claude")
			scr_add_text("It doesn't work like that!!!", "Nelu")
			break;
			
			
		
}// end of switch
}// end of scr_game_text()