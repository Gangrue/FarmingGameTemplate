// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_quest(_id, _name, _desc, _questTasks, _rewardScript){
	quest_definitions[_id][QUEST_PARAMETERS.NAME] = _name;
	quest_definitions[_id][QUEST_PARAMETERS.DESC] = _desc;
	quest_definitions[_id][QUEST_PARAMETERS.TASKS] = _questTasks;
	quest_definitions[_id][QUEST_PARAMETERS.REWARDSCRIPT] = _rewardScript;
	quest_definitions[_id][QUEST_PARAMETERS.QUESTID] = _id;
}