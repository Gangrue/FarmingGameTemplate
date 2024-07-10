var statusLength = ds_list_size(statuses);
var _cam_width = camera_get_view_width(view_camera[0]);
var _sprite_height = sprite_get_height(spr_status);
var _moving_x = -sprite_get_width(spr_status);
var _moving_y = 64;
for(var i=0; i< statusLength; i++) {
	var curStatus = ds_list_find_value(statuses, i);
	draw_sprite(spr_status,curStatus,_cam_width + _moving_x, _moving_y);
	_moving_y += _sprite_height;
}