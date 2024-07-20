// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_random_herb(){
	var my_inst = instance_create_depth(0, 0, 0, Herb);
	var herbIsInOkaySpot = false;
	while(!herbIsInOkaySpot) {
		var rand_x = random(room_width);
		var rand_y = random(room_height);
		my_inst.x = rand_x;
		my_inst.y = rand_y;
		herbIsInOkaySpot = true;
		with(my_inst) {
			if (place_meeting(x,y,Wall)) {
				herbIsInOkaySpot = false;
			}
			if (point_distance(x,y,Player.x,Player.y) < 96) {
				herbIsInOkaySpot = false;
			}
		}
	}
}