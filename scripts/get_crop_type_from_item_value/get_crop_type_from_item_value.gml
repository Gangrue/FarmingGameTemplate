// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_crop_type_from_item(_slot){
	if (inventory_slot[_slot][ITEM_PARAMETERS.ATTRIBUTES] == "TreePlant") {
		return 0;
	}
	return inventory_slot[_slot][ITEM_PARAMETERS.ATTRIBUTES];
	/*with(Inventory){
		var cur_def_val = inventory_slot[_slot][ITEM_PARAMETERS.ATTRIBUTES]
		switch(cur_def_val) {
			case "ArtichokePlant":
				return crop.artichoke;
			case "CarrotPlant":
				return crop.carrot;
			case "ChiliPlant":
				return crop.chilli;
			case "CornPlant":
				return crop.corn;
			case "GourdPlant":
				return crop.gourd;
			case "PotatoPlant":
				return crop.potato;
			case "TomatoPlant":
				return crop.tomato;
			default:
				return 0;
		}
	}*/
}