// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_adjust_enemies_on_load(){
	var expectedRoomCount = get_room_enemy_count(room);
	if (expectedRoomCount < 0) return;
	var actualRoomCount = instance_number(Enemy);
	var roomEnemyDifference = abs(expectedRoomCount - actualRoomCount)
	if (expectedRoomCount > actualRoomCount) {
		for(var i=0; i<roomEnemyDifference; i++) {
			spawn_random_enemy();
		}
	}
	else {
		for(var i=0; i<roomEnemyDifference; i++) {
			destroy_random_enemy();
		}
	}
}