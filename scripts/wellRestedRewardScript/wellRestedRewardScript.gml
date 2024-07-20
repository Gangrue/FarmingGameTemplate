// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wellRestedRewardScript(){
	instance_destroy(NPCBeginningHelperCharacter);
	instance_create_depth(1748, 1446, -1446, ZombieStill);
	instance_create_depth(1716, 1446, -1446, EnemyCorpse);
	accept_quest(QUEST_IDS.ENCOUNTER);
}