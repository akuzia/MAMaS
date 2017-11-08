#include "blnd_macros.h"

if (!isNil QVAR(MARKERS_STARTED)) exitWith { LOGC(__FILE__ + " Markers already started!") };
SVAR(MARKERS_STARTED,true);

["Initializing markers..."] call FNC(Status);

VAR(GROUPMARKER_SIZE) = 0.5;
VAR(GROUPMARKER_ALPHA) = 1;
VAR(GROUPMARKER_COLOR) = "ColorRed";
VAR(VEHICLEMARKER_SIZE) = 0.5;
VAR(VEHICLEMARKER_ALPHA) = 1;
VAR(VEHICLEMARKER_COLOR) = "ColorWhite";
VAR(SELFMARKER) = true;

#define ZONEMARKER_ALPHA 0.5
#define IGNORE_VEHICLES ["ACE_JerryCan_5"]

#define getParamNumber(VAR1) getNumber(missionConfigFile >> "MAMaS_const" >> #VAR1)
#define getParamTextCompile(VAR1) (call compile getText(missionConfigFile >> "MAMaS_const" >> #VAR1))
#define __defZoneSize getParamNumber(defZoneSize)
#define __zoneMultREDFOR getParamNumber(zoneMultREDFOR)
#define __zoneMultBLUEFOR getParamNumber(zoneMultBLUEFOR)
#define __sideREDFOR getParamTextCompile(sideREDFOR)
#define __sideBLUEFOR getParamTextCompile(sideBLUEFOR)

// Variables
SVAR(MarkersList,[]);
SVAR(MarkersVehList,[]);

_fnc_createMarkerLocal = {
	private "_markerName";
	_markerName = _this select 0;
	createMarkerLocal [_markerName, _this select 1];
	_markerName setMarkerTypeLocal (_this select 2);
	_markerName setMarkerSizeLocal (_this select 3);
	_markerName setMarkerTextLocal (_this select 4);
	_markerName setMarkerColorLocal (_this select 5);
	_markerName setMarkerAlphaLocal (_this select 6);
	_markerName setMarkerBrushLocal (_this select 7);
	_markerName setMarkerShapeLocal (_this select 8);
};

_fnc_getZoneSize = {
	if (_this == __sideREDFOR) then {
		__defZoneSize * __zoneMultREDFOR
	} else {
		if (_this == __sideBLUEFOR) then {
			__defZoneSize * __zoneMultBLUEFOR
		} else {
			__defZoneSize
		}
	}
};

_pushedVehicles = [];

_fnc_getVehicles = {
	private ["_groupNum", "_zonePos", "_zoneSize"];
	_groupNum = _this select 0;
	_zonePos = _this select 1;
	_zonePos SET [2, 0];
	_zoneSize = _this select 2;
	
	for "_i" from 0 to ((count _vehicles) - 1) do {
		private ["_veh", "_type", "_vehPos", "_markerName", "_icon"];
		_veh = _vehicles select _i;
		_type = typeOf _veh;
		if !(_type in IGNORE_VEHICLES) then {
			_vehPos = OGVAR(_veh,TeleportObject,nil);
			if (isNil "_vehPos") then {
				_vehPos = getPos _veh;
			} else {
				_vehPos = _vehPos select 1;
			};
			_vehPos SET [2, 0];
			if (_vehPos distance _zonePos <= _zoneSize && !(_veh in _pushedVehicles)) then {
				PUSH(_pushedVehicles,_veh);
				_icon = switch (true) do {
					case (_type isKindOf "Plane"): { "b_plane" };
					case (_type isKindOf "Helicopter"): { "b_air" };
					case (_type isKindOf "Tank"): { "b_armor" };
					default { "Car" };
				};
				_markerName = format["Veh_%1-%2", _groupNum, _i];
				_vehName = _type call FNC(GetName);
				_toPush = [_markerName, _vehName, _veh];
				PUSH(VAR(MarkersVehList),_toPush);
				[_markerName, _vehPos, _icon, [VAR(VEHICLEMARKER_SIZE), VAR(VEHICLEMARKER_SIZE)], _vehName, VAR(VEHICLEMARKER_COLOR), VAR(VEHICLEMARKER_ALPHA), "SOLID", "ICON"] call _fnc_createMarkerLocal;
			};
		};
	};
};

private ["_spawnZoneType", "_playerSide", "_playerPos", "_playerGroup", "_zoneSize", "_vehicles", "_allGroups"];

// Get own group spawn position
_playerPos = PGVAR(TeleportObject,nil);
_playerGroup = group player;
if (isNil "_playerPos") then {
	_leaderPos = OGVAR(leader _playerGroup,TeleportObject,nil);
	if (isNil "_leaderPos") then {
		_playerPos = getPosASL (leader _playerGroup);
	} else {
		_playerPos = _leaderPos select 1;
	};
	//PSGVAR(SpawnPosition,_playerPos);
} else {
	_playerPos = _playerPos select 1;
};

_allGroups = allGroups;
_playerSide = side (group player);
_zoneSize = _playerSide call _fnc_getZoneSize;

_spawnZoneType = ["spawnZoneType", 0] call MAMaS_blnd_fnc_GetParam; // Get spawn zone display mode

private ["_spawnZonePos", "_spawnZoneSize"];

if (_spawnZoneType == 0) then {
	private "_spawnZone";
	
	// Check for saved spawn zone position
	_spawnZone = PGVAR("SpawnZone", []);
	
	// If no spawn zone data found - get a new one and save
	if ((count _spawnZone) == 0) then {
		_spawnZone = call compile preprocessFileLineNumbers "MAMaS\Scripts\cli_spawnZones.sqf";
		PSGVAR("SpawnZone", _spawnZone);
	};

	_spawnZonePos = _spawnZone select 0;
	_spawnZoneSize = _spawnZone select 1;
	["StartPosition", _spawnZonePos, "Start", [_spawnZoneSize, _spawnZoneSize], "", "ColorGreen", ZONEMARKER_ALPHA, "SOLID", "ELLIPSE"] call _fnc_createMarkerLocal;

	[_spawnZonePos, _spawnZoneSize] spawn FNC(SpawnZone);
	[_spawnZonePos, _spawnZoneSize] spawn FNC(SpawnBorder);
} else {
	["StartPosition", _playerPos, "Start", [_zoneSize, _zoneSize], "", "ColorGreen", ZONEMARKER_ALPHA, "SOLID", "ELLIPSE"] call _fnc_createMarkerLocal;

	// Call spawn zone leave restriction
	[_playerPos, _zoneSize] spawn FNC(SpawnZone);
	[_playerPos, _zoneSize] spawn FNC(SpawnBorder);
};

// Get all map vehicles , "Car", "Motorcycle", "Tank", "Ship"
_vehicles = (allMissionObjects "Air") + (allMissionObjects "Car") + (allMissionObjects "Motorcycle") + (allMissionObjects "Tank") + (allMissionObjects "Ship") - (allMissionObjects "ACE_JerryCan_5");

// Draw ally group markers
for "_i" from 0 to ((count _allGroups) - 1) do {
	private ["_group", "_leader", "_side", "_pos"];
	_group = _allGroups select _i;
	_leader = leader _group;
	_side = side _group;
	if (_side == _playerSide) then {
		_pos = OGVAR(_leader,TeleportObject,nil);
		if (isNil "_pos") then {
			_pos = getPosASL _leader;
		} else {
			_pos = _pos select 1;
		};
		_markerName = format["StartPosition_%1", _i];
		_markerText = str (group _leader);
		_toPush = [_markerName, _markerText, _group];
		PUSH(VAR(MarkersList),_toPush);
		[_markerName, _pos, "b_inf", [VAR(GROUPMARKER_SIZE), VAR(GROUPMARKER_SIZE)], _markerText, VAR(GROUPMARKER_COLOR), VAR(GROUPMARKER_ALPHA), "SOLID", "ICON"] call _fnc_createMarkerLocal;
		[_i, _pos, _zoneSize] call _fnc_getVehicles;
	};
};

[000, _spawnZonePos, _spawnZoneSize] call _fnc_getVehicles; // Common area markers workaround

player createDiaryRecord ["Diary", [localize "STR_MAMaS_Settings", localize "STR_MAMaS_markersControl"]];

if (VAR(SELFMARKER)) then {
	createMarkerLocal ["SelfMarker", getPos player];
	"SelfMarker" setMarkerTypeLocal "Vehicle";
	"SelfMarker" setMarkerSizeLocal [1.5,1.5];
	"SelfMarker" setMarkerTextLocal "";
	"SelfMarker" setMarkerColorLocal "ColorGreen";
	"SelfMarker" setMarkerAlphaLocal 1;
	"SelfMarker" setMarkerBrushLocal "SOLID";
	"SelfMarker" setMarkerShapeLocal "ICON";
};