private ['_fnc_scriptNameParent'];
_fnc_scriptNameParent = if !(isnil '_fnc_scriptName') then {_fnc_scriptName} else {'BIS_fnc_param'};
scriptname 'BIS_fnc_param';

private ["_params","_id","_value","_thisCount"];

_thisCount = count _this;

_params = if (_thisCount > 0)		then {_this select 0}		else {[]};
_id = if (_thisCount > 1)		then {_this select 1}		else {0};
if (typename _params != typename [])	then {_params = [_params]};

_value = if (count _params > _id)	then {_params select _id}	else {nil};


if (_thisCount > 2) then {
private ["_default","_defaultOverload","_types","_typeDefault","_type"];
_default = _this select 2;

if !(isnil "_fnc_scriptName") then {
	_defaultOverload = missionnamespace getvariable (_fnc_scriptName + "_" + str _id);
	if !(isnil "_defaultOverload") then {
		_default = _defaultOverload;
	};
};

if (isnil "_value") then {
	_value = _default;
};

if (_thisCount > 3) then {
	_types = _this select 3;

	_type = typename _value;
	_typeDefault = typename _default;

	if !({_type == typename _x} count _types > 0) then {
		if ({_typeDefault == typename _x} count _types > 0) then {
			private ["_disableErrors"]; 	_disableErrors = false;
			if (!_disableErrors) then {
				private ["_textTypes"];	_textTypes = "";	{		_textTypes = _textTypes + typename _x;		if (_forEachIndex < count _types - 1) then {_textTypes = _textTypes + ", "};	} foreach _types;
				["#%1: %2 is type %3, must be %4. %5 used instead.",_id,str _value, _type, _textTypes, str _default] call bis_fnc_error;
			};
			_value = _default;
		} else {
			private ["_disableErrors"]; 	_disableErrors = false;
			if (!_disableErrors) then {
				private ["_textTypes"];	_textTypes = "";	{		_textTypes = _textTypes + typename _x;		if (_forEachIndex < count _types - 1) then {_textTypes = _textTypes + ", "};	} foreach _types;
				["#%1: Default %2 is type %3, must be %4",_id, str _default, _typeDefault, _textTypes] call bis_fnc_error;
			};
		};
	};
};


if (_thisCount > 4) then {
	if (typename _value == typename []) then {
		private ["_valueCountRequired","_valueCount"];
		_valueCountRequired = [_this,4,0,[0,[]]] call bis_fnc_param;
		if (typename _valueCountRequired != typename []) then {_valueCountRequired = [_valueCountRequired]};
		_valueCount = count _value;
		if !(_valueCount in _valueCountRequired) then {
			_value = _default;
			["#%1: %2 elements provided, %3 expected: %4",_id,_valueCount,_valueCountRequired,_value] call bis_fnc_error;
		};
	};
};

_value
} else {
	if (isnil "_value") then {nil} else {_value}
};