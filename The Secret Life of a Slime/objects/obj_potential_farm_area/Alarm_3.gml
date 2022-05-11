/// @description day unlock text queue
// You can write your code in this editor
if (global.paused){
	alarm[3] = 1;
}
else{
	if (should_i_talk){
		create_textbox("day-unlocked-money");
	}
	prompt_text = "Unlock for 50G";
}