// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function status_effect_wet(){
	with(Player) {
		//Here we would do whatever effect wet does...
		bodyTemperature -= (10 * (wet_amount / wet_amount_max));
	}
}