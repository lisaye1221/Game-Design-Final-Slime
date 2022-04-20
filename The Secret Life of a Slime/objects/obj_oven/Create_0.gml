/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//prompt text
prompt_text_lst = ["cook food?",
	"converting...", 
	"collect the "+convert_to.name+"?",
	"repair machine? (1 parts) ("+ string(ENERGY_COST_TO_REPAIR) +" energy)",
	"repairing..."]
which_text = 0;

exclamation = instance_create_layer(x+sprite_width-sprite_xoffset,y-sprite_yoffset,"Instances",obj_exclamation)
uses_inventory = false;
inv_slot = 0;

ds_map_add(obj_game_manager.objects_with_daily_events,id,0);
deactive_persistent_interactable(id)