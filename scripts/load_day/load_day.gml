// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_day(){
	//First we save out the newly randomly generated daily shops.
	clear_chest();
	prepare_shop("test_shop");
	save_chest_to_file("test_shop", "test_shop");
	clear_chest();
	prepare_shop("StoreKeeper");
	save_chest_to_file("StoreKeeper", "StoreKeeper");
	clear_chest();
	if (room_is_plantable()) {
		generate_some_weeds();
	}
	
	if (room_is_foragable()) {
		update_world_herb_count();
	}
	room_adjust_herbs_on_load();
	room_adjust_enemies_on_load();
	
	decay_corpses();
}