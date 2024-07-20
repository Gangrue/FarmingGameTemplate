if (mouse_x > _x && mouse_x < _x + sprite_width) {
	if (mouse_y > _y && mouse_y < _y+sprite_height) {
		with(TitleScreenManager) {
			isStartingNewGame = true;
		}
	}
}