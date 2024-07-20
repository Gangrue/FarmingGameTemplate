// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function plant_tree(_args){
	if (room == RoomFarm) {
		with(Inventory) {
			var curMousePos = get_closest_affectable_position(mouse_x,mouse_y);
			var canPlantTree = true;
			if (instance_exists(Wall)) {
				var nearest_wall = instance_nearest(curMousePos._x, curMousePos._y,Wall);
				var p_dist = point_distance(nearest_wall.x, nearest_wall.y, curMousePos._x, curMousePos._y);
				if (p_dist < 64) {
					canPlantTree = false;
				}
			}
			if (instance_exists(Player)) {
				var nearest_player = instance_nearest(curMousePos._x, curMousePos._y,Player);
				var p_dist = point_distance(nearest_player.x, nearest_player.y, curMousePos._x, curMousePos._y);
				if (p_dist < 32) {
					canPlantTree = false;
				}
			}
		
			if (canPlantTree) {
				inventory_slot[current_selected_slot][ITEM_PARAMETERS.QTY] -= 1;
				if (inventory_slot[current_selected_slot][ITEM_PARAMETERS.QTY] == 0) {
					set_inventory_slot_to_item_definition(current_selected_slot, ITEMS.EMPTY, 0);
				}
				instance_create_depth(curMousePos._x, curMousePos._y, -curMousePos._y, BabyTree);
			}
		}
	}
}