// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function write_questTaskArray_to_cur_File(key_name, key_value){
	var jsonArray = json_stringify(key_value);
	var safeJsonArray = string_replace_all(jsonArray, "\"", "`");
	ini_write_string("JsonQuestTaskArray",key_name, safeJsonArray);
}