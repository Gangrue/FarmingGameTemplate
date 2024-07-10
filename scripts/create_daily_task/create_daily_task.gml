// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_daily_task(_timeOfDayInMilliseconds, _scriptToRun, _affectedNPC, _x, _y, _room, _additionalArgs){
	var dailyTask = new DailyTask(_timeOfDayInMilliseconds,_scriptToRun, _affectedNPC, _x, _y, _room, _additionalArgs);
	ds_list_add(dailyTasksToComplete,dailyTask);
}