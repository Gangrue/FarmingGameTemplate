// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sapling_tree_die(){
	//Drop Tree seed
	var seed_qty = 1;
	for(var i=0; i<seed_qty; i++) {
		drop_item_at(x,y,random(360),8+random(4),ITEMS.TREESEED,1);
	}
}