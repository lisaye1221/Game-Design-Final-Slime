b4 = true;
b5 = false;
b6 = false;
b7 = false;
b8 = false;
b9 = false;
b10 = false;
b11 = false;
b12 = false;
b13 = false;
b14 = false;
b15 = false;
b16 = false;
b17 = false;

energyLost = false;
berryOne = false;

y_val_pos_inventory_close = 70;
y_val_pos_inventory_open = 40;


s4 = ["This is your farm! Beautiful, isn't it? (X)",
"Uh-oh, looks like your energy has depleted (X)",
"Head over to the bushes and grab a berry"]

s5 = ["TA-DA! Look at the bottom, it's in your inventory now (X)",
"You can even press E to view your items"]

s6 = ["These are all your items, you can only hold 6 items at once (X)",
"You can store more items in the chest of your home (X) ",
"Press the arrow keys to take a closer look of these items"]

s7 =  ["Press A and D to navigate through the tabs"]

s8 = ["Now press E again to close your inventory"]

//first quest is to grab all 3 berries

s9 = ["In the human world, you must eat to stay alive (X)",
"You use 1-6 to use items in your inventory. Press 2 to eat that berry!"]

s10 = [
"Great job. Keep that energy bar up! Time is paused at the moment (X).",
"Notice, the berry don't heal much..and the bushes take LOOONG to produce (X)",
"That's why you need to get your hands slimey and grow real food yourself (X)",
"Head over to the farm area",]

s11 = ["Press 1 to grow some wheat. Let's use up all of our seeds"]

s12 = ["Crops take time to grow. I'll make them instantly grow for ya this time (X)", 
"Let's harvest all these crops"]

s13 = ["We slimes cannot consume non-blue items (X)",
"so we must use the machine to make it edible (X)",
"Go to the top machine and convert the wheat into blue slime jelly (use 1 & Z)"]

s14 = ["We wait... collect the jelly when it's done"]

s15 = ["Now, we have slime jelly! We can choose to eat or sell. (X)",
"More seeds can be bought in the village among many other things, refreshed daily (X)",
"You can also sell your goods and buy machine parts to repair your machines upon wear (X)",
"Listen.. no one should ever find out about your identity (X)", 
"You'll transform into a human when you're in town for " + string(obj_game_manager.TOWN_TIME_LIMIT) +"seconds (X)",
"and you'll only able to enter town again after the cooldown ends (X)",
"Good luck out there, my friend...(X)",
"I must leave now, they're sending me back. Time is ticking now (X).",""]

s16 = [""]

/*
extra = [
"We have an extra wheat. Let's turn that into seeds to grow more crops. (x)",
"Let's head over to the bottom machine and produce some seeds"]
*/



//you need 3 wheat to use machine


xy = [
"In the human world, you must eat to stay alive",
"So keep that energy bar up!",
"You can either pick some berries",
"Or grow wheat, which can be converted into Slime Jelly",
"Wheat cannot be eaten, so you must use that machine!",
"AND in order to thrive in this world of capitalism",
"You must sell your crops and goods to make money",
"for that,you must go out of town, BUT be careful",
"Those humans should NEVER find out about your identity",
"Good luck out there my friend",
"I must leave now, they're sending me back"]


sentences = ["I must leave now, they're sending me back","b","c"]

sentence_index = 0;

sentence = s4[sentence_index]