isHovered = false;
if (mouse_x > _x && mouse_x < _x + sprite_width) {
	if (mouse_y > _y && mouse_y < _y+sprite_height) {
		isHovered = true;
	}
}
if (isHovered) {
	if (image_xscale < 1.2) {
		image_xscale += 0.02;
	}
}
else {
	if (image_xscale > 1) {
		image_xscale -= 0.02;
	}
}
image_yscale = image_xscale;

if (mouse_check_button_released(mb_left)) {
	if (mouse_x > _x && mouse_x < _x + sprite_width) {
		if (mouse_y > _y && mouse_y < _y+sprite_height) {
			var curSave = GameManager.current_save;
			save_character_creator(curSave);
			room_goto(InitializingRoom);
		}
	}
}