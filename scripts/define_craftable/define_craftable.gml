// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_craftable(craftable_index, craftable_object, craftable_sprite, craftable_item_to_use_array, craftable_cost_array){
	crafting_slot[craftable_index][CRAFT_PARAMETER.OBJECTTOCRAFT] = craftable_object;
	crafting_slot[craftable_index][CRAFT_PARAMETER.SPRITETOSHOW] = craftable_sprite;
	crafting_slot[craftable_index][CRAFT_PARAMETER.CRAFTITEM] = craftable_item_to_use_array;
	crafting_slot[craftable_index][CRAFT_PARAMETER.CRAFTCOST] = craftable_cost_array;
}