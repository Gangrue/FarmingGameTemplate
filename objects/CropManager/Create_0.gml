#macro CROPSDATAMAXPARAMS 5

ds_crops_types = -1;
ds_crops_instances = -1;
ds_crops_data = ds_grid_create(CROPSDATAMAXPARAMS,1);
ds_grid_clear(ds_crops_data, -1);


enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}
create_crop_types();

planting = false;
selected_crop = 0;

mx = 0;
my = 0;

cellSize = 32;