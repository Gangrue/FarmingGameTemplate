if (draw_daylight) {
	draw_set_alpha(darkness);
	draw_rectangle_color(0,0,guiWidth,guiHeight,light_color,light_color,light_color,light_color,false);
	draw_set_alpha(1);
}
var c = c_yellow;
draw_text_color(10,10,string(seconds), c,c,c,c, 1);
draw_text_color(10,30,string(minutes), c,c,c,c, 1);
draw_text_color(10,50,string(hours), c,c,c,c, 1);
draw_text_color(10,70,string(day), c,c,c,c, 1);
draw_text_color(10,110,string(season), c,c,c,c, 1);
draw_text_color(10,110,string(year), c,c,c,c, 1);