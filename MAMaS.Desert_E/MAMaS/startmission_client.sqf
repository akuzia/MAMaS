#include "Functions\blnd_macros.h"
#include "Scripts\const.h"

[] call FNC(TeleportPlayer); // RANDOMIZE SPAWN
if (missionNameSpace getVariable ["warbegins", 0] == 0) then {
	[] call FNC(MarkersInit);
};

[] call compile preprocessFileLineNumbers "MAMaS\scripts\briefing.sqf";

["Loading player..."] call FNC(Status);
waitUntil { player == player };

["Waiting warbegins data..."] call FNC(Status);
waitUntil {sleep 0.01; !isNil "warbegins"};

["Variables/Sumulation"] call FNC(Status);
// VARIABLES
//openMap [true,true]; // Временно отключено, т.к. симуляция в любом случае ограничивает игрока
player enableSimulation false;

["UAV Introduction..."] call FNC(Status);
// UAV Introduction
_uavIntro = getNumber (MissionConfigFile >> "MAMaS_const" >> "uavIntro");
if ((warbegins == 0) && (_uavIntro == 1)) then {
	[player, 150, 150, 250] spawn FNC(UavView);
};

["Hard freeze"] call FNC(Status);
// Hard Freeze (также включает симуляцию)
[] execVM "MAMaS\Scripts\cli_hardFreeze.sqf";

private ["_player", "_veh", "_vehFiredList", "_firedEHIndex", "_blocker2"];

_player = player;
_veh = (vehicle _player);
_vehFiredList = [];

setViewDistance ((getNumber (missionConfigFile >> "MAMaS_const" >> "viewDistance")) min 3500);

["Set mission conditions"] call FNC(Status);
if (!(alive _player)) exitWith {
	[] call FNC(SetMissionConditions);
};
sleep .01;

PSGVAR(isPlayer,true);
//_player setVariable ["MAMaS_isPlayer", true, true];

// Join method restrictions
_earlyJoin = call FNC(EarlyJoin);
if (_earlyJoin) exitWith { failMission "loser" };

// Crew restriction check
if (_veh != _player && {!isNil {_veh getVariable "CREW_GETININDEX"}}) then {
	[[_veh,"",_player],_veh getVariable "CREW_GETININDEX"] call isCrew
};

if (warbegins == 0) then {
	//// IMPORTANT SCRIPTS BELOW
	_firedEHIndex = _player addEventHandler ["fired", {deleteVehicle (_this select 6)}];
	_blocker2 = (findDisplay 46) displayAddEventHandler ["MouseButtonDown", '
		[0,-1] call ace_sys_weaponselect_fnc_keypressed;
		false
	'];
	[0,-1] call ace_sys_weaponselect_fnc_keypressed;
	[] spawn compile preprocessFileLineNumbers "MAMaS\Scripts\cli_counter.sqf";
	_vehList = vehicles;
	for "_i" from 0 to ((count _vehList) - 1) do {
		private ["_vehFiredObject", "_vehFiredIndex"];
		_vehFiredObject = _vehList select _i;
		_vehFiredIndex = _vehFiredObject addEventHandler ["fired", {deleteVehicle (_this select 6)}];
		_vehFiredList SET [count _vehFiredList, [_vehFiredObject, _vehFiredIndex]];
	};
	[] spawn FNC(VehicleFreeze);
	//// IMPORTANT SCRIPTS END

	//openMap [false,false];
	//_veh enableSimulation true;
	
	[] spawn FNC(MarkersLoop);
	[] call FNC(SetMissionConditions);
	
	_change_optics_enabled = ["changeOptics", 1] call FNC(GetParam);
	_act_optics = -1;
	if (_change_optics_enabled == 1) then {
		_act_optics = _player addAction [localize "STR_MAMaS_OpticsChange", "MAMaS\scripts\opticsChange.sqf"];
	};

	[""] call FNC(Status);

	waitUntil {sleep 0.102; warbegins == 1};
	//// WAR BEGINS ////
	
	["WarBegins", "client"] call FNC(EventHandlers);
	
	player say "r61";

	_spawnBorders = GVAR(SpawnBorders,nil);
	if (!isnil "_spawnBorders") then {
		{deletevehicle _x} foreach _spawnBorders;
	};

	// Remove block fire EHs
	if (!isNil "_blocker2") then {
		(findDisplay 46) displayRemoveEventHandler ["MouseButtonDown", _blocker2];
	};

	if (!isNil "_firedEHIndex") then {
		_player removeEventHandler ["fired", _firedEHIndex];
	};

	for "_i" from 0 to ((count _vehFiredList) - 1) do {
		private ["_vehEntry", "_vehFiredObject"];
		_vehEntry = _vehFiredList select _i;
		_vehFiredObject = _vehEntry select 0;
		if (!isNull _vehFiredObject) then {
			_vehFiredObject removeEventHandler ["fired", _vehEntry select 1];
		};
	};
	//##END Remove block fire EHs

	if (_change_optics_enabled == 1) then {
		_player removeAction _act_optics;	
	};
} else { // STARTED WITH WARBEGINS == 1
	if (GVAR(MARKERS_STARTED,false)) then { [] spawn FNC(MarkersLoop) };
	[""] call FNC(Status);
	//openMap [false,false];
	//_veh enableSimulation true;
};

ace_sys_map_enabled = true;
[] execVM "\x\ace\addons\sys_map\mapview.sqf";
[] call FNC(SetMissionConditions);

__debug(end)