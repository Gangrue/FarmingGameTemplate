if (selected) {
	draw_cursor_timer--;
	if (draw_cursor_timer < 0) {
		draw_cursor_timer = 32;
		draw_cursor_line = !draw_cursor_line;
	}
}
else {
	draw_cursor_line = false;
}