/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_speed = 0;
interval = MAX_GROWTH_TIME / (image_number - 1);
ready = false;
prompt_text = "The "+harvest.name+" is still growing.";

interactable = true;
growing = false;
grow_time_remaining = 0;
farm_plot = noone;
solid = true;