/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

prompt_text_lst[2] = "collect the "+convert_to.name+"?";
uses_inventory = false;

if (global.days>=global.advanced_machine_unlock_day){
	should_be_interactable = true;
}
