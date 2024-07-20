is_building = false;

enum CRAFT_PARAMETER {
	OBJECTTOCRAFT,
	SPRITETOSHOW,
	CRAFTITEM,
	CRAFTCOST,
	LENGTH
}

craftable_item_length = 2;
crafting_index = 0;
crafting_slot[craftable_item_length][CRAFT_PARAMETER.LENGTH] = -1;
for(var i=0; i<craftable_item_length; i++) {
	crafting_slot[i][CRAFT_PARAMETER.OBJECTTOCRAFT] = Bed;
	crafting_slot[i][CRAFT_PARAMETER.SPRITETOSHOW] = spr_Dog;
	crafting_slot[i][CRAFT_PARAMETER.CRAFTITEM] = undefined;
	crafting_slot[i][CRAFT_PARAMETER.CRAFTCOST] = undefined;
}

define_craftable(0, Bed, spr_bed, [ITEMS.WOOD], [10]);
define_craftable(1, Chest, spr_chest, [ITEMS.WOOD], [20]);