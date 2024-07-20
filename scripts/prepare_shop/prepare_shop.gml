// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prepare_shop(shop_name){
	switch(shop_name) {
		case "test_shop":
			with(Inventory) {
				var begin_shop_index = inventory_max_slot_length + 12;
				var end_shop_index = inventory_and_chest_max_slot_length;
				for(var i=begin_shop_index; i<end_shop_index; i++) {
					var rand_item_id = choose(ITEMS.APPLESEED, ITEMS.HOE, ITEMS.SICKLE, ITEMS.WATERINGCAN, ITEMS.EMPTY);
					set_inventory_slot_to_item_definition(i, rand_item_id, 1);
				}
			}
			break;
		case "StoreKeeper":
			with(Inventory) {
				var begin_shop_index = inventory_max_slot_length + 12;
				var end_shop_index = inventory_and_chest_max_slot_length;
				for(var i=end_shop_index-1; i>begin_shop_index; i--) {
					if (i == end_shop_index-1) {
						set_inventory_slot_to_item_definition(i, ITEMS.SIMPLEHAT, 1);
					}
					if (i == end_shop_index-2) {
						set_inventory_slot_to_item_definition(i, ITEMS.SIMPLESHIRT, 1);
					}
					if (i == end_shop_index-3) {
						set_inventory_slot_to_item_definition(i, ITEMS.SIMPLEPANTS, 1);
					}
					if (i == end_shop_index-4) {
						set_inventory_slot_to_item_definition(i, ITEMS.SIMPLEBOOTS, 1);
					}
					
					//TOOLS
					if (i == end_shop_index-13) {
						set_inventory_slot_to_item_definition(i, ITEMS.SICKLE, 1);
					}
					if (i == end_shop_index-14) {
						set_inventory_slot_to_item_definition(i, ITEMS.HOE, 1);
					}
					if (i == end_shop_index-15) {
						set_inventory_slot_to_item_definition(i, ITEMS.WATERINGCAN, 1);
					}
					if (i == end_shop_index-16) {
						set_inventory_slot_to_item_definition(i, ITEMS.AXE, 1);
					}
					
					//SEEDS
					if (i == end_shop_index-25) {
						set_inventory_slot_to_item_definition(i, ITEMS.TOMATOSEED, 1);
					}
					if (i == end_shop_index-26) {
						set_inventory_slot_to_item_definition(i, ITEMS.CARROTSEED, 1);
					}
					if (i == end_shop_index-27) {
						set_inventory_slot_to_item_definition(i, ITEMS.POTATOSEED, 1);
					}
					if (i == end_shop_index-28) {
						set_inventory_slot_to_item_definition(i, ITEMS.CORNSEED, 1);
					}
					if (i == end_shop_index-29) {
						set_inventory_slot_to_item_definition(i, ITEMS.ARTICHOKESEED, 1);
					}
					if (i == end_shop_index-30) {
						set_inventory_slot_to_item_definition(i, ITEMS.GOURDSEED, 1);
					}
					if (i == end_shop_index-31) {
						set_inventory_slot_to_item_definition(i, ITEMS.CHILLISEED, 1);
					}
				}
			}
			break;
		default:
			break;
	}
}