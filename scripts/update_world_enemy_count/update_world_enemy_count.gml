// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_world_enemy_count(){
	//Here we will go through each room, apply a basic math formula to each one.
	//This count is later used for knowing how many enemies to spawn/destroy.
	with(EnemyManager) {
		var spawnableRoomCount = array_length(spawnableRooms);
		if (isFirstDay) {
			isFirstDay = false;
			for(var i=0; i<spawnableRoomCount; i++) {
				roomEnemyCount[i] = 1;
			}
		}
		for(var i=0; i<spawnableRoomCount; i++) {
			var curCount = roomEnemyCount[i];
			curCount += irandom(5);
			curCount = floor(curCount * 1.2);
			if (curCount < 1) {
				curCount = 1;
			}
			if (curCount >= MAXENEMYSPAWNCOUNT) {
				curCount = MAXENEMYSPAWNCOUNT;
			}
			roomEnemyCount[i] = curCount;
		}
	}
	
	//TODO: disperse enemies to adjacent rooms if applicable:
	
}