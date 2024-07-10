// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_status(_status_effect){
	var _is_effected_by_status = false;
	with(StatusManager) {
		_is_effected_by_status = (ds_list_find_index(statuses,_status_effect) >= 0);
	}
	return _is_effected_by_status;
}