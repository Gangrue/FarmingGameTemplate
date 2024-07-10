var _x = 0;
var _y = 0;
var _target_room = RoomFarm;
switch(room) {
	case RoomFarm:
		_x = 480;
		_y = 337;
		_target_room = RoomHouse;
	break;
	case RoomHouse:
		_x = 1536;
		_y = 1641;
		_target_room = RoomFarm;
	break;
	default:
}

transition_to_room(_target_room, _x, _y);