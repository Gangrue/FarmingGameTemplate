// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_check_if_in_water(){
	var still_wet = wet_amount > 0;
	if (place_meeting(x,y,Water)) {
		wet_amount += 0.01;
		if (!is_in_water) {
			is_in_water = true;
			if (!check_status(STATUS.WET)) {
				add_status(STATUS.WET)
			}
		}
		if (wet_amount >= wet_amount_max) {
			wet_amount = wet_amount_max;
		}
	}
	else if (still_wet){
		if (is_in_water) {
			is_in_water = false;
		}
		wet_amount -= 0.01;
		if (wet_amount <= 0) {
			wet_amount = 0;
			if (still_wet) {	
				if (check_status(STATUS.WET)) {
					remove_status(STATUS.WET)
				}
			}
		}
	}
}