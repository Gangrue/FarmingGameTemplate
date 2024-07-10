// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dialogue_for_npc_by_name(theName){
	switch(theName) {
		case "Bed":
			bed_get_dialogue();
		break;
		case "Bed Cant Sleep":
			bed_get_cantsleep_dialogue();
		case "Default":
		default:
		break;
	}
}