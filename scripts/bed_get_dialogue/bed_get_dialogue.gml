// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bed_get_dialogue(){
	dialogue.clear();
	var decisions = [];
	array_push(decisions, {
		optionText: "Yes",
		optionScript: go_to_sleep
	});

	array_push(decisions, {
		optionText: "No",
		optionScript: empty_script
	});

	dialogue.addWithDecisions(spr_test_portrait_EXCITED, "Would you like to go to bed for the night?", decisions);
}