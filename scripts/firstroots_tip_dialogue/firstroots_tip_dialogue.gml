// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function firstroots_tip_dialogue(){
	var new_dialogue = new Dialogue();
	new_dialogue.clear();

	new_dialogue.add(spr_test_portrait_EXCITED, "Open your Inventory with *I*, move the seeds to your *hotbar*. Then select the seeds with your number bar (1-9,0,-,=). Then click to plant! Make sure to till the soil before though.");
	start_dialogue(NPCBeginningHelperCharacter, new_dialogue);
}