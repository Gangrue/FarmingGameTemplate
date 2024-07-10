if (keyboard_check_pressed(ord("T"))) {
	time_pause = !time_pause;
}
if (time_pause) exit;

//Increment time
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

if (draw_daylight) {
	#region Phases and variables
	var darks, colors, pstart, pend;
	if (hours > DAYPHASE.SUNRISE and hours <= DAYPHASE.DAYTIME) { //Sunrise
		darks = [max_darkness, 0.2];
		colors = [merge_color(c_black, c_navy, 0.3), c_orange];
		pstart = DAYPHASE.SUNRISE;
		pend = DAYPHASE.DAYTIME;
	}
	else if (hours > DAYPHASE.DAYTIME and hours <= DAYPHASE.SUNSET) { //Day
		darks = [0.2, 0, 0, 0, 0.2];
		colors = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart = DAYPHASE.DAYTIME;
		pend = DAYPHASE.SUNSET;
	}
	else if (hours > DAYPHASE.SUNSET and hours <= DAYPHASE.NIGHTTIME) { //Sunset
		darks = [0.2, max_darkness];
		colors = [c_orange, c_navy, merge_color(c_black, c_navy, 0.3)];
		pstart = DAYPHASE.SUNSET;
		pend = DAYPHASE.NIGHTTIME;
	}
	else { //Night time
		darks = [max_darkness];
		colors = [merge_color(c_black, c_navy, 0.3)];
		pstart = DAYPHASE.NIGHTTIME;
		pend = DAYPHASE.SUNRISE;
	}
	#endregion
	
	#region Alter Darkness and colors Depending on Time
	
	//Colors
	if (pstart == DAYPHASE.NIGHTTIME) { light_color = colors[0]; }
	else {
		var cc = ((hours - pstart) / (pend - pstart)) * (array_length(colors) - 1);
		var c1 = colors[floor(cc)];
		var c2 = colors[ceil(cc)];
		light_color = merge_color(c1, c2, cc-floor(cc));
	}
	//Darkness
	if (pstart == DAYPHASE.NIGHTTIME) { darkness = darks[0]; }
	else {
		var dd = ((hours - pstart) / (pend - pstart)) * (array_length(darks) - 1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = merge_number(d1, d2, dd-floor(dd));
	}
	#endregion
}

#region Cycle check
if (hours >= 24) {
	update_world_enemy_count();
	room_adjust_enemies_on_load();
	if (slept_in_bed) {
		seconds = 6 * 60 * 60; // 6 AM
		slept_in_bed = false;
		load_day();
	}
	else {
		seconds = 0;
	}
	day += 1;
	with(CropManager) {
		event_perform(ev_other, ev_user1);
	}
	if (day > 30) {
		day = 1;
		season += 1;
		if (season > 4) {
			year += 1;
		}
	}
}
#endregion