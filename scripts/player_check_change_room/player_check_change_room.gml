// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_check_change_room(){
	var isChangingRoom = false;
	var new_room = room;
	if (x < 32) {
		isChangingRoom=true;
		if (room == RoomFarm) {
			new_room = RoomShop;
			x = room_width-32;
		}
	}
	else if (x > room_width-32) {
		isChangingRoom=true;
		
		if (room == RoomShop) {
			new_room = RoomFarm;
			x = 32;
		}
	}
	else if (y < 32) {
		isChangingRoom=true;
		
	}
	else if (y > room_height-32) {
		isChangingRoom=true;
		
	}
	
	if (isChangingRoom && new_room != room) {
		room_goto(new_room);
		Camera.x = x;
		Camera.y = y;
	}
}