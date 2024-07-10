// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function axe_do_dmg(){
	if (!instance_exists(other)) { return; }
	HP -= other.DMG;
	if (HP <= 0) {
		script_execute(chop_down_script);
	}
}