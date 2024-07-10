// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sort_daily_tasks_by_timeofday() {
	var n = ds_list_size(dailyTasksToComplete);
    for (var i = 0; i < n - 1; i++) {
        for (var j = 0; j < n - i - 1; j++) {
            var a = ds_list_find_value(dailyTasksToComplete, j);
            var b = ds_list_find_value(dailyTasksToComplete, j + 1);
            if (compare_daily_task_time(a, b) > 0) {
                // Swap elements
                ds_list_replace(dailyTasksToComplete, j, b);
                ds_list_replace(dailyTasksToComplete, j + 1, a);
            }
        }
    }
}

function compare_daily_task_time(a, b) {
    if (a.timeOfDay < b.timeOfDay) return -1;
    if (a.timeOfDay > b.timeOfDay) return 1;
    return 0;
}
