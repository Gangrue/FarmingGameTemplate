// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function npc_move_to_and_destroy_when_reached(_args){
	var inputVals = string_split(_args, ",");

	// Trim any extra spaces
	var _x = real(string_trim(inputVals[0]));
	var _y = real(string_trim(inputVals[1]));
	target_x = _x;
	target_y = _y;
	moving_to_target = true;
	destroy_when_reached_target = true;
}