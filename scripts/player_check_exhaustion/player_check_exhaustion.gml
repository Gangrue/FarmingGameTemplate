// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_check_exhaustion(){
	if (MP == MPMAX) return;
	var exhaustedLevel = 50;
	var extremelyExhaustedLevel = 20;
	if (MP <= 0) {
		MP = 0;
	}
	else if (MP < extremelyExhaustedLevel) {
		if (check_status(STATUS.EXHAUSTED)) {
			remove_status(STATUS.EXHAUSTED);
		}
		if (!check_status(STATUS.EXTREMELYEXHAUSTED)) {
			add_status(STATUS.EXTREMELYEXHAUSTED);
		}
	}
	else if (MP < exhaustedLevel) {
		if (!check_status(STATUS.EXHAUSTED)) {
			add_status(STATUS.EXHAUSTED);
		}
	}
	
	if (MP < exhaustedLevel && MP + MP_REGEN >= exhaustedLevel) {
		if (check_status(STATUS.EXHAUSTED)) {
			remove_status(STATUS.EXHAUSTED);
		}
	}
	if (MP < extremelyExhaustedLevel && MP + MP_REGEN >= extremelyExhaustedLevel)  {
		if (check_status(STATUS.EXTREMELYEXHAUSTED)) {
			remove_status(STATUS.EXTREMELYEXHAUSTED);
		}
		if (!check_status(STATUS.EXHAUSTED)) {
			add_status(STATUS.EXHAUSTED);
		}
	}
	//regen MP, for exhaustion.
	if (!is_moving) {
		MP += MP_REGEN;
		if (MP >= MPMAX) {
			MP = MPMAX;
		}
	}
}