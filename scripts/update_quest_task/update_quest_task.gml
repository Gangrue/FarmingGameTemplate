// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_quest_task(_questId, curTask, _event_type, _event_target, _event_count){
	if (_event_type = curTask.QuestType && _event_target == curTask.QuestTargetEntity) {
		curTask.QuestCurrentAmount += _event_count;
	}
	
	if (curTask.QuestCurrentAmount >= curTask.QuestTotalAmount) {
		curTask.Finished = true;
		return true;
	}
	return false;
}