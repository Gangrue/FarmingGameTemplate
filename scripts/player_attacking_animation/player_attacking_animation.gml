// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attacking_animation(){
	if (is_attacking) {
		attack_timer++;
		if (attack_timer > attack_timer_max) {
			is_attacking = false;
			attack_timer = 0;
		}
	}
}