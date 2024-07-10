// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition_to_room(_room, _x, _y){
	room_save_enemy_count(room, instance_number(Enemy));
	room_goto(_room);
	if (instance_exists(Player)) {
		with(Player) {
			x = _x;
			y = _y;
		}
		with(Camera) {
			x = _x;
			y = _y;
		}
	}
}