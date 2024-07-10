// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_hoe(_args) {
	var mod_dmg = get_passed_stat("DMG", _args);
	Player.Direction = point_direction(Player.x, Player.y, mouse_x, mouse_y);
	var mpcost = get_passed_stat("MPCOST", _args);
	var affectable_position = get_closest_affectable_position(mouse_x, mouse_y);
	with(Player) {
		MP -= mpcost;
		is_attacking = true;
		attack_timer = 0;
		var my_attack = instance_create_depth(affectable_position._x,affectable_position._y,depth,Attack);
		with(my_attack) {
			faction = "Player";
			my_attack_effect = do_dmg;
			DMG = Player.ATK + mod_dmg;
			sprite_index = spr_hoeAttack;
			direction = Player.Direction;
			image_angle = direction;
			creator = Player;
			x_mod = x-Player.x;
			y_mod = y-Player.y;
			image_speed = 1;
		}
	}
	till_soil_at_location(affectable_position._x,affectable_position._y);
	update_stats();
}