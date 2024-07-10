if (!is_doing_action && !is_hit && !is_attacking) {
	is_moving = player_movement();
	player_interacting();
	player_pickingUp_heavyObjects();
	player_check_if_in_water();
	player_check_exhaustion();
}
player_attacking_animation();
attackable_knockback();