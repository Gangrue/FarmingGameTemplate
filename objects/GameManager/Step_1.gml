if (isTyping) {
	
}
else if (room != RoomTitleScreen) {
	if (keyboard_check_pressed(ord("T"))) {
		debug = !debug;
	}

	if (keyboard_check_pressed(vk_f4)) {
		window_set_fullscreen(!window_get_fullscreen());
	}

	if (keyboard_check_pressed(vk_end)) {
		game_end();
	}
}
if (isLoadingGame) {
	isLoadingGame = false;
	
	ini_open("loadGameOnNextStep" + ".ini");
	var shouldLoad = ini_read_real("0","0", "0");
	ini_close();
	if (shouldLoad == "1") {
		ini_open("loadGameOnNextStep" + ".ini");
		ini_write_real("0","0", "0");
		ini_close();
		load_game_state();
		load_saved_character(current_save);
	}
}
	