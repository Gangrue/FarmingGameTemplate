if (instance_exists(Player)) {
	if (point_distance(x,y,Player.x,Player.y) < 128) {
		givingItem = true;
		player_start_showing_off_reward(rewardSprite, rewardSpriteIndex);
	}
}
