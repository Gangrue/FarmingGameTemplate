// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function char_is_alphanumeric(curChar){
	var acceptable = true;
	for(var i = 1; i <= string_length(curChar); ++i)
    if string_pos(string_char_at(curChar, i), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_") == 0 {
        acceptable = false;
        break;
    }
	return acceptable;
}