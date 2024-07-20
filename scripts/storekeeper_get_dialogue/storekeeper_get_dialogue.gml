// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function storekeeper_get_dialogue(){
	dialogue.clear();
	var decisions = [];
	var questWineSlot = find_inventory_item(ITEMS.QUESTWINE);
	if (has_quest(QUEST_IDS.FIRSTDELIVERY) && questWineSlot > -1) {
		set_inventory_slot_to_item_definition(questWineSlot, ITEMS.EMPTY, 0);
		array_push(decisions, {
			optionText: "Delivery",
			optionScript: bountiful_tip_dialogue
		});
		array_push(decisions, {
			optionText: "Nevermind",
			optionScript: empty_script
		});
		dialogue.add(spr_test_portrait, "Oh a delivery! Thank you!");
		dialogue.add(spr_test_portrait, "And who might you be?...");
		dialogue.add(spr_test_portrait, Player.firstName + "! Nice to meet you. I'm Gustavo, but you can call me Gus.");
		dialogue.add(spr_test_portrait, "Folks around here like to keep pretty isolated, so it's hard to get to know them. Most of them are friendly once you get them a gift though.");
		dialogue.add(spr_test_portrait, "Oh haha, I imagine you don't have much after just moving in.");
		dialogue.add(spr_test_portrait, "Well if you ever want to give a gift, I got plenty to sell that can catch just about anyone's eye.");
		dialogue.add(spr_test_portrait_EXCITED, "... Wait, you're broke!?");
		dialogue.addWithReward(spr_test_portrait, "Well how about you pick me some Yarrow Herbs. I'd be willing to pay you pretty well. Foraging is always a great way to make a quick buck.", storekeeper_start_foraging_quest_reward);
	}
	else {
		array_push(decisions, {
			optionText: "Shop",
			optionScript: open_general_store_shop
		});
		array_push(decisions, {
			optionText: "Nevermind",
			optionScript: empty_script
		});
		var randomInitialTest2 = choose("Hey, anything I can help you with?",
			"We have plenty of new wares, all fresh for you!",
			"Oh didn't see you there, looking to buy?",
			"What is it?",
			"I like your jive, how about you take a look at my wares?");
		dialogue.addWithDecisions(spr_test_portrait_EXCITED, randomInitialTest2, decisions);
	}

}