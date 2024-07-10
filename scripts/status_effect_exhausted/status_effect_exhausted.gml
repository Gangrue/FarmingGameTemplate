// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function status_effect_exhausted(){
	with(Player) {
		SPD = SPD*0.85;
		attack_timer_max = attack_timer_max * 1.2;
	}
}
