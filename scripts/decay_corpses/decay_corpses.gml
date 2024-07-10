// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function decay_corpses(){
	with(EnemyCorpse) {
		decay_days++;
		if (decay_days >= max_decay_days) {
			instance_destroy();
		}
		image_alpha = 1 - (decay_days / max_decay_days);
	}
}