 /// @description draw interactable ellipse
// You can write your code in this editor
draw_set_alpha(.5)
draw_set_font(ft_dialog)
draw_ellipse_color(-.4*(x-sprite_xoffset+sprite_width/2)+bbox_left*1.4,-.2*(y-sprite_yoffset+sprite_height/2)+bbox_top*1.2,-.4*x+bbox_right*1.4,-.2*y+1.2*bbox_bottom, c_white,c_white,false)
draw_set_alpha(1)
draw_self()