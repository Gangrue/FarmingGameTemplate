// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function has_quest(_questId){
	if (!instance_exists(QuestManager)) return false;
	if (QuestManager.acceptedQuestList == undefined) return false;
	if (ds_list_size(QuestManager.acceptedQuestList) == 0) return false;
	
	return (ds_list_find_index(QuestManager.acceptedQuestList,_questId) >= 0);
}