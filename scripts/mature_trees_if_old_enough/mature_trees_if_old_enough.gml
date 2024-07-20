// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mature_trees_if_old_enough(){
	if (instance_exists(BabyTree) && instance_exists(DayCycle)) {
		with(BabyTree) {
			if (DayCycle.day - plantedDay > 3) {
				instance_create_depth(x,y,depth,Tree);
				instance_destroy();
			}
		}
	}
}