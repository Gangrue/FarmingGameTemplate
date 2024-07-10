// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_crop_produce_from_crop(theCrop){
	if (instance_exists(theCrop)) {
		var retCrop = {
			cropId: 0,
			cropQty: 0
		}
		switch(theCrop.cropType) {
			case crop.tomato:
				retCrop.cropId = ITEMS.TOMATO;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.potato:
				retCrop.cropId = ITEMS.POTATO;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.carrot:
				retCrop.cropId = ITEMS.CARROT;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.artichoke:
				retCrop.cropId = ITEMS.ARTICHOKE;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.chilli:
				retCrop.cropId = ITEMS.CHILLI;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.gourd:
				retCrop.cropId = ITEMS.GOURD;
				retCrop.cropQty = 1+irandom(3);
			break;
			case crop.corn:
				retCrop.cropId = ITEMS.CORN;
				retCrop.cropQty = 1+irandom(3);
			break;
			default:
				retCrop.cropId = ITEMS.APPLE;
				retCrop.cropQty = 1;
			break;
		}
		return retCrop;
	}
}