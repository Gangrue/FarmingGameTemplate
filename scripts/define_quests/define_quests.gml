// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_quests(){
	var testRoom = room;
	var gettingStartedQuestTask = new QuestTask(QUEST_IDS.GETTINGSTARTED, QUEST_TYPE.PICKUP, ITEMS.CARROTSEED, 15);
	define_quest(QUEST_IDS.GETTINGSTARTED, "Getting Started", "Welcome! Move with ASDW and pick up the package left for you.", [gettingStartedQuestTask], gettingStartedRewardScript);
	
	var firstRootQuestTask = new QuestTask(QUEST_IDS.FIRSTROOTS, QUEST_TYPE.PLANT, crop.carrot, 15);
	define_quest(QUEST_IDS.FIRSTROOTS, "First Roots", "Now till some soil and plant your farm's first seed!", [firstRootQuestTask], firstRootsRewardScript);

	var waterPlantQuestTask = new QuestTask(QUEST_IDS.WATERPLANTS, QUEST_TYPE.WATER, undefined, 15);
	define_quest(QUEST_IDS.WATERPLANTS, "Water Plants", "Use the watering can to water the new crops. You can fill up the watering can in any water source.", [waterPlantQuestTask], waterPlantsRewardScript);

	var firstDeliveryQuestTask = new QuestTask(QUEST_IDS.FIRSTDELIVERY, QUEST_TYPE.TALKTO, NPCStoreKeeperCharacter, 1)
	define_quest(QUEST_IDS.FIRSTDELIVERY, "First Delivery", "Bring the bottle of wine to the General Store Manager.", [firstDeliveryQuestTask], firstDeliveryRewardScript);

	var pickYarrowQuestTask = new QuestTask(QUEST_IDS.PICKYARROW, QUEST_TYPE.FORAGE, ITEMS.YARROW, 5);
	var pickYarrowQuestTask2 = new QuestTask(QUEST_IDS.PICKYARROW, QUEST_TYPE.SELL, ITEMS.YARROW, 5);
	define_quest(QUEST_IDS.PICKYARROW, "Pick Yarrow", "Pick 5 Yarrow from the nearby forest and bring it back to Gus, the General Store Manager. Once you sell it, he'll give you some initial funds.", [pickYarrowQuestTask, pickYarrowQuestTask2], pickYarrowRewardScript);

	var wellRestedQuestTask = new QuestTask(QUEST_IDS.WELLRESTED, QUEST_TYPE.SLEEP, undefined, 1);
	define_quest(QUEST_IDS.WELLRESTED, "Well Rested", "Go to sleep.", [wellRestedQuestTask], wellRestedRewardScript);
	
	var encounterQuestTask = new QuestTask(QUEST_IDS.ENCOUNTER, QUEST_TYPE.KILL, ZombieStill, 1);
	define_quest(QUEST_IDS.ENCOUNTER, "?", "Investigate the noise", [encounterQuestTask], encounterQuestRewardScript);
	
	var findHelpQuestTask = new QuestTask(QUEST_IDS.FINDHELP, QUEST_TYPE.TALKTO, NPCStoreKeeperCharacter, 1);
	define_quest(QUEST_IDS.FINDHELP, "Find Help", "Find someone to help, maybe they will know more?", [findHelpQuestTask], findHelpQuestRewardScript);

	var bountifulQuestTask = new QuestTask(QUEST_IDS.BOUNTIFUL, QUEST_TYPE.HARVEST, crop.carrot, 1);
	define_quest(QUEST_IDS.BOUNTIFUL, "Bountiful", "Welcome! Move with ASDW and pick up the package left for you.", [bountifulQuestTask], bountifulQuestRewardScript);

}