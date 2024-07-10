if (!showing_dialogue) {
	var dcount = dialogue.count();
	if (dcount <= 0) {
		with(target_npc) {
			is_doing_action = false;
		}
		with(starting_user) {
			is_doing_action = false;
			is_talking = false;
		}
		instance_destroy();
		return;
	}
	
	current_dialogue = dialogue.pop();
	showing_dialogue = true;
} else {
	if (waitTimer < waitTimerMax) {
		waitTimer++;
	}
	if (keyboard_check_released(key_next) && waitTimer>=waitTimerMax) {
		showing_dialogue = false;
		alpha = 0;
		waitTimer=0;
		if (current_dialogue.decisions != undefined) {
			script_execute(current_dialogue.decisions[current_selected_decision].optionScript);
		}
	}
	if (current_dialogue.decisions != undefined) {
		if (keyboard_check_released(key_up)) {
			current_selected_decision--;
			if (current_selected_decision <= 0) current_selected_decision = 0;
		}
		else if (keyboard_check_released(key_down)) {
			current_selected_decision++;
			var decision_length = array_length(current_dialogue.decisions);
			if (current_selected_decision > decision_length - 1) current_selected_decision = decision_length-1;
		}
	}
}