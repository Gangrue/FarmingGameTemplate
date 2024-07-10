// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function merge_number(_num1, _num2, _amount){
	var diff = _num1 - _num2;
	var merged = _num1 - (diff * _amount);
	return merged;
}