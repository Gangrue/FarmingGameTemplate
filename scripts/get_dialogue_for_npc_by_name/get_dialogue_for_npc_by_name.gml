// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialogue_for_npc_by_name(theName){
	switch(theName) {
		case "StoreKeeper":
			storekeeper_get_dialogue();
		break;
		case "Helper":
			helper_get_dialogue();
		break;
		case "Bed":
			bed_get_dialogue();
		break;
		case "Bed Cant Sleep":
			bed_get_cantsleep_dialogue();
		break;
		case "Default":
		default:
		break;
	}
}