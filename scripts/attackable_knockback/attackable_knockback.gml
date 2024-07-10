// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackable_knockback(){
	if (is_hit) {
		is_hit_timer++;
		if (is_hit_timer >= is_hit_timer_max) {
			is_hit = false;
			is_hit_timer = 0
		}
		var is_hit_timer_mod = 1/is_hit_timer;
		var _x = lengthdir_x(HITSPD*is_hit_timer_mod, is_hit_direction);
		var _y = lengthdir_y(HITSPD*is_hit_timer_mod, is_hit_direction);
		move_and_collide(_x, _y, Wall);
	}
}