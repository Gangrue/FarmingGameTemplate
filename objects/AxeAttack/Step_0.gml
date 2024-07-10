event_inherited();
if (place_meeting(x,y,Tree)) {
	collide_with_axe_destructible(x,y,Tree, axe_do_dmg);
	instance_destroy();
}