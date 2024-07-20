// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function read_ds_list_from_cur_file(ds_key, cur_ds_list){
	var str = ini_read_string("DsLists", ds_key, "");
	if (str == "") {
		cur_ds_list = ds_list_create();
	}
	ds_list_read(cur_ds_list,str);
}