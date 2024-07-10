#macro MAXENEMYSPAWNCOUNT 64
spawnableRooms = [RoomFarm];

roomEnemyCount = [];
for(var i=0; i<array_length(spawnableRooms); i++) {
	roomEnemyCount[i] = 0;
}
isFirstDay = true;