if (!room_is_farmable()) {
	planting = false;
	exit;
}

#region Planting
var is_planting = false;
with(Inventory) {
	if (inventory_slot[current_selected_slot][ITEM_PARAMETERS.ITEM_TYPE] == ITEM_TYPE.SEED) {
		is_planting = true;
	}
}
if (is_planting) {
	planting = true;
}
else {
	planting = false;
}

if (planting) {
	var cur_crop = Inventory.inventory_slot[Inventory.current_selected_slot][ITEM_PARAMETERS.ATTRIBUTES];
	selected_crop = cur_crop;
	var closest_pos =  get_closest_affectable_position(mouse_x, mouse_y);
	mx = closest_pos._x;
	my = closest_pos._y;
	if (mouse_check_button_pressed(mb_left)) {
		var could_plant = instance_create_crop(mx, my, cur_crop);
		if (could_plant) {
			update_quests(QUEST_TYPE.PLANT, cur_crop, 1);
			with(Player){ 
				MP -= 1;
				if (MP <= 0) {
					MP = 0;
				}
			}
			with(Inventory) {
				if (inventory_slot[current_selected_slot][ITEM_PARAMETERS.ITEM_TYPE] == ITEM_TYPE.SEED) {
					inventory_slot[current_selected_slot][ITEM_PARAMETERS.QTY] -= 1;
					if (inventory_slot[current_selected_slot][ITEM_PARAMETERS.QTY] <= 0) {
						set_inventory_slot_to_item_definition(current_selected_slot,ITEMS.EMPTY, 0);
					}
				}
			}
		}
	}
}
#endregion

#region

if (instance_exists(Crop) and keyboard_check_pressed(ord("G"))) {
	with(Crop) {
		if (growthStage < maxGrowthStage) {
			daysOld+=1;
			
			var firstGrowth = 0;
			if (daysOld > 0){firstGrowth = 1};
			
			growthStage = firstGrowth + (daysOld div growthStageDuration);
		}
		else {
			growthStage = maxGrowthStage;
			fullyGrown = true;
			alarm[1] = 1;
		}
	}
}

#endregion