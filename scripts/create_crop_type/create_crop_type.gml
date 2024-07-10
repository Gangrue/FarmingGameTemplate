function create_crop_type(){
	var argNum = argument_count;
	var height = 1;
	if(!ds_exists(ds_crops_types, ds_type_grid)) {
		ds_crops_types = ds_grid_create(argNum,1);
	} else {
		height = ds_grid_height(ds_crops_types);
		ds_grid_resize(ds_crops_types, argNum, height+1);
		height++;
	}
	var yy = height-1;
	var i = 0; repeat(argNum) {
		ds_crops_types[# i, yy] = argument[i];
		i += 1;
	}
}