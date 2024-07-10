if (instance_exists(Player)) {
	if (Player.is_picking_up) {
		var len_x = lengthdir_x(FURNITURE_PLACEMENT_DISTANCE, Player.Direction);
		var len_y = lengthdir_y(FURNITURE_PLACEMENT_DISTANCE, Player.Direction);
		var closest_pos = get_closest_affectable_position(Player.x + len_x, Player.y + len_y);
		placement_x = closest_pos._x;
		placement_y = closest_pos._y;
		can_place = true;
		if (instance_exists(Player.picked_up_object)) {
			can_place = check_if_sprite_collides(Player.picked_up_object.sprite_index, closest_pos._x, closest_pos._y, Wall);
			if (can_place) {
				can_place = check_if_sprite_collides(Player.picked_up_object.sprite_index, closest_pos._x, closest_pos._y, Player);
			}
		}
	}
}