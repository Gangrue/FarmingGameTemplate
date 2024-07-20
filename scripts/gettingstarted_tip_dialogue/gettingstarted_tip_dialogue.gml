// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gettingstarted_tip_dialogue(){
	var new_dialogue = new Dialogue();
	new_dialogue.clear();

	new_dialogue.add(spr_test_portrait_EXCITED, "I helped out and placed some seeds in the house, just walk over them to pick them up. Press I after that to see them in your inventory. Click and drag the seeds to move them.");
	start_dialogue(NPCBeginningHelperCharacter, new_dialogue);
}