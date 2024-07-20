is_hit_script = instance_destroy;
faction = "Tree";
plantedDay = 0;
HP = 1;
die_script = sapling_tree_die;
if (instance_exists(DayCycle)) {
	plantedDay = DayCycle.day;
}