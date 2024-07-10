if (keyboard_check_pressed(ord("T"))) {
	debug = !debug;
}

if (keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(vk_end)) {
	game_end();
}