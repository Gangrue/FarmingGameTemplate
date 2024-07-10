// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function daily_task_run(daily_task){
	var curNpc = daily_task.npcToAffect;
	if (instance_exists(curNpc)) {
		with(curNpc) {
			script_execute(daily_task.scriptToRun, daily_task.additionalArgs);
		}
	}
	else if (daily_task.affected_room == room){
		var theNewNpc = instance_create_depth(daily_task.begin_x, daily_task.begin_y,-daily_task.begin_y,curNpc);
		with(theNewNpc) {
			script_execute(daily_task.scriptToRun, daily_task.additionalArgs);
		}
	}
}