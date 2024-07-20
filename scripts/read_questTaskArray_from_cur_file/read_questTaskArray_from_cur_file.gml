// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function read_questTaskArray_from_cur_file(json_key, cur_taskArray){
	var str = ini_read_string("JsonQuestTaskArray", json_key, "");
	if (str == "") {
		return;
	}
	var safeString = string_replace_all(str, "`","\"");
	cur_taskArray = json_parse(safeString);
}