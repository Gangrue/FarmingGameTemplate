// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function helper_get_dialogue(){
	dialogue.clear();
	var decisions = [];
	if (has_quest(QUEST_IDS.BOUNTIFUL)) {
		array_push(decisions, {
			optionText: "How do I harvest?",
			optionScript: bountiful_tip_dialogue
		});
	}
	else if (has_quest(QUEST_IDS.GETTINGSTARTED)) {
		array_push(decisions, {
			optionText: "How do I pick up seeds?",
			optionScript: gettingstarted_tip_dialogue
		});
	}
	else if (has_quest(QUEST_IDS.FIRSTROOTS)) {
		array_push(decisions, {
			optionText: "How do I plant seeds?",
			optionScript: firstroots_tip_dialogue
		});
	}
	else if (has_quest(QUEST_IDS.WATERPLANTS)) {
		array_push(decisions, {
			optionText: "How do I water plants?",
			optionScript: waterplants_tip_dialogue
		});
	}

	array_push(decisions, {
		optionText: "Not right now.",
		optionScript: empty_script
	});
	var randomInitialTest = choose("Hey, anything I can help you with?",
		"Wonderful weather out, It'd be a shame to waste a day of hard work!",
		"I think I saw some frogs jumping down by the river south of here, maybe that'd be something to checkout?",
		"A bunch of squirrels are living in the attic, gross!",
		"Running this place definitely is hard. Can you imagine running this place alone?");
	dialogue.addWithDecisions(spr_test_portrait_EXCITED, randomInitialTest, decisions);

}