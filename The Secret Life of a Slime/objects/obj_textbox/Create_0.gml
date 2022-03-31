depth = -99999
//** Textbox Parameters ** //
textbox_width = 600;
textbox_height = 150;

text_border = 20;
line_margin = 25;
line_width = textbox_width - (2 * text_border);
textbox_spr = spr_textbox_bg;

// ** Text Parameter ** //

// which page of dialogue we are on
page = 0;
page_number = 0;
// holds the text of dialogue
text[0] = "";
// indicates length of text
text_length[0] = string_length(text[0]);
// how many char are being drawn currently
draw_char = 0;
text_speed = 1;

// flag for setting up things before drawing text
setup = false

