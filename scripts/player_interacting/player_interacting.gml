function player_interacting(){
	var pressed_interact = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter);
	if (pressed_interact) {
		var closest_npc = instance_nearest(Player.x,Player.y, NPC);
		if (closest_npc != undefined && instance_exists(closest_npc)) {
			var p_d = point_distance(Player.x,Player.y, closest_npc.x, closest_npc.y);
			if (p_d < Player.interact_distance) {
				start_dialogue_with_npc(closest_npc);
			}
		}
	}
}