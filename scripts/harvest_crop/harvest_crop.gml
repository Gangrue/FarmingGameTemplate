// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function harvest_crop(theCrop){
	if (instance_exists(theCrop)) {
		var cropProduce = get_crop_produce_from_crop(theCrop);
		drop_item_at(theCrop.x,theCrop.y, random(360), 10, cropProduce.cropId, cropProduce.cropQty);
		instance_destroy(theCrop);
	}
}