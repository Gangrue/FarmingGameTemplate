// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_item(item_id, item_qty){
	var amount_had_of_item = 0;
	var amount_to_remove = item_qty;
	with(Inventory) {
		for(var i=0; i<inventory_slot_length; i++) {
			var curItemId = inventory_slot[i][ITEM_PARAMETERS.ID];
			var curItemQty = inventory_slot[i][ITEM_PARAMETERS.QTY];
			if (curItemId = item_id) {
				if (amount_to_remove < curItemQty) {
					inventory_slot[i][ITEM_PARAMETERS.QTY]-=amount_to_remove;
					return true;
				}
				else {
					amount_to_remove -= curItemQty;
					set_inventory_slot_to_item_definition(i,ITEMS.EMPTY,0);
				}
			}
		}
	}
	return false;
}