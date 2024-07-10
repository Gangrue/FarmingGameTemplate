// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function trunk_die(){
	
	//Drop wood
	var wood_qty = 1 + irandom(2);
	for(var i=0; i<wood_qty; i++) {
		drop_item_at(x,y,random(360),8+random(4),ITEMS.WOOD,1);
	}

	//Remove tree
	instance_destroy();
}