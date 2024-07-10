// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_some_weeds(){
	var rand_amt = choose(0,0,1,2);
	var _sprite_width = sprite_get_width(spr_tallGrass);
	var _sprite_height = sprite_get_height(spr_tallGrass);
	for(i=0; i<rand_amt; i++) {
		var _x = random(room_width);
		var _y = random(room_height);
		_x = _x - (_x % _sprite_width);
		_y = _y - (_y % _sprite_height);
		if (_x < 0) _x = 0;
		if (_y < 0) _y = 0;
		if (_x > room_width - _sprite_width) _x = room_width - _sprite_width;
		if (_y > room_height - _sprite_height) _y = room_height - _sprite_height;
		instance_create_depth(_x,_y,-_y,TallGrass);
	}
}