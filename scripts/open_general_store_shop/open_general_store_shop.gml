// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function open_general_store_shop(){
	with(Inventory) {
		inventory_is_trading = true;
		inventory_is_shopping = true;
		inventory_is_open = true;
		load_inventory_trading_slots_with_shop_slots(NPCStoreKeeperCharacter);
	}
}