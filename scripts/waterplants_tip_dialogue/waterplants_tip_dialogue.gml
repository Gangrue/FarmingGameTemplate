// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function waterplants_tip_dialogue(){
	var new_dialogue = new Dialogue();
	new_dialogue.clear();

	new_dialogue.add(spr_test_portrait_EXCITED, "Make sure you have a watering can in your hotbar, then when it's selected. Click a nearby tilled soil to water it.");
	new_dialogue.add(spr_test_portrait_EXCITED, "If your watering can has no water in it, you can refill it by selecting it and clicking on a water source. For example, that pond southwest of the house.");
	start_dialogue(NPCBeginningHelperCharacter, new_dialogue);
}