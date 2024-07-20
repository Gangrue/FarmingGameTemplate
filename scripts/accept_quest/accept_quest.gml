// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function accept_quest(_quest_id){
	with(QuestManager) {
		ds_list_add(acceptedQuestList, _quest_id);
	}
}