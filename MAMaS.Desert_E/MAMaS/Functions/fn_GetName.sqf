/*
	Function: Returns displayName or class. If no optional parameter is defined - CfgVehicles class and displayName variable is used
	Author: Blender
	Arguments (ARRAY):
	- 0: (string) or (object) Vehicle type or object
	Optional:
	- 1: (string) Config parent class
	- 2: (string) Variable
	Return:
	- (string) Name
*/

private ["_class", "_config", "_finalClass", "_name"];
if ((typeName _this) == "STRING") then {
	_class = _this;
	_config = "CfgVehicles";
	_finalClass = "displayName";
} else {
	_class = _this select 0;
	_config = if ((count _this) > 1) then { _this select 1 } else { "CfgVehicles" };
	_finalClass = if ((count _this) > 2) then { _this select 2 } else { "displayName" };
};
if ((typeName _class) == "OBJECT") then { _class = typeOf _class };
_name = getText (configFile >> _config >> _class >> _finalClass);
if (_name == "") then { _name = _class };
_name