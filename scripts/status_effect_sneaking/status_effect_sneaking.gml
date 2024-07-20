// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function status_effect_sneaking(){
	with(Player) {
		SPD = SPD*0.7;
		attack_timer_max = attack_timer_max * 1.5;
		visibility = visibility * 0.5;
	}
}