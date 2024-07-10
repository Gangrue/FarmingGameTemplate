// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function water_soil_at_location(_x, _y){
	with(CropManager) {
		//First check if location is tillable
		var waterable = false;
		var lay_id = layer_get_id("T_Soil");
		var map_id = layer_tilemap_get_id(lay_id);
		var data = tilemap_get_at_pixel(map_id, _x, _y);
		if (data != 0) {
			waterable = true;
		}
	
		if (!waterable) {
			return false;
		}
	
		//Now create the tile if it is tillable
		var water_lay_id = layer_get_id("T_Watered");
		var water_map_id = layer_tilemap_get_id(water_lay_id);
		tilemap_set_at_pixel(water_map_id, 3, _x, _y);
		
		//Find nearest crop and set last watered date.
		if (instance_exists(Crop)) {
			var inst_nearest = instance_nearest(_x, _y, Crop);
			var p_dist = point_distance(_x, _y, inst_nearest.x, inst_nearest.y);
			if (p_dist < 32) {
				with(inst_nearest) {
					lastWatered = daysOld;
				}
			}
		}
	}
	return true;
}