enum NPCTASKPARAMETER {
	TIMEOFDAYINSECONDS,
	SCRIPTTORUN,
	NPCTOAFFECT,
	ADDITIONALPARAMETERS,
	LENGTH
}

dailyTasksToComplete = ds_list_create();
//Add Daily Tasks

create_daily_task(500,npc_move_to_and_destroy_when_reached,PetDog, 32, 32, RoomFarm,"0, 0");
create_daily_task(500,npc_move_to_and_destroy_when_reached,PetDog, 484, 86, RoomHouse,"0, 0");
//var dailyTask = new DailyTask(100,empty_script, PetDog, "");
//ds_list_add(dailyTasksToComplete,dailyTask);