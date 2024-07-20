if (!is_doing_action && !is_hit && !is_attacking && !CraftingManager.is_building) {
	is_moving = player_movement();
	is_sneaking = player_sneaking();
	player_foraging();
	player_interacting();
	player_pickingUp_heavyObjects();
	player_check_if_in_water();
	player_check_if_in_tall_grass();
	player_check_exhaustion();
	
	if (is_moving) {
		player_check_change_room();
	}
}
player_showing_off_reward();
player_attacking_animation();
attackable_knockback();