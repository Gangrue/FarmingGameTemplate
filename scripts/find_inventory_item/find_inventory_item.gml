// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_inventory_item(item_id){
	with(Inventory) {
		//first check if we have the same item somewhere in inventory.
		for(var i=0; i<inventory_slot_length; i++) {
			var cur_id = inventory_slot[i][ITEM_PARAMETERS.ID];
			if (cur_id == item_id) {
				return i;
			}
		}
	}
	return -1;
}