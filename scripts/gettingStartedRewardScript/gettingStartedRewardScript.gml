// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gettingStartedRewardScript(){
	Player.money += 100;
	//Start next quest:
	accept_quest(QUEST_IDS.FIRSTROOTS);
}