/// @description Insert description here
// You can write your code in this editor

depth = -9997;

draw_set_font(ft_status);

persistent = true;

parts_of_day = ["Morning", "Afternoon", "Evening", "Night"];

cam = view_get_camera(0);

screen_width = camera_get_view_width(cam);
screen_height = camera_get_view_height(cam);

draw_set_font(ft_gui)
text_size = 1.3
energy_text_width = string_width("Energy: 100") * text_size
energy_text_height = string_height("Energy: 100") * text_size
