// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_stats_by_statusManager(){
	with(StatusManager){
		var statusLength = ds_list_size(statuses);
		for(var i=0; i<statusLength; i++) {
			var curStatus = ds_list_find_value(statuses, i);
			script_execute(status_definitions[curStatus][STATUSPARAMETER.CONSTANTEFFECT]);
		}
	}
}