// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_foraging(){
	var pressed_interact = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter);
	if (pressed_interact) {
		var closest_herb = instance_nearest(Player.x,Player.y, Herb);
		if (closest_herb != undefined && instance_exists(closest_herb)) {
			var p_d = point_distance(Player.x,Player.y, closest_herb.x, closest_herb.y);
			if (p_d < Player.interact_distance) {
				with(closest_herb) {
					for(var i=0; i<item_qty; i++) {
						drop_item_at(x,y,random(360),10,item_to_give, 1);
					}
					update_quests(QUEST_TYPE.FORAGE, item_to_give, item_qty);
				}
				instance_destroy(closest_herb);
			}
		}
	}
}