// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_dialogue_with_npc(_npc){
	if (!instance_exists(DialogueParent)) {
		var object_type = undefined;
		with(_npc) {
			is_doing_action = true;
			object_type = object_index;
		}
		with(Player) {
			is_doing_action = true;
			is_talking = true;
		}
		var my_dialogue = instance_create_depth(x,y,0,DialogueChild);
		with(my_dialogue) {
			target_npc = _npc;
			starting_user = Player;
			get_dialogue_for_npc_by_name(_npc.npc_name);
		}
		if (object_type != undefined) {
			update_quests(QUEST_TYPE.TALKTO, object_type, 1);
		}
	}
}