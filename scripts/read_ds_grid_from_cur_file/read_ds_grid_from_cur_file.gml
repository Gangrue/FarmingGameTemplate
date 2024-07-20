// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function read_ds_grid_from_cur_file(ds_key, cur_ds_grid){
	var str = ini_read_string("DsGrids", ds_key, "");
	ds_grid_read(cur_ds_grid,str);
}