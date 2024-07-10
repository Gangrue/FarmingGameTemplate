// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recreate_heavy_object_wall(){
	if (!instance_exists(my_wall)) {
		my_wall = instance_create_depth(x,y,depth,Wall);
		with(my_wall) {
			sprite_index = other.sprite_index;
			mask_index = other.mask_index;
			visible = false;
		}
	}
}