
if(keyboard_check(ord("M")) && keyboard_check(ord("A")) && keyboard_check(ord("O"))){
	instance_destroy(obj_textbox);
	global.unpause_signal = true;	
}
