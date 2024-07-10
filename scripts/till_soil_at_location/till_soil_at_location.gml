// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function till_soil_at_location(_x, _y){
	with(CropManager) {
		//First check if location is tillable
		var tillable = true;
		var lay_id = layer_get_id("T_Soil");
		var map_id = layer_tilemap_get_id(lay_id);
		var data = tilemap_get_at_pixel(map_id, _x, _y);
		if (data != 0) {
			tillable = false;
		}
	
		if (!tillable) {
			return false;
		}
	
		//Now create the tile if it is tillable
		tilemap_set_at_pixel(map_id, 3, _x, _y);
	}
	return true;
}