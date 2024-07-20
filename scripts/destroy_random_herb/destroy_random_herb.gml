// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_random_herb(){
	var randEnemyNum = instance_number(Enemy);
	if (randEnemyNum <= 0) return;
	randEnemyNum = irandom(randEnemyNum);
	var randInst = instance_find(Enemy, randEnemyNum);
	instance_destroy(randInst);
}