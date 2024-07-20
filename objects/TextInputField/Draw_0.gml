var c = c_black;
var c2 = c_white;
draw_rectangle_color(x,y,x+input_width,y+input_height,c,c,c,c,false);
draw_rectangle_color(x,y,x+input_width,y+input_height,c2,c2,c2,c2,true);
draw_text_color(x+2,y+4,input_text,c2,c2,c2,c2,1);
if (draw_cursor_line) {
	draw_text_color(x+2+string_width(input_text),y+4,"|",c2,c2,c2,c2,1);
}