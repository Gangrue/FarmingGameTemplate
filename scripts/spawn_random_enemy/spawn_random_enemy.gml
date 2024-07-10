// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_random_enemy(){
	var my_inst = instance_create_depth(0, 0, 0, Enemy);
	var enemyIsInOkaySpot = false;
	while(!enemyIsInOkaySpot) {
		var rand_x = random(room_width);
		var rand_y = random(room_height);
		my_inst.x = rand_x;
		my_inst.y = rand_y;
		enemyIsInOkaySpot = true;
		with(my_inst) {
			if (place_meeting(x,y,Wall)) {
				enemyIsInOkaySpot = false;
			}
			if (point_distance(x,y,Player.x,Player.y) < 96) {
				enemyIsInOkaySpot = false;
			}
		}
	}
}