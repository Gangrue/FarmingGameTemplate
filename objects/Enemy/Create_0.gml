enum ENEMYSTATE {
	CALM,
	HOSTILE,
	AFRAID,
	TRYTOATTACK,
	LOSTSIGHT
}
event_inherited();
faction = "Enemy";
current_state = ENEMYSTATE.CALM;
Direction = 0;
HITSPD = 10;
SPD = 1.5;
is_moving = false;
move_timer_max = 64;
move_timer = move_timer_max;
is_attacking = false;
attack_timer_max = 64;
attack_timer = attack_timer_max;
enemy_attack_script = enemy_do_attack;
die_script = enemy_die;
enemy_attack_range_minimum = 64;
enemy_attack_range_maximum = 96;

DMG = 8;

Direction = 0;

last_seen_target_timer_max = 64;
last_seen_target_timer = 0;
last_seen_target_x = 0;
last_seen_target_y = 0;
target = Player;

max_sight_distance = 256;
max_hear_distance = 128;