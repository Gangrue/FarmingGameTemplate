if (place_meeting(x,y,Attackable)) {
	collide_and_trigger_onhit(x,y,Attackable, my_attack_effect, faction);
}
if (is_projectile == false) {
	x = creator.x + x_mod;
	y = creator.y + y_mod;
}

if (destroy_on_animation_end) {
	if (image_index + image_speed >= image_number) {
		instance_destroy();
	}
}