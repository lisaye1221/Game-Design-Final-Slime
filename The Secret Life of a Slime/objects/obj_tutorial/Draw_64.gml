

draw_set_halign(fa_right)
if !b0 and global.tutorial_ended == false {
	draw_set_color(c_black)
	draw_set_alpha(0.50)
	draw_rectangle(0, 210 , 900, 250, false)
	
	draw_set_color(c_white)
	draw_set_alpha(0.7)
	draw_set_font(ft_tutorial)
	draw_set_valign(fa_bottom)
	draw_text(680,240,string(string_copy(sentence,0,100)))
	
}

if global.tut_keys_on and curr_page == 0 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_alpha(0.9)
	draw_set_font(ft_tutorial_header)
	draw_text(540,90,"TUTORIAL")
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(570,200,"Welcome! You are a slime...")
	draw_text(620,250,"you have been banished to the human world")
	draw_text(570,300,"You must now learn to survive")
	draw_text(700,350,"by farming and getting to know this world and its people.")
	
	draw_set_color(c_red)
	draw_text(590,420,"Press X to continue the tutorial")
	//draw_text(570,425,"Press S to skip the tutorial")
}


/*
if global.tut_keys_on and curr_page == 0 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_sprite(spr_tutorial_buttons_up,0,250,190);
	draw_sprite(spr_tutorial_buttons_down,0,250,270);
	draw_sprite(spr_tutorial_buttons_left,0,200,230);
	draw_sprite(spr_tutorial_buttons_right,0,300,230);
	
	draw_sprite(spr_tutorial_plain,0,430,237);
	draw_sprite(spr_tutorial_plain,0,580,237);
	
	draw_set_halign(fa_right)
	
	draw_set_alpha(0.9)

	draw_set_font(ft_tutorial_header)
	draw_text(540,90,"TUTORIAL")
	draw_set_font(ft_status)
	draw_text(458,255,"Z")
	draw_text(608,255,"E")

	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(335,330,"Use arrow keys")
	draw_text(305,350,"to move")

	draw_text(470,320,"Use Z")
	draw_text(500,340,"to interact")

	draw_text(620,320,"Use E")
	draw_text(670,340,"for inventory")
	draw_text(655,360,"and status")
	

	draw_text(590,400,"Press X to continue the tutorial")
	draw_text(570,425,"Press S to skip the tutorial")
	
	draw_set_font(ft_tutorial_small)
	draw_set_alpha(0.8)
	draw_set_color(c_red)
	draw_text(610,445,"(Recap is provided in the diary of your home)")
	

}
*/

if global.tut_keys_on and curr_page == 1 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_set_font(ft_tutorial_header)
	draw_text(490,90,"KEYS")
	
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	
	draw_text(315,310,"Use arrow keys")
	draw_text(285,330,"to move")
	
	draw_sprite(spr_tutorial_buttons_up,0,230,170);
	draw_sprite(spr_tutorial_buttons_down,0,230,250);
	draw_sprite(spr_tutorial_buttons_left,0,180,210);
	draw_sprite(spr_tutorial_buttons_right,0,280,210);
	
	draw_text(690,200,"Use Z to interact with objects")
	draw_text(690,220,"and to continue dialog.")
	draw_text(690,300,"Use X to cancel/exit menus and shops")
	draw_text(690,320,"and to continue tutorial")
	draw_text(690,400,"To use items")
	draw_text(690,420,"use the inventory # it's on")
}


if global.tut_keys_on and curr_page == 2 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_set_font(ft_tutorial_header)
	draw_text(550,90,"INVENTORY")
	
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Use E to view your inventory and status")
	draw_sprite(spr_slime_idle,0,435,260);
	draw_text(530,300,"You can store 6 items")
	draw_text(640,350,"More storage is provided in the chest of home")
}

if global.tut_keys_on and curr_page == 3 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_set_font(ft_tutorial_header)
	draw_text(590,90,"RELATIONSHIPS")
	
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(600,200,"Who are the villagers of this town?")
	
	
	draw_sprite(spr_npc,1, 360, 280);
	draw_sprite(spr_machineman,1, 410, 280);
	draw_sprite(spr_farmer_down,3, 460, 280);
	draw_sprite(spr_lola,1, 510, 280);
	
	draw_set_color(c_white)
	draw_text(365,280,"?")
	draw_text(413,280,"?")
	draw_text(465,280,"?")	
	draw_text(515,280,"?")
	draw_set_color(c_black)
	
	draw_text(580,350,"You may want to get to know them")
	draw_set_color(c_gray)
	draw_text(670,380,"and perhaps they shall share secrets/rewards with you")
}

if global.tut_keys_on and curr_page == 4 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	
	draw_set_font(ft_tutorial_header)
	draw_text(515,90,"ENERGY")
	
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(570,190,"Lastly,keep that energy bar up")
	draw_set_color(c_blue)
	draw_text(570,220,"You may only consume BLUE foods")
	draw_set_color(c_black)
	draw_set_color(c_black)
	draw_text(690,250,"You can use the machine to convert crops into blue jelly")
	draw_sprite(spr_machine,3, 320, 330);
	draw_text(400,310,"--->")
	draw_sprite(spr_item_wheat_menu,0, 420, 280);
	draw_text(520,310,"--->")
	draw_sprite(spr_item_jelly_menu,0, 520, 280);
	draw_set_color(c_gray)
	draw_text(660,360,"Someone will check back on your progress on day 42")
	
	draw_set_color(c_red)
	draw_text(565,420,"Would you like more guidance?")
	draw_text(525,440,"X for Yes, S for No.")
}


draw_set_alpha(1)