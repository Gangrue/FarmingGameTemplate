// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_wateringcan(_args){
	var _is_in_water = false;
	with(Player) {
		_is_in_water = is_in_water;
	}
	if (_is_in_water) {
		with(Inventory) {
			inventory_slot[current_selected_slot][ITEM_PARAMETERS.ATTRIBUTES] = "100";
		}
		return;
	}
	var water_left = real(_args);
	if (water_left < WATER_USE_COST) { return; }
	water_left -= WATER_USE_COST;
	with(Inventory) {
		inventory_slot[current_selected_slot][ITEM_PARAMETERS.ATTRIBUTES] = string(water_left);
	}
	
	with(Player) {
		is_attacking = true;
		attack_timer = 0;
		Direction = point_direction(Player.x, Player.y, mouse_x, mouse_y);
	}
	var affectable_position = get_closest_affectable_position(mouse_x, mouse_y);
	water_soil_at_location(affectable_position._x,affectable_position._y);
}