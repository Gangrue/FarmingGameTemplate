// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_showing_off_reward(){
	if (showing_off_reward) {
		showing_off_reward_timer++;
		is_doing_action = true;
		if (showing_off_reward_timer > showing_off_reward_timer_max) {
			showing_off_reward_timer = 0;
			showing_off_reward = false;
			is_doing_action = false;
		}
	}
}