// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collide_with_axe_destructible(_x, _y, _target, _hit_script){
	var _list = ds_list_create();
	var _num = instance_place_list(_x, _y, _target, _list, false);

	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
		{
			with(_list[| i]) {
				//We have two scripts to trigger, one being the weapon attack, the enemy effect.
				script_execute(is_hit_script);
				script_execute(_hit_script);
			}
		}
	}

	ds_list_destroy(_list);
}