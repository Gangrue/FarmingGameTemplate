// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_start_showing_off_reward(_rewardSprite, _rewardSpriteIndex){
	with(Player) {
		showing_off_reward = true;
		is_doing_action = true;
		reward_sprite = _rewardSprite;
		reward_sprite_index = _rewardSpriteIndex;
	}
}