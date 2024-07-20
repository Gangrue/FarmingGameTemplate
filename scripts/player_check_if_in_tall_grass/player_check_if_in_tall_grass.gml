// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_check_if_in_tall_grass(){
	if (place_meeting(x,y,TallGrass)) {
		if (check_status(STATUS.SNEAKING)) {
			remove_status(STATUS.SNEAKING);
			add_status(STATUS.GREATERSNEAKING);
		}
		is_in_tall_grass = true;
	}
	else if (is_in_tall_grass) {
		is_in_tall_grass = false;
		if (check_status(STATUS.GREATERSNEAKING)) {
			remove_status(STATUS.GREATERSNEAKING);
			add_status(STATUS.SNEAKING);	
		}
	}
}