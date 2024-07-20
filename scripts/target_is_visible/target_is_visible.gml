// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function target_is_visible(){
	if (!instance_exists(target)) {
		return;
	}
	var p_dist = point_distance(x,y,target.x,target.y);
	if (p_dist < max_hear_distance * target.visibility) {
		return true;
	}
	if (p_dist > max_sight_distance * target.visibility) {
		return false;
	}
	var _minDir = (Direction - 45) % 360;
	var _maxDir = (Direction + 45) % 360;
	var p_d = point_direction(x,y,target.x,target.y);
	if (p_d > _minDir && p_d < _maxDir) {
		return true;
	}
	if ((p_d < 45 || p_d >= 360-45) && (_minDir >= 360-45 ||_maxDir < 45 )) {
		return true;
	}
	return false;
}