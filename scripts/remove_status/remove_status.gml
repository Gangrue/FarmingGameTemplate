// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_status(status_type){
	with(StatusManager) {
		var existing_status = ds_list_find_index(statuses,status_type);
		while(existing_status >= 0) {
			ds_list_delete(statuses, existing_status);
			existing_status = ds_list_find_index(statuses,status_type);
		}
	}
	update_stats();
}