if (givingItem) {
	if (!Player.showing_off_reward) {
		give_item(rewardItemToGive, rewardQuantityToGive);
		update_quests(QUEST_TYPE.PICKUP, rewardItemToGive, rewardQuantityToGive);
		instance_destroy();
	}
}