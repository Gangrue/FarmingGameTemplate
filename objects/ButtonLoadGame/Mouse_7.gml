if (mouse_x > _x && mouse_x < _x + sprite_width) {
	if (mouse_y > _y && mouse_y < _y+sprite_height) {
		with(GameManager) {
			ini_open("loadGameOnNextStep" + ".ini");
			ini_write_real("0","0", "1");
			ini_close();
			game_load(current_save)
		}
	}
}