enum NPCTASKPARAMETER {
	TIMEOFDAYINSECONDS,
	SCRIPTTORUN,
	NPCTOAFFECT,
	ADDITIONALPARAMETERS,
	LENGTH
}

dailyTasksToComplete = ds_list_create();
//Add Daily Tasks
add_daily_tasks();
//var dailyTask = new DailyTask(100,empty_script, PetDog, "");
//ds_list_add(dailyTasksToComplete,dailyTask);