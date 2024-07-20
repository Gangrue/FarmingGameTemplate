event_inherited();
pickup_script = destroy_heavy_object_wall;
placement_script = recreate_heavy_object_wall;
chest_id = GameManager.current_save + string(floor(x)) + string(floor(y)) + string(id);
clear_chest();
save_chest_to_file(chest_id);