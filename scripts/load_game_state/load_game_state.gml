// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game_state(){
	var saveName = GameManager.current_save;
	//Get all ds data and restore it.
	ini_open(saveName + ".ini");
	with(CropManager) {
		create_crop_types();
		ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
		read_ds_grid_from_cur_file("ds_crops_instances", ds_crops_instances);
		ds_crops_data = ds_grid_create(5,1);
		read_ds_grid_from_cur_file("ds_crops_data", ds_crops_data);
	}
	
	//TODO: Save out Quests
	with(QuestManager) {
		define_quests();
		var quest_definition_length = array_length(QuestManager.quest_definitions);
		for(var i=0; i<quest_definition_length; i++) {
			read_questTaskArray_from_cur_file("quest_definition_task_array_" + string(i), QuestManager.quest_definitions[i][QUEST_PARAMETERS.TASKS]);
		}
	}
	QuestManager.acceptedQuestList = ds_list_create();
	read_ds_list_from_cur_file("acceptedQuestList", QuestManager.acceptedQuestList);
	//TODO: Save out Statuses
	StatusManager.statuses = ds_list_create();
	read_ds_list_from_cur_file("Statuses", StatusManager.statuses);
	
	with(NPCTaskManager) {
		NPCTaskManager.dailyTasksToComplete = ds_list_create();
		add_daily_tasks();
	}
	//read_ds_list_from_cur_file("dailyTasksToComplete", NPCTaskManager.dailyTasksToComplete);
	//TODO: Save out entity Positions?
	
	ini_close();
}