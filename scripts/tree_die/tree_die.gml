// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tree_die(){
	//begin fall down of tree. (spawn falling tree)
	
	
	//Spawn trunk
	var my_trunk = instance_create_depth(x,y,depth,TreeTrunk);
	with(my_trunk) {
		sprite_index = other.sprite_index;
	}
	
	//Drop wood
	var wood_qty = 3 + irandom(5);
	for(var i=0; i<wood_qty; i++) {
		drop_item_at(x,y,random(360),8+random(4),ITEMS.WOOD,1);
	}
	
	//Drop Tree seed
	var seed_qty = choose(0,1,2,3);
	for(var i=0; i<seed_qty; i++) {
		drop_item_at(x,y,random(360),8+random(4),ITEMS.TREESEED,1);
	}
	
	//Remove tree
	instance_destroy();
}