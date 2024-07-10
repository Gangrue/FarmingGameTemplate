// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_heavy_object_wall(){
	if (instance_exists(my_wall)) {
		instance_destroy(my_wall);
	}
}