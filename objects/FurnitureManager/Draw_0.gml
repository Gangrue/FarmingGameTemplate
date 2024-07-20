if (instance_exists(Player)) {
	if (Player.is_picking_up && instance_exists(Player.picked_up_object)) {
		var c = c_lime;
		if (!can_place) {
			c = c_red;
		}
		draw_sprite_ext(Player.picked_up_object.sprite_index, 0, placement_x, placement_y,1,1,0,c,0.5);
	}
}