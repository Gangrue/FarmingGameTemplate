NPC_step_ai();
if (is_doing_action) {
	is_moving = false;
	move_timer = 0;
}
else {
	NPC_step_movement();
}