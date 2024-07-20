// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_current_game_state(){
	with(DialogueParent) {
		instance_destroy();
	}
	Player.is_doing_action=false;
	Player.is_talking = false;
	var saveName = GameManager.current_save;
	//GameManager.isLoadingGame = true;
	ini_open(saveName + ".ini");
	
	
	//crops:
	write_ds_grid_to_cur_file("ds_crops_instances", CropManager.ds_crops_instances);
	write_ds_grid_to_cur_file("ds_crops_data", CropManager.ds_crops_data);
	
	//TODO: Save out Quests
	write_ds_list_to_cur_file("acceptedQuestList", QuestManager.acceptedQuestList);
	
	//TODO: Save Quest_definitions.Tasks! These are a struct.
	var quest_definition_length = array_length(QuestManager.quest_definitions);
	for(var i=0; i<quest_definition_length; i++) {
		write_questTaskArray_to_cur_File("quest_definition_task_array_" + string(i), QuestManager.quest_definitions[i][QUEST_PARAMETERS.TASKS]);
	}

	//TODO: Save out Statuses
	write_ds_list_to_cur_file("Statuses", StatusManager.statuses);
	
	//TODO: Save out current daily tasks of NPC's
	//write_ds_list_to_cur_file("dailyTasksToComplete", NPCTaskManager.dailyTasksToComplete);
	
	//TODO: Save out entity Positions?
	
	ini_close();
	
	ini_open("loadGameOnNextStep" + ".ini");
	ini_write_real("0","0", "0");
	ini_close();
	
	GameManager.isLoadingGame = true;
	game_save(saveName);
}