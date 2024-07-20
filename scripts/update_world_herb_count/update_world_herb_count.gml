// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_world_herb_count(){
	with(HerbManager) {
		var spawnableRoomCount = array_length(spawnableRooms);
		for(var i=0; i<spawnableRoomCount; i++) {
			var curCount = roomHerbCount[i];
			curCount += irandom(5);
			curCount = floor(curCount * 2);
			if (curCount < 1) {
				curCount = 1;
			}
			if (curCount >= MAXHERBSPAWNCOUNT) {
				curCount = MAXHERBSPAWNCOUNT;
			}
			roomHerbCount[i] = curCount;
		}
	}
	
	//TODO: disperse herbs to adjacent rooms if applicable:
	
}