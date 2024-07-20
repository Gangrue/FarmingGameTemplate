// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_sneaking(){
	var pressed_sneak = keyboard_check_pressed(ord("C"));
	if (pressed_sneak) {
		if (!is_sneaking) {
			//turn sneak off, remove effect.
			add_status(STATUS.SNEAKING);
		}
		else {
			//turn sneak on, add effect.
			remove_status(STATUS.SNEAKING);
			remove_status(STATUS.GREATERSNEAKING);
		}
		return !is_sneaking;
	}
	return is_sneaking;
}