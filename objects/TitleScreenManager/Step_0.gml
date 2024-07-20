if (isStartingNewGame) {
	TitleScreenCamera.target_x = room_width;
	TitleScreenCamera.target_y = 0;
}
else {
	TitleScreenCamera.target_x = 0;
	TitleScreenCamera.target_y = 0;
}

if (isLoadingGame) {
	GameManager.isLoadingGame = true;
	instance_destroy();
}