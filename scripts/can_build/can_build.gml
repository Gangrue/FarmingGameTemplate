// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function can_build(cur_index){
	var can_craft = true;
	var requiredItemsToCraft = crafting_slot[cur_index][CRAFT_PARAMETER.CRAFTITEM];
	var requiredValuesToCraft = crafting_slot[cur_index][CRAFT_PARAMETER.CRAFTCOST];
	var requiredItemsToCraftLength = array_length(requiredItemsToCraft);
	for(var i=0; i<requiredItemsToCraftLength; i++) {
		var itemId = requiredItemsToCraft[i];
		var itemCost = requiredValuesToCraft[i];
		if (!has_item(itemId, itemCost)) {
			can_craft = false;
		}
	}
	return can_craft;
}