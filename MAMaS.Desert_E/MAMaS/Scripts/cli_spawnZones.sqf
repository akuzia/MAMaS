#include "blnd_macros.h"

private ["_leaders", "_zones", "_exit", "_finalPos", "_returnZoneSize", "_left", "_right", "_top", "_bottom"];
_fnc_equalArrayPosition = {
	private ["_return", "_p1", "_p1_x", "_p1_y"];
	_return = false;
	_p1 = _this select 0;
	_p1_x = _p1 select 0;
	_p1_y = _p1 select 1;
	{
		if (_p1_x == (_x select 0) && { _p1_y == (_x select 1) }) exitWith {
			_return = true;
		};
	} forEach (_this select 1);
	_return
};

_leaders = [];

for "_i" from 0 to ((count _allGroups) - 1) do {
	private ["_group", "_leader", "_leaderPos"];
	_group = _allGroups select _i;
	_leader = leader _group;
	_leaderPos = OGVAR(_leader,TeleportObject,nil); // Macros should be included before "call"
	if (isNil "_leaderPos") then {
		_leaderPos = getPos _leader;
	} else {
		_leaderPos = _leaderPos select 1;
	};
	_leaderPos SET [2, 0];
	if ((side _group) == _playerSide) then {
		_leaders SET [count _leaders, _leaderPos];
	};
};

_zones = [];
// Get nearest leaders to player
_playerMarkPos = _playerPos;
_playerMarkPos SET [2, 0];
{
	if (_playerMarkPos distance _x < (_zoneSize * 2)) then {
		_zones SET [count _zones, _x];
	};
} forEach _leaders;

_exit = false;
while {!_exit} do {
	private "_zonesCount";
	_zonesCount = count _zones;
	{
		for "_i" from 0 to ((count _leaders) - 1) do {
			private "_leader";
			_leader = _leaders select _i;
			if ((_leader distance _x) < (_zoneSize * 2)) then {
				if !([_leader,_zones] call _fnc_equalArrayPosition) then {
					_zones SET [count _zones, _leader];
				};
			};
		};
	} forEach _zones;
	if (_zonesCount == (count _zones)) then {
		_exit = true
	}
};

_left = 0;
_right = 0;
_top = 0;
_bottom = 0;

{
	_posX = _x select 0;
	_posY = _x select 1;
	if (_posX < _left || _left == 0) then { _left = _posX };
	if (_posX > _right || _right == 0) then { _right = _posX };
	if (_posY < _top || _top == 0) then { _top = _posY };
	if (_posY > _bottom || _bottom == 0) then { _bottom = _posY };
} forEach _zones;

_finalPos = [_left + ((_right - _left) / 2), _top + ((_bottom - _top) / 2)];
if ((count _zones) > 1) then {
	private ["_h_max", "_h_min", "_v_max", "_v_min"];
	_h_max = _right max _left;
	_h_min = _right min _left;
	_v_max = _top max _bottom;
	_v_min = _top min _bottom;
	_returnZoneSize = ((_h_max - _h_min) max (_v_max - _v_min)) + (_zoneSize / 2);
} else {
	_returnZoneSize = _zoneSize;
};

[_finalPos, _returnZoneSize]