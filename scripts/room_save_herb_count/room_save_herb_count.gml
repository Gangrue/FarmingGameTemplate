// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_save_herb_count(room_to_save_to, _herb_count){
	with(HerbManager) {
		for(var i=0; i<array_length(spawnableRooms); i++) {
			if (room == spawnableRooms[i]) {
				roomHerbCount[i] = _herb_count;
			}
		}
	}
}