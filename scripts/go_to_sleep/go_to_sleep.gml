// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_sleep(){
	var can_sleep = true;
	with(DayCycle) {
		if (hours > 12) {
			seconds = 60 * 60 * 25;
			slept_in_bed = true;
		}
		else {
			can_sleep = false;
		}
	}
	
	if (!can_sleep) {
		with(Player) {
			is_doing_action = true;
			is_talking = true;
		}
		var my_dialogue = instance_create_depth(x,y,0,DialogueChild);
		with(my_dialogue) {
			target_npc = Bed;
			starting_user = Player;
			get_dialogue_for_npc_by_name("Bed Cant Sleep");
		}
	}
}