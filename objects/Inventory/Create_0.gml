define_inventory_enums();
define_misc_item_macros();
define_inventory_arrays();
define_inventory_selectors();

current_selected_slot = 0;
inventory_is_open = false;
inventory_is_trading = false;
inventory_is_shopping = false;
inventory_is_equipping = false;
opened_chest_id = "";
define_items();
give_starter_equipment();
create_inventory_spriting_positions();

update_stat_timer_max = 100;
update_stat_timer = 0;

depth = -room_height*2;