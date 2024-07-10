function respawn_crop(grid_x, grid_y, crop_type, days_old, last_watered){
	var xx = grid_x * cellSize;
	var yy = grid_y * cellSize;
	var _x = xx+(cellSize/2);
	var _y = yy+(cellSize/2);
	//Room persistent. Do crops exist? If so, delete the one in the specified location.
	if (instance_exists(Crop)) {
		var closest_inst = instance_nearest(_x, _y, Crop);
		var p_dist = point_distance(closest_inst.x, closest_inst.y, _x, _y);
		if (p_dist < 8) {
			instance_destroy(closest_inst);
		}
	}
	
	var days_without_water = days_old - last_watered;
	if (days_without_water >= 2) {
		//Remove the "watered" effect.
		var water_lay_id = layer_get_id("T_Watered");
		var water_map_id = layer_tilemap_get_id(water_lay_id);
		tilemap_set_at_pixel(water_map_id, 0, _x, _y);
		
		//Spawn a shrub/dead crop
		var inst = instance_create_layer( _x, _y, "Instances", DeadCrop);
	}
	else {
		var inst = instance_create_layer( _x, _y, "Instances", Crop);
		ds_crops_instances[# grid_x, grid_y] = inst;
	
		with(inst) {
			cropType = crop_type;
			daysOld = days_old;
			growthStageDuration = CropManager.ds_crops_types[# 0, cropType];
		}
	
		return inst;
	}
}