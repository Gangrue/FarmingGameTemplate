// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_save_enemy_count(room_to_save_to, _enemy_count){
	with(EnemyManager) {
		for(var i=0; i<array_length(spawnableRooms); i++) {
			if (room == spawnableRooms[i]) {
				roomEnemyCount[i] = _enemy_count;
			}
		}
	}
}