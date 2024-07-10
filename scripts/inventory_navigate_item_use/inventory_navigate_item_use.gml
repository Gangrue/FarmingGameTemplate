// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_navigate_item_use(){
	var pressed_use = mouse_check_button_pressed(mb_left);
	if (pressed_use) {
		var harvested_crop = false;
		if (instance_exists(Crop)) {
			with(Player) {
				var crop_nearest = instance_nearest(mouse_x, mouse_y, Crop);
				var p_dist = point_distance(crop_nearest.x,crop_nearest.y, Player.x, Player.y);
				if (p_dist < crop_grab_distance && crop_nearest.fullGrown) {
					harvest_crop(crop_nearest);
					harvested_crop = true;
				}
			}
		}
		if (harvested_crop) {
			return false;
		}
		using_slot = current_selected_slot;
		var cur_script = inventory_slot[current_selected_slot][ITEM_PARAMETERS.SCRIPT];
		var cur_args = inventory_slot[current_selected_slot][ITEM_PARAMETERS.ATTRIBUTES];
		script_execute(cur_script, cur_args);
	}
	return true;
}