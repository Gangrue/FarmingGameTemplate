if (room == RoomFarm) {
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
	ds_grid_clear(ds_crops_instances, 0);
	
	//Respawn crops
	if (ds_crops_data[# 0, 0] != -1) {
		var inst_num = ds_grid_height(ds_crops_data);
		var slot = 0; repeat(inst_num) {
			//respawn that instance
			respawn_crop(
				ds_crops_data[# 0, slot],
				ds_crops_data[# 1, slot],
				ds_crops_data[# 2, slot],
				ds_crops_data[# 3, slot],
				ds_crops_data[# 4, slot]
			);
			slot+=1;
		}
		with(Crop) {
			//first growth
			var firstGrowth = 0;
			if (daysOld > 0){firstGrowth = 1};
			
			growthStage = firstGrowth + (daysOld div growthStageDuration);
			if (growthStage >= maxGrowthStage) {
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		}
	}
	
	
}

mature_trees_if_old_enough();