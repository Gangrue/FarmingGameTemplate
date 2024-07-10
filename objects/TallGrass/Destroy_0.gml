var item_drop = choose(0,0,0,1);
if (item_drop == 0) {
	
} else {
	var item_qty = choose(1,1,1,2);
	drop_item_at(x,y,random(360),5,item_drop,item_qty);
}