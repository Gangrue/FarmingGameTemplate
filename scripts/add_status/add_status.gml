// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_status(status_type) {
	with(StatusManager) {
		ds_list_add(statuses,status_type);
	}
	update_stats();
}