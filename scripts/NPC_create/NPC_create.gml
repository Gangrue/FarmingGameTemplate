// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_create(){
	Direction = 0;
	SPD = 1.5;
	move_timer = 0;
	move_timer_max = 60;
	is_moving = false;
	is_doing_action = false;
	
	npc_name = "Default";
	
	target_x = x;
	target_y = y;
	moving_to_target = false;
	destroy_when_reached_target = false;
}