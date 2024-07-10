// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_step_movement(){
	if (!enemy_step_movement_decide_state()) {
		//if enemy can't decide what state to choose, don't move.
		return;
	}
	if (is_moving) {
		var _x = lengthdir_x(SPD, Direction);
		var _y = lengthdir_y(SPD, Direction);
		move_and_collide(_x,_y,Wall);
	}
}