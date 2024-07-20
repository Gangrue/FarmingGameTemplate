// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function first_delivery_quest_dialogue(){
	var _cutscene_dialogue = new Dialogue();
	_cutscene_dialogue.clear();
	_cutscene_dialogue.add(spr_test_portrait_EXCITED, "Those planted crops are looking good!");
	_cutscene_dialogue.add(spr_test_portrait_EXCITED, "Sorry to bother you, but could you do a quick delivery for me?");
	_cutscene_dialogue.add(spr_test_portrait_EXCITED, "The General Store traded those seeds you planted for some wine I made.");
	_cutscene_dialogue.add(spr_test_portrait_EXCITED, "To get there, just follow the trail West.");
	_cutscene_dialogue.addWithReward(spr_test_portrait_EXCITED, "I really appreciate it! Thanks.", first_delivery_start_quest_reward);
	start_dialogue(NPCBeginningHelperCharacter, _cutscene_dialogue);
}