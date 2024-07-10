// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_if_sprite_collides(theSprite, origin_x, origin_y, theObjectToCheckIfCollidedWith){
	var s_x_off = sprite_get_xoffset(theSprite);
	var s_y_off = sprite_get_yoffset(theSprite);
	var col_line1 = collision_line(
		origin_x - s_x_off, origin_y - s_y_off,
		origin_x + s_x_off-1, origin_y - s_y_off,
		theObjectToCheckIfCollidedWith, true, false);
	var col_line2 = collision_line(
		origin_x - s_x_off, origin_y - s_y_off,
		origin_x - s_x_off, origin_y + s_y_off-1,
		theObjectToCheckIfCollidedWith, true, false);
	var col_line3 = collision_line(
		origin_x + s_x_off-1, origin_y - s_y_off,
		origin_x + s_x_off-1, origin_y + s_y_off-1,
		theObjectToCheckIfCollidedWith, true, false);
	var col_line4 = collision_line(
		origin_x - s_x_off, origin_y + s_y_off-1,
		origin_x + s_x_off-1, origin_y + s_y_off-1,
		theObjectToCheckIfCollidedWith, true, false);
			
	if (col_line1 || col_line2 || col_line3 || col_line4) {
		return false;
	}
	return true;
}