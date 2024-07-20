// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_adjust_herbs_on_load(){
	var expectedRoomCount = get_room_herb_count(room);
	if (expectedRoomCount < 0) return;
	var actualRoomCount = instance_number(Herb);
	var roomHerbDifference = abs(expectedRoomCount - actualRoomCount)
	if (expectedRoomCount > actualRoomCount) {
		for(var i=0; i<roomHerbDifference; i++) {
			spawn_random_herb();
		}
	}
	else {
		for(var i=0; i<roomHerbDifference; i++) {
			destroy_random_herb();
		}
	}
}