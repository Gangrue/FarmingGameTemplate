// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_create_crop(_x, _y, _crop_type){
	var cs = CropManager.cellSize;
	var gx = _x div cs;
	var gy = _y div cs;
	var i_grid = CropManager.ds_crops_instances;
	var cell = i_grid[# gx, gy];
	if (cell != 0) {
		return false;
	}
	var xx = gx*cs;
	var yy = gy*cs;
	
	//Check for soil
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, _x, _y);
	if (data == 0) {
		return false;
	}
	//create the instance
	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", Crop);
	i_grid[# gx, gy] = inst; 
	with(inst) {
		cropType = _crop_type;
		growthStageDuration = CropManager.ds_crops_types[# 0, cropType];
	}
	return inst;
}