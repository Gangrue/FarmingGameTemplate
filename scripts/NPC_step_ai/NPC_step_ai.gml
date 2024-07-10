// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_step_ai(){
	if (moving_to_target) {
		Direction = point_direction(x,y, target_x, target_y);
		is_moving = true;
		if (point_distance(x,y,target_x,target_y) < 128) {
			moving_to_target = false;
			if (destroy_when_reached_target) {
				instance_destroy();
			}
		}
		return;
	}
	if (move_timer >= move_timer_max) {
		move_timer = 0;
		is_moving = choose(true,false);
		Direction = random(360);
		return;
	}
	move_timer++;
}