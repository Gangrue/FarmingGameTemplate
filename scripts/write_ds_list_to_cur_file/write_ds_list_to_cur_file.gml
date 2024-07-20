// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function write_ds_list_to_cur_file(ds_key, cur_ds_list){
	var str = ds_list_write(cur_ds_list);
	ini_write_string("DsLists", ds_key, str);
	//ds_list_clear(cur_ds_list);
	//ds_list_destroy(cur_ds_list);
}