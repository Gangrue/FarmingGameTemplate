// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pop_daily_task(){
	var dailyTask = ds_list_find_value(dailyTasksToComplete, 0);
	ds_list_delete(dailyTasksToComplete, 0);
	return dailyTask;
}