if (instance_exists(Player)) {
	var p_dist = point_distance(x,y,Player.x,Player.y);
	var wall = collision_line(x,y,Player.x,Player.y,Wall,true,true);
	if (wall != undefined && instance_exists(wall)) {
		//Can't see player yet.
	}
	else if (p_dist < 160) {
		update_quests(QUEST_TYPE.KILL, ZombieStill, 1);
		instance_destroy();
		var my_zombie = instance_create_depth(x,y,depth,Zombie);
		with(my_zombie) {
			current_state = ENEMYSTATE.HOSTILE;
			last_seen_target_x = Player.x;
			last_seen_target_y = Player.y;
			target = Player;
		}
	}
}