/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// if unlocked from days but still need purchase
if (global.gold >= 50 && unlock_method=="gold"){
	if (gold_and_days && global.days >= gold_and_days_daycount){
		create_confirmationbox("money-unlock-confirm", noone, id);
	}
}




