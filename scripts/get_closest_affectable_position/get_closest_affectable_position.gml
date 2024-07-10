// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_closest_affectable_position(selected_x, selected_y){
	//We need to return a location that is close to the player and can be affected.
	var allowed_distance = 5;
	var _cellSize = 32;
	var middle_distance = floor(allowed_distance/2);
	
	var min_x = 0;
	var min_y = 0;
	var min_dist = room_width + room_height;
	var gridized_player_x = Player.x - (Player.x % _cellSize) + (_cellSize/2);
	var gridized_player_y = Player.y - (Player.y % _cellSize) + (_cellSize/2);
	for(var Y = 0; Y<allowed_distance; Y++) {
		for(var X = 0; X<allowed_distance; X++) {
			var cur_x = gridized_player_x + (X-middle_distance)*_cellSize;
			var cur_y = gridized_player_y + (Y-middle_distance)*_cellSize;
			var p_dist = point_distance(selected_x,selected_y,cur_x, cur_y);
			if (p_dist < min_dist) {
				min_dist = p_dist;
				min_x = cur_x;
				min_y = cur_y;
			}
		}	
	}
	var curPos = { _x: min_x, _y: min_y };
	return curPos;
}
