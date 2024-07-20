#macro MAXHERBSPAWNCOUNT 16
spawnableRooms = [RoomFarm, RoomShop];

roomHerbCount = [];
for(var i=0; i<array_length(spawnableRooms); i++) {
	roomHerbCount[i] = 0;
}
isFirstDay = true;