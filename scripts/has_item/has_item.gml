// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function has_item(has_item_id, has_item_qty){
	var amount_had_of_item = 0;
	with(Inventory) {
		for(var i=0; i<inventory_slot_length; i++) {
			var curItemId = inventory_slot[i][ITEM_PARAMETERS.ID];
			if (curItemId = has_item_id) {
				amount_had_of_item += inventory_slot[i][ITEM_PARAMETERS.QTY];
			}
		}
	}
	return (amount_had_of_item >= has_item_qty);
}