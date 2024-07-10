// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_status_effect(_statusType, _statusName, _statusDesc, _statusScript){
	status_definitions[_statusType][STATUSPARAMETER.NAME] = _statusName;
	status_definitions[_statusType][STATUSPARAMETER.DESCRIPTION] = _statusDesc;
	status_definitions[_statusType][STATUSPARAMETER.CONSTANTEFFECT] = _statusScript;
}