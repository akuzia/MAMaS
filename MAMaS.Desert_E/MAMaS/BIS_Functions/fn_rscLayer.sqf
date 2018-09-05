_fnc_scriptNameParentTemp = if !(isnil '_fnc_scriptName') then {_fnc_scriptName} else {'BIS_fnc_rscLayer'};
private ['_fnc_scriptNameParent'];
_fnc_scriptNameParent = _fnc_scriptNameParentTemp;
_fnc_scriptNameParentTemp = nil;

private ['_fnc_scriptName'];
_fnc_scriptName = 'BIS_fnc_rscLayer';
scriptname _fnc_scriptName;

private ["_name","_list","_id"];
_name = [_this,0,"",[""]] call bis_fnc_param;
_list = missionnamespace getvariable ["bis_fnc_rscLayer_list",[]];

if (_name == "") then {
	if (_fnc_scriptNameParent != _fnc_scriptName) then {
		_name = _fnc_scriptNameParent;
	};
};
if (_name == "") exitwith {"RSC Layer name cannot be empty string" call bis_fnc_error; -1};

_id = _list find _name;
_id = if (_id < 0) then {
	_id = (count _list + 2) / 2;
	_list set [count _list,_name];
	_list set [count _list,_id];
	_id
} else {
	_list select (_id + 1)
};

missionnamespace setvariable ["bis_fnc_rscLayer_list",_list];
_id