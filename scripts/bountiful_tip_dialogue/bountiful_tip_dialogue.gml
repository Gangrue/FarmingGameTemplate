// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bountiful_tip_dialogue(){
	var new_dialogue = new Dialogue();
	new_dialogue.clear();

	new_dialogue.add(spr_test_portrait_EXCITED, "Once your crops grow, stand next to them and *click* them to harvest them! I hope we get a lot this year!");
	start_dialogue(NPCBeginningHelperCharacter, new_dialogue);
}