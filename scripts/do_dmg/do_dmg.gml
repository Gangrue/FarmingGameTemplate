// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function do_dmg(){
	if (!instance_exists(other)) { return; }
	HP -= other.DMG;
	if (HP <= 0) {
		script_execute(die_script);
	}
	is_hit = true;
	is_hit_timer = 0;
	if (instance_exists(other.creator)) {
		is_hit_direction = point_direction(other.creator.x, other.creator.y,x,y);
	}
	else {
		is_hit_direction = point_direction(other.x, other.y,x,y);
	}
}