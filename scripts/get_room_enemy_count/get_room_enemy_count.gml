// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_room_enemy_count(roomToLoad){
	with(EnemyManager) {
		var roomCount = array_length(spawnableRooms);
		for(var i=0; i<roomCount; i++) {
			if (spawnableRooms[i] == roomToLoad) {
				return roomEnemyCount[i];
			}
		}
	}
	return -1;
}