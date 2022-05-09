

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
	draw_text(700,200,"Welcome! You are a slime...")
	draw_text(700,250,"you have been banished to the human world")
	draw_text(700,300,"You must now learn to survive")
	draw_text(700,350,"by farming and getting to know this world and its people.")
	
	draw_text(590,400,"Press X to continue the tutorial")
	draw_text(570,425,"Press S to skip the tutorial")
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

if curr_page == 1 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Use Z to interact with objects around you")
	draw_text(610,300,"and to continue dialog.")
	draw_text(610,400,"Use X to cancel/exit menus and shops OR to continue tutorial")
	draw_text(610,500,"For items like seeds and crops ")
	draw_text(610,500,"use the inventory # associated with that crop to use")
}


if curr_page == 2 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Use E to view your inventory and status")
	draw_text(610,300,"Use A and D to switch between tabs")
	draw_text(610,400,"You can store 6 items, more storage is provided in the chest")
}

if curr_page == 3 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Who are the villagers of this town?")
	draw_text(610,300,"You may want to get to know them")
	draw_text(610,400,"and perhaps they shall share secrets/rewards with you")
}

if curr_page == 4 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Achievements are very important to finish")
	draw_text(610,300,"There may be someone tracking your progress..")

}

if curr_page == 5 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"The village is great for buying and selling your things..")
	draw_text(610,200,"You'll be transformed into a human when you're in the village")
	draw_text(610,200,"Make every second count")
	draw_text(610,300,"Your magic as a human may be very limited")
	draw_text(610,300,"and the cooldown to trasnform again can be quite long")
}

if curr_page == 6 {
	draw_sprite(spr_tutorial_menu,0,145,50);
	draw_set_font(ft_tutorial)
	draw_set_color(c_black)
	draw_text(610,200,"Lastly,keep that energy bar up")
	draw_text(610,200,"You may only consume BLUE foods")
	draw_text(610,300,"You can use the machine to convert crops into blue jelly")
	draw_text(610,300,"Would you like more guidance?")
	draw_text(610,300,"X for Yes, S for No.")
}


draw_set_alpha(1)