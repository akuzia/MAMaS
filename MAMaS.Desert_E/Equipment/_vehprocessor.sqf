_veh = _this select 0;
_faction = _this select 1;
call compile format ["if (isNil {MAMaS_veh_%1_processor}) then {MAMaS_veh_%1_processor = compile preprocessFileLineNumbers 'equipment\veh_%1.sqf'}",_faction];
_loadout = _this select 2;
_cargoBoxes = _this select 3;
//prepare functions
_common_processor = {
	_veh = _this;
	clearWeaponCargo _veh;
	clearMagazineCargo _veh;
	//_this disableTIEquipment true;
	
	if ((_veh isKindOf "LandVehicle") && !(_veh isKindOf "Building")) then {
        _this addMagazineCargo ["ACE_Rope_TOW_M_5",1];
    };
};
_addTyre = {
	_veh = _this;
	if (local _veh) then {
		_n_tyres = (getNumber(configFile >> "CfgVehicles" >> typeOf _veh >> "ace_sys_repair_spare_tyres") - 1);
		for "_i" from 0 to _n_tyres do {
			private ["_tyre","_offset"];
			_offset = [0,(sizeOf (typeOf _veh)) / 2,0]; //unload by default behind the vehicle
			_type = getText(configFile >> "CfgVehicles" >> typeOf _veh >> "ace_sys_repair_tyre_type");
			_tyre = createVehicle [_type,_veh modelToWorld _offset,[],0,"NONE"];
			_veh setVariable ["ace_sys_cargo_content", (_veh getVariable ["ace_sys_cargo_content",[]]) + [_tyre], true];
			_tyre setVariable ["ace_sys_cargo_unloadPos", _offset, true];

			// Hide _tyre
			_tyre_pos = getPosATL _tyre;
			_tyre setPos [_tyre_pos select 0,_tyre_pos select 1,(_tyre_pos select 2)-20];
		};
	};
};

if (isNil {MAMaS_cargoCrateProcessor}) then {MAMaS_cargoCrateProcessor = compile preprocessFileLineNumbers "equipment\_cargoCrateProcessor.sqf"};
if (isNil {MAMaS_addCargoBox}) then {
	MAMaS_addCargoBox = {
	// (c) Zu-23-2
		_veh = _this select 0;
		_boxname = _this select 1;
		_boxtype = _this select 2;
		_magazines = _this select 3;
		if (isNil {_magazines}) then {_magazines = [];};
		_weapons = _this select 4;
		if (isNil {_weapons}) then {_weapons = [];};
		if (isServer) then {
			_tbox = _boxtype createVehicle [0,0,0];
			_tbox setVariable ["ace_sys_cargo_name", _boxname, true];
			if ((count _weapons > 0)||(count _magazines > 0)) then {
				clearWeaponCargoGlobal _tbox;
				clearMagazineCargoGlobal _tbox;
				{ _tbox addMagazineCargoGlobal _x } forEach _magazines;
				{ _tbox addWeaponCargoGlobal _x } forEach _weapons;
			};
			_veh setVariable ["ace_sys_cargo_content",(_veh getVariable ["ace_sys_cargo_content",[]]) + [_tbox],true];
		};
	};
};
//call functions
_veh call _common_processor;
_veh call _addTyre;
[_veh, _loadout] call compile format ["if isNil {MAMaS_veh_%1_processor} then {MAMaS_veh_%1_processor = compile preprocessFileLineNumbers 'equipment\veh_%1.sqf'}; _this call MAMaS_veh_%1_processor",_faction];
if (!isNil {_cargoBoxes}) then { {[_veh, _x] call MAMaS_cargoCrateProcessor} forEach _cargoBoxes};