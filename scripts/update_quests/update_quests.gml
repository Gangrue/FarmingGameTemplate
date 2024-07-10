// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_quests(_event_name, _event_target, _event_count){
	with(QuestManager) {
		var current_accepted_quest_count = ds_list_size(acceptedQuestList);
		for(var i=0; i<current_accepted_quest_count; i++) {
			var curAcceptedQuest = ds_list_find_value(acceptedQuestList, i);
			var questTasks = quest_definitions[curAcceptedQuest][QUEST_PARAMETERS.TASKS];
			var taskLength = array_length(questTasks);
			var questDone = true;
			for(var ii=0; ii<taskLength; ii++) {
				var curTask = questTasks[ii];
				if (!curTask.Finished) {
					var taskComplete = update_quest_task(i, curTask, _event_name, _event_target, _event_count);
					if (!taskComplete) {
						questDone = false;
					}
				}
			}
			
			if (questDone && !quest_definitions[curAcceptedQuest][QUEST_PARAMETERS.FINISHED]) {
				quest_definitions[curAcceptedQuest][QUEST_PARAMETERS.FINISHED] = true;
				script_execute(quest_definitions[curAcceptedQuest][QUEST_PARAMETERS.REWARDSCRIPT]);
				ds_list_delete(acceptedQuestList, i);
				i--;
				current_accepted_quest_count--;
			}
		}
	}
}