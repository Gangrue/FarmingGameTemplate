// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_stats_to_default(){
	with(Player) {
		bodyTemperature = base_bodyTemperature;
		defense = base_defense;
		SPD = base_SPD;
		ATK = base_ATK;
		HPMAX = base_HPMAX;
		HITSPD = base_HITSPD;
		attack_timer_max = base_attack_timer_max;
		visibility = base_visibility;
	}
}