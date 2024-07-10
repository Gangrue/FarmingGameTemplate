if (room_is_farmable()) {
	if (instance_exists(Crop)) {
		with(Crop) {
			if (growthStage < maxGrowthStage) {
				daysOld+=1;
					
				var days_without_water = daysOld - lastWatered;
				if (days_without_water >= 2) {
					//Spawn a shrub/dead crop
					var inst = instance_create_layer( x, y, "Instances", DeadCrop);
					instance_destroy(self);
				}
				else {
					var firstGrowth = 0;
					if (daysOld > 0){firstGrowth = 1};
					
					if (growthStageDuration > 0) {
						growthStage = firstGrowth + (daysOld div growthStageDuration);
					}
				}
			}
			else {
				growthStage = maxGrowthStage;
				fullGrown = true;
				alarm[1] = 1;
			}
		}
	}
	
	var water_lay_id = layer_get_id("T_Watered");
	var water_map_id = layer_tilemap_get_id(water_lay_id);
	tilemap_clear(water_map_id, 0);
}
else if (ds_crops_data[# 0, 0] != -1) {
	var h = ds_grid_height(ds_crops_data);
	var yy = 0; repeat(h) {
		ds_crops_data[# 3, yy] += 1;
		yy++;
	}
}