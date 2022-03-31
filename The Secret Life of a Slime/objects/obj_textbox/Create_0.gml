//** Textbox Parameters ** //
textbox_width = room_width;
textbox_height = 200;

text_border = 10;
line_margin = 12;
line_width = textbox_width - (2 * text_border);

// ** Text Parameter ** //

// which page of dialogue we are on
page = 0;
// holds the text of dialogue
text[0] = "";
// indicates length of text
text_length[0] = string_length(text[0]);
// how many char are being drawn currently
draw_char = 0;
text_speed = 1;

// flag for setting up things before drawing text
setup = false

