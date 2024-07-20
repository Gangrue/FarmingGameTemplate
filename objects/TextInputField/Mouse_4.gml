with(TextInputField) {
	selected = false;
}
GameManager.isTyping = false;
if (mouse_x > x && mouse_x < x + input_width) {
	if (mouse_y > y && mouse_y < y + input_height) {
		selected = true;
		GameManager.isTyping = true;
	}
}