// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogue() constructor {
	_dialogs = [];
	
	add = function(_sprite, _message) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			decisions: undefined,
			reward: undefined
		});
	}
	
	addWithDecisions = function(_sprite, _message, _decisions) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			decisions: _decisions,
			reward: undefined
		});
	}
	
	addWithReward = function(_sprite, _message, _reward) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			decisions: undefined,
			reward: _reward
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs);
	}
	
	clear = function() {
		array_delete(_dialogs,0,array_length(_dialogs));
	}
}