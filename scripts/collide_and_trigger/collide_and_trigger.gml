// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collide_and_trigger(_x, _y, _target, _callback){
	var _list = ds_list_create();
	var _num = instance_place_list(_x, _y, _target, _list, false);

	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
		{
			with(_list[| i]) {
				script_execute(_callback);
			}
		}
	}

	ds_list_destroy(_list);
}