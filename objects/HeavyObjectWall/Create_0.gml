event_inherited();
my_wall = instance_create_depth(x,y,depth,Wall);
with(my_wall) {
	sprite_index = other.sprite_index;
	mask_index = other.mask_index;
	visible = false;
}