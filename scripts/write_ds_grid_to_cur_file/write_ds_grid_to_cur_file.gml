// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function write_ds_grid_to_cur_file(ds_key, cur_ds_list){
	if (ds_exists(cur_ds_list, ds_type_grid)) {
		var str = ds_grid_write(cur_ds_list);
		ini_write_string("DsGrids", ds_key, str);
	}
}