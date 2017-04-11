#include "blnd_macros.h"

private ["_allModules", "_processed_objects", "_processed_modules", "_processed_groups"];

_allModules = allMissionObjects "MAMaS_Module_RandomSpawn";

if ((count _allModules) > 0) then {

	_processed_objects = []; // Processed objects to prevent double job
	_processed_modules = [];
	_processed_groups = [];

	_fnc_processObject = {
		private "_obj";
		_obj = _this;
		if (_obj isKindOf "MAMaS_Module_RandomSpawn") then { // MODULE
			_obj call _fnc_processModule;
		} else {
			if (!(_obj in _processed_objects) && !(_obj in _module_objects)) then {
				PUSH(_module_objects,_obj);
				if (_obj in allUnits) then { // ADD UNITS
					// ADD GROUP
					private "_group";
					_group = group _obj;
					if !(_group in _processed_groups) then {
						private "_units";
						PUSH(_processed_groups,_group);
						_units = units _group;
						for "_u" from 0 to ((count _units) - 1) do {
							private "_unit";
							_unit = _units select _u;
							if (!(_unit in _processed_objects) && !(_unit in _module_objects)) then {
								_unit call _fnc_processObject;
							};
						};
					};
				};
				_objects = synchronizedObjects (_obj);
				{
					if (_x isKindOf "MAMaS_Module_RandomSpawn") then {
						_x call _fnc_processModule;
					};
				} forEach _objects;
			};
		};
	};

	_fnc_processModule = {
		if (!(_this in _module_modules) && !(_this in _processed_modules)) then {
			PUSH(_module_modules,_this);
			private "_objects";
			_objects = synchronizedObjects (_this);
			for "_o" from 0 to ((count _objects) - 1) do {
				(_objects select _o) call _fnc_processObject;
			};
		};
	};
	
	for "_i" from 0 to ((count _allModules) - 1) do {
		private ["_module_modules", "_module_objects", "_module", "_mod_random", "_mod_pos"];
		_module_modules = [];
		_module_objects = [];

		_module = _allModules select _i;
		_module call _fnc_processModule;
		
		if ((count _module_objects) > 0) then {	
			_mod_random = _module_modules select (floor(random (count _module_modules)));
			_mod_pos = [(getPos _mod_random) select 0, (getPos _mod_random) select 1, 0];
			
			private "_pos1";
			_pos1 = getPos (_module_objects select 0);

			for "_i" from 0 to ((count _module_objects) - 1) do {
				private ["_unit", "_relPos", "_spawnPos", "_angle", "_dir", "_mirror"];
				_unit = _module_objects select _i;
				_relPos = [0,0];
				if (_i > 0) then {
					private "_pos2";
					_pos2 = getPosATL _unit;
					if (surfaceIsWater _pos2) then {
						_pos2 = getPosASL _unit;
					};
					_relPos = [(_pos1 select 0) - (_pos2 select 0), (_pos1 select 1) - (_pos2 select 1)];
				};
				_spawnPos = [0,0,0];
				_dir = getDir _unit;
				_mirror = _mod_random getVariable ["mirrored", false];
				if (_mirror) then {
					// SET MIRRORED DIRECTION
					if (_dir >= 180) then {
						_dir = (_dir - 180)
					} else {
						_dir = (_dir + 180)
					};
					// SET MIRRORED POSITION
					_spawnPos = [(_mod_pos select 0) + (_relPos select 0), (_mod_pos select 1) + (_relPos select 1), 0]
				} else {
					_spawnPos = [(_mod_pos select 0) - (_relPos select 0), (_mod_pos select 1) - (_relPos select 1), 0]
				};
				_unit setVariable [QUOTE(VAR(TeleportObject)), [_dir, _spawnPos], true];
				_unit setDir _dir;
				if (surfaceIsWater _spawnPos) then {
					_unit setPosASL _spawnPos
				} else {
					_unit setPosATL _spawnPos
				};
			};
			
			_processed_modules = _processed_modules + _module_modules;
			_processed_objects = _processed_objects + _module_objects;
		};
	};

	CSVAR(srv_randomized,true);
} else {
	CSVAR(srv_randomized,false);
};
publicVariable QUOTE(CVAR(srv_randomized));