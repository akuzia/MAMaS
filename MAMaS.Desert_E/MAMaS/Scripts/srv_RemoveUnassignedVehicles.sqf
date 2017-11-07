private "_allModules";

_allModules = allMissionObjects "MAMaS_Module_RemoveUnassignedVehicles";

if ((count _allModules) > 0) then {

	for "_i" from 0 to ((count _allModules) - 1) do {
		private ["_module", "_module_objects", "_is_alive_units"];

		_module = _allModules select _i;

		_module_objects = [];
		_is_alive_units = false;

		{
			if (_x isKindOf "CAManBase") then {
				if (alive _x) then {
					_is_alive_units = true;
				};
			} else {
				_module_objects SET [count _module_objects, _x];
			};
		} forEach synchronizedObjects (_module);
		
		if (!_is_alive_units) then {
			{ deleteVehicle _x } forEach _module_objects;
		};
	};
};