/// @description for gold_and_days when 'z' is pressed
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// if unlocked from days but still need purchase
if (global.gold >= 50 && unlock_method=="gold"){
	if (gold_and_days && global.days >= gold_and_days_daycount){
		create_confirmationbox("money-unlock-confirm", noone, id);
	}
} else if (unlock_method=="gold") {
	create_textbox("cant-afford-plot");		
}




