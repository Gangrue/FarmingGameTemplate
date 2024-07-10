// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_do_attack(){
	if (!instance_exists(target)) { return; }
	Direction = point_direction(x, y, target.x, target.y);
	is_attacking = true;
	attack_timer = 0;
	var my_attack = instance_create_depth(x,y,depth,Attack);
	with(my_attack) {
		faction = "Enemy";
		my_attack_effect = do_dmg;
		DMG = other.DMG;
		sprite_index = spr_sickleAttack;
		direction = other.Direction;
		image_angle = direction;
		creator = other;
		x_mod = 0;
		y_mod = 0;
		image_speed = 1;
	}
}