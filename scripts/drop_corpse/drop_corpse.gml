// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_corpse(_x, _y){
	instance_create_depth(_x,_y,depth,EnemyCorpse);
}