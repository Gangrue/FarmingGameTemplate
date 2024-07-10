event_inherited();
SPD = 0;
my_heavy_object = instance_create_depth(x,y,depth,HeavyObject);
with(my_heavy_object) {
	visible = false;
	sprite_index = other.sprite_index;
	mask_index = other.mask_index;
}