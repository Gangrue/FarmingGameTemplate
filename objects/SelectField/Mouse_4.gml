var max_option_val = array_length(options);
if (mouse_x > x + increaseClicker_x && mouse_x < x + increaseClicker_x + clicker_w) {
	if (mouse_y > y + increaseClicker_y && mouse_y < y + increaseClicker_y + clicker_h) {
		selected_val++;
		if (selected_val >= max_option_val) {
			selected_val = 0;
		}
	}
}
if (mouse_x > x + decreaseClicker_x && mouse_x < x + decreaseClicker_x + clicker_w) {
	if (mouse_y > y + decreaseClicker_y && mouse_y < y + decreaseClicker_y + clicker_h) {
		selected_val--;
		if (selected_val < 0) {
			selected_val = max_option_val-1;
		}
	}
}
selected_text = options[selected_val];