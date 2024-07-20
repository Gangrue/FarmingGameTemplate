if (is_building) {
	var c = c_red;
	var closest_pos = get_closest_affectable_position(mouse_x,mouse_y);
	var _x = closest_pos._x;
	var _y = closest_pos._y;
	if (can_build(crafting_index)
		&& check_if_sprite_collides(crafting_slot[crafting_index][CRAFT_PARAMETER.SPRITETOSHOW], closest_pos._x, closest_pos._y, Wall)
		&& check_if_sprite_collides(crafting_slot[crafting_index][CRAFT_PARAMETER.SPRITETOSHOW], closest_pos._x, closest_pos._y, Player)) {
			
		c = c_lime;
	}
	draw_sprite_ext(crafting_slot[crafting_index][CRAFT_PARAMETER.SPRITETOSHOW],0,_x,_y,1,1,0,c,0.5);
}