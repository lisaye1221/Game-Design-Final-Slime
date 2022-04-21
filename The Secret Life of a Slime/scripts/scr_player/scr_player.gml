// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// returns a new name for the player
function new_name(){
	
	first_names = ["Cyan", "Navy", "Indigo", "Beryl", "Lapis", 
			  "Lazuli", "Berry", "Cobalt", "Azure", "Aqua", 
			  "Pewter", "Peri", "Perse", "Teal", "Steel", 
			  "Sea", "Skye", "Robin", "Aster"];

	last_names = ["Cornflower", "Sapphire", "Cerulean", 
		     "Ultramarine", "Turquoise", "Aquamarine", 
			 "Heliotrope", "Midnight", "Periwinkle",
			 "Wedgwood", "Peacock", "Neptune", "Kingfisher",
			 "Mazarine", "Myosotis", "Agapanthus", 
			 "Bluebell", "Bluejay"];
	
	var _first = first_names[irandom_range(0, array_length(first_names)-1)];
	var _last = last_names[irandom_range(0, array_length(last_names)-1)];
	
	return _first + " " + _last;
	
}


