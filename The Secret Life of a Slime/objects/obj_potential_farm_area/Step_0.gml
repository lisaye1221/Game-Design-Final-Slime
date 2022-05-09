/// @description Insert description here
// You can write your code in this editor

if (gold_and_days && global.days >= gold_and_days_daycount && !shown_text){
	prompt_text = "Unlock for 50G";
	create_textbox("day-unlocked-money");		
	shown_text=true;
}
