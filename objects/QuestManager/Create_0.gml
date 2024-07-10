enum QUEST_IDS {
	GETTINGSTARTED,
	FIRSTROOTS,
	WELLRESTED,
	ENCOUNTER,
	BOUNTIFUL,
	LENGTH
}

enum QUEST_PARAMETERS {
	QUESTID,
	FINISHED,
	NAME,
	DESC,
	REWARDSCRIPT,
	TASKS,
	LENGTH
}

enum QUEST_TYPE {
	PICKUP,
	TALKTO,
	SLEEP,
	KILL,
	PLANT,
	HARVEST,
	LENGTH
}

quest_definitions = [QUEST_IDS.LENGTH][QUEST_PARAMETERS.LENGTH];
for(var i=0; i<QUEST_IDS.LENGTH; i++) {
	quest_definitions[i][QUEST_PARAMETERS.QUESTID] = i;
	quest_definitions[i][QUEST_PARAMETERS.FINISHED] = false;
	quest_definitions[i][QUEST_PARAMETERS.NAME] = "";
	quest_definitions[i][QUEST_PARAMETERS.DESC] = "";
	quest_definitions[i][QUEST_PARAMETERS.TASKS] = undefined;
	quest_definitions[i][QUEST_PARAMETERS.REWARDSCRIPT] = empty_script;
}

var gettingStartedQuestTask = new QuestTask(QUEST_IDS.GETTINGSTARTED, QUEST_TYPE.PICKUP, ITEMS.CORNSEED, 1);
define_quest(QUEST_IDS.GETTINGSTARTED, "Getting Started", "Welcome! Move with ASDW and pick up the package left for you.", [gettingStartedQuestTask], gettingStartedRewardScript);

var firstRootQuestTask = new QuestTask(QUEST_IDS.FIRSTROOTS, QUEST_TYPE.PLANT, crop.corn, 2);
define_quest(QUEST_IDS.FIRSTROOTS, "First Roots", "Now leave the house and plant the corn seed.", [firstRootQuestTask], firstRootsRewardScript);

define_quest(QUEST_IDS.WELLRESTED, "Well Rested", "Welcome! Move with ASDW and pick up the package left for you.", [], empty_script);
define_quest(QUEST_IDS.ENCOUNTER, "Encounter", "Welcome! Move with ASDW and pick up the package left for you.", [], empty_script);
define_quest(QUEST_IDS.BOUNTIFUL, "Bountiful", "Welcome! Move with ASDW and pick up the package left for you.", [], empty_script);

acceptedQuestList = ds_list_create();
accept_quest(QUEST_IDS.GETTINGSTARTED);