// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function write_custom_data_to_cur_file(custom_key, cur_data_stringified){
	ini_write_string("Custom_Data", custom_key, cur_data_stringified);
}