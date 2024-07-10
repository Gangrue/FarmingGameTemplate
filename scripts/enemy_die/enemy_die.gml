// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_die(){
	var will_drop = choose(true,false);
	if (will_drop) {
		var dropped_item = choose(ITEMS.POTATOSEED,ITEMS.APPLE, ITEMS.SIMPLEBOOTS);
		var dropped_qty = 1;
		drop_item_at(x,y,random(360), 10, dropped_item, dropped_qty);
	}
	drop_corpse(x,y);
	instance_destroy();
}