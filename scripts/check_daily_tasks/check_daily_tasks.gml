// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_daily_tasks(){
	if (GameManager.isLoadingGame) { return; }
	var dailyTaskCount = ds_list_size(dailyTasksToComplete);
	if (dailyTaskCount == 0) return;
	var curTime = DayCycle.minutes;
	var i=0;
	while(i<dailyTaskCount) {
		var curDailyTask = ds_list_find_value(dailyTasksToComplete, i);
		if (curDailyTask.timeOfDay < curTime) {
			ds_list_delete(dailyTasksToComplete, i);
			daily_task_run(curDailyTask);
			i-=1;
			dailyTaskCount = ds_list_size(dailyTasksToComplete);
		}
		i++;
	}
}