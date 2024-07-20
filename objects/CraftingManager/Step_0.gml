if (is_building) {
	if (mouse_check_button_pressed(mb_right)) {
		crafting_index++;
		if (crafting_index >= craftable_item_length) {
			crafting_index = 0;
		}
	}
	
	if (mouse_check_button_pressed(mb_left)) {
		var closest_pos = get_closest_affectable_position(mouse_x,mouse_y);
			
		if (can_build(crafting_index) 
			&& check_if_sprite_collides(crafting_slot[crafting_index][CRAFT_PARAMETER.SPRITETOSHOW], closest_pos._x, closest_pos._y, Wall)
			&& check_if_sprite_collides(crafting_slot[crafting_index][CRAFT_PARAMETER.SPRITETOSHOW], closest_pos._x, closest_pos._y, Player)) {
			instance_create_depth(closest_pos._x, closest_pos._y, 0, crafting_slot[crafting_index][CRAFT_PARAMETER.OBJECTTOCRAFT]);
			var crafting_items = crafting_slot[crafting_index][CRAFT_PARAMETER.CRAFTITEM];
			var crafting_costs = crafting_slot[crafting_index][CRAFT_PARAMETER.CRAFTCOST];
			var crafting_items_length = array_length(crafting_items);
			for(var i=0; i<crafting_items_length; i++) {
				remove_item(crafting_items[i], crafting_costs[i]);
			}
		}
	}
}