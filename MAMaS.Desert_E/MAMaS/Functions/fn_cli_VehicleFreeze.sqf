#include "blnd_macros.h"

// Project: ArmA 3 Atrium Framework
// Author: Blender
// E-mail: blender@arma3.ru
// Specially for ARMA3.RU Community: http://www.arma3.ru

private ["_vehicleFreeze", "_vehicles", "_vehicle", "_eh", "_vehSide", "_veh", "_state"];

_exludeCondition = getText(missionConfigFile >> "MAMaS_const" >> "vehHolderExludeCondition");
_exludeCondition = if (_exludeCondition == "") then {
	false
}else{
	compile ("_object = _this select 0;_side = _this select 1;("+_exludeCondition+")")
};

VAR(vehicles_engineEH) = [];

_side = side (group player);

while {warbegins == 0} do {
	_vehicles = (position player) nearEntities [["Car", "Tank", "Air", "Boat"], 100];
	if (vehicle player != player) then { _vehicles SET [count _vehicles, vehicle player] };
	
	for "_i" from 0 to ((count _vehicles) - 1) do {
		_object = _vehicles select _i;
		_eh = _object getVariable "engineEH";
		if (isNil "_eh") then {
			if !([_object, _side] call _exludeCondition) then {
				_eh = _object addEventHandler ["Engine",
				{
					_veh = _this select 0;
					_state = _this select 1;
					if (local _veh && _state) then {
						player action ["engineoff", _veh];
					};
				}];
				_object setVariable ["engineEH", _eh, false];
			} else {
				_object setVariable ["engineEH", -1, false];
			};
			VAR(vehicles_engineEH) SET [count VAR(vehicles_engineEH), _object];
		};
	};
	sleep 5.127;
};

for "_i" from 0 to ((count VAR(vehicles_engineEH)) - 1) do {
	_vehicle = VAR(vehicles_engineEH) select _i;
	if !(isNull _vehicle) then {
		_eh = _vehicle getVariable ["engineEH", -1];
		if (!isNil "_eh" && { _eh != -1 }) then {
			_vehicle removeEventHandler ["Engine", _eh];
		};
		_vehicle setVariable ["engineEH", nil, false];
	};
};

if (!isNil QUOTE(VAR(ForceVehiclesFreeze))) then {
	SVAR(vehicles_engineEH,[]);
	
	for "_i" from 0 to ((count VAR(ForceVehiclesFreeze)) - 1) do {
		_vehicle = VAR(ForceVehiclesFreeze) select _i;
		_eh = _vehicle addEventHandler ["Engine",
		{
			_veh = _this select 0;
			_state = _this select 1;
			if (local _veh && _state) then {
				player action ["engineoff", _veh];
			};
		}];
		_vehicle setVariable ["engineEH", _eh, false];
		VAR(vehicles_engineEH) SET [count VAR(vehicles_engineEH), _vehicle];
		if (local _vehicle) then {
			player action ["engineoff", _vehicle];
		};
	};
	while { true } do {
		for "_i" from 0 to ((count VAR(vehicles_engineEH)) - 1) do {
			_vehicle = VAR(vehicles_engineEH) select _i;
			if !(_vehicle in VAR(ForceVehiclesFreeze)) then {
				if !(isNull _vehicle) then {
					_eh = _vehicle getVariable ["engineEH", -1];
					if (_eh != -1) then {
						_vehicle removeEventHandler ["Engine", _eh];
					};
					_vehicle setVariable ["engineEH", nil, false];
				};
				VAR(vehicles_engineEH) SET [_i, -1];
			};
		};
		VAR(vehicles_engineEH) = VAR(vehicles_engineEH) - [-1];
		if ((count VAR(ForceVehiclesFreeze)) == 0) exitWith {};
		sleep 1.219;
	};
};

SVAR(vehicles_engineEH,nil);