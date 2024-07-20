enum QUEST_IDS {
	GETTINGSTARTED,
	FIRSTROOTS,
	WATERPLANTS,
	FIRSTDELIVERY,
	PICKYARROW,
	WELLRESTED,
	ENCOUNTER,
	BOUNTIFUL,
	FINDHELP,
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
	WATER,
	FORAGE,
	SELL,
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
define_quests();

acceptedQuestList = ds_list_create();
accept_quest(QUEST_IDS.GETTINGSTARTED);