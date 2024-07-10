// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_pickingUp_heavyObjects() {
	if (keyboard_check_pressed(ord("F"))) {
		if (is_picking_up) {
			if (!instance_exists(picked_up_object)) { return; }
			//drop item
			if (!instance_exists(FurnitureManager)) { return; }
			if (!FurnitureManager.can_place) {
				return;
			}
			picked_up_object.x = FurnitureManager.placement_x;
			picked_up_object.y = FurnitureManager.placement_y;
			is_picking_up = false;
			with(picked_up_object) {
				if (placement_script != undefined) {
					script_execute(placement_script);
				}
			}
		}
		else {
			var closest_heavy_object = instance_nearest(x,y,HeavyObject);
			if (!instance_exists(closest_heavy_object)) { return; }
			var p_d = point_distance(x,y,closest_heavy_object.x,closest_heavy_object.y);
			if (p_d < max_pickup_distance) {
				is_picking_up = true;
				picked_up_object = closest_heavy_object;
				with(picked_up_object) {
					if (pickup_script != undefined) {
						script_execute(pickup_script);
					}
				}
			}
		}
	}
	if (is_picking_up && instance_exists(picked_up_object)) {
		picked_up_object.x = x;
		picked_up_object.y = y-32;
	}
}