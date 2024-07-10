// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_step_movement_decide_state(){
	switch(current_state) {
		case ENEMYSTATE.CALM:
			if (target_is_visible()) {
				current_state = ENEMYSTATE.HOSTILE;
				move_timer = 0;
				attack_timer = 0;
			}
			
			move_timer++;
			if (move_timer >= move_timer_max) {
				Direction = random(360);
				is_moving = choose(true, false, false);
				move_timer = 0;
			}
		break;
		case ENEMYSTATE.HOSTILE:
			if (!instance_exists(target)) {
				current_state = ENEMYSTATE.LOSTSIGHT;
				return false;
			}
			if (target_is_visible()) {
				last_seen_target_x = target.x;
				last_seen_target_y = target.y;
				last_seen_target_timer = 0;
				var p_dist = point_distance(x,y,last_seen_target_x, last_seen_target_y);
				if (p_dist < enemy_attack_range_minimum) {
					current_state = ENEMYSTATE.TRYTOATTACK;
				}
			}
			last_seen_target_timer++;
			Direction = point_direction(x,y,last_seen_target_x,last_seen_target_y);
			is_moving = true;
			move_timer = 0;
			if (last_seen_target_timer >= last_seen_target_timer_max) {
				is_moving = false;
				current_state = ENEMYSTATE.LOSTSIGHT;
				last_seen_target_timer = 0;
			}
		break;
		case ENEMYSTATE.AFRAID:
			if (!instance_exists(target)) {
				current_state = ENEMYSTATE.LOSTSIGHT;
				return false;
			}
			if (target_is_visible()) {
				last_seen_target_x = target.x;
				last_seen_target_y = target.y;
				last_seen_target_timer = 0;
			}
			last_seen_target_timer++;
			Direction = point_direction(x,y,last_seen_target_x,last_seen_target_y)+180;
			is_moving = true;
			if (last_seen_target_timer >= last_seen_target_timer_max) {
				is_moving = false;
				current_state = ENEMYSTATE.LOSTSIGHT;
				last_seen_target_timer = 0;
			}
		break;
		case ENEMYSTATE.LOSTSIGHT:
			if (target_is_visible()) {
				last_seen_target_x = target.x;
				last_seen_target_y = target.y;
				last_seen_target_timer = 0;
				current_state = ENEMYSTATE.HOSTILE;
				move_timer = 0;
			}
			move_timer++;
			if (move_timer >= move_timer_max) {
				current_state = ENEMYSTATE.CALM;
				move_timer = 0;
				is_moving = false;
			}
		break;
		case ENEMYSTATE.TRYTOATTACK:
			if (!is_attacking) {
				attack_timer = 0;
				script_execute(enemy_attack_script);
				is_attacking = true;
			}
			if (is_attacking) {
				attack_timer++;
				if (attack_timer >= attack_timer_max) {
					is_attacking = false;
				}
			}
			if (target_is_visible()) {
				last_seen_target_x = target.x;
				last_seen_target_y = target.y;
				last_seen_target_timer = 0;
				var p_dist = point_distance(x,y,last_seen_target_x, last_seen_target_y);
				if (p_dist > enemy_attack_range_maximum) {
					current_state = ENEMYSTATE.HOSTILE;
				}
			}
		break;
		default:
		break;
	}
	
	return true;
}