// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DailyTask(_timeOfDay, _scriptToRun, _NpcToAffect, _initial_x, _initial_y, _room, _additionalArguments) constructor
{
	timeOfDay = _timeOfDay;
	scriptToRun = _scriptToRun;
	npcToAffect = _NpcToAffect;
	additionalArgs = _additionalArguments;
	begin_x = _initial_x;
	begin_y = _initial_y;
	affected_room = _room;
}