// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_dialogue(_npc, _dialogue){
	var my_dialogue = instance_create_depth(x,y,0,DialogueChild);
	with(my_dialogue) {
		target_npc = _npc;
		starting_user = Player;
		dialogue = _dialogue;
		depth = -room_height*2 - room_height;
	}
	with(_npc) {
		is_doing_action = true;
	}
	with(Player) {
		is_talking = true;
	}
}