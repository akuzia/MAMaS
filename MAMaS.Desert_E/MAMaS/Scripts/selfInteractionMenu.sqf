#include "const.h"
#include "blnd_macros.h"

_isAdmin = ((serverCommandAvailable "#kick")||isServer);
_veh = vehicle player;
_role = assignedVehicleRole _veh;
_isCargo = if (count(_role)==0) then {true}else{"Cargo"==(_role select 0)};


_endMission = {
	if (!isNil{MAMaS_lastCommand}) then {
		if (MAMaS_lastCommand == "endMission") then {
			["end_admin"] call MAMaS_endMission;
			MAMaS_lastCommand = nil;
		};
	}else{
		MAMaS_lastCommand = "endMission";
		hint "Press it again in 5 seconds to end mission";
		[] spawn {
			sleep 5;
			if (!isNil{MAMaS_lastCommand}) then {hint "Time out"};
			MAMaS_lastCommand = nil;
		};
	};
};
_endBriefing = {
	if (!isNil{MAMaS_lastCommand}) then {
		if (MAMaS_lastCommand == "endBriefing") then {
			[format["All are ready (%1)",name player]] call MAMaS_msg;
			warbegins=1;
			publicVariable "warbegins";
			MAMaS_lastCommand = nil;
		};
	}else{
		MAMaS_lastCommand = "endBriefing";
		hint "Press it again in 5 seconds to end briefing";
		[] spawn {
			sleep 5;
			if (!isNil{MAMaS_lastCommand}) then {hint "Time out"};
			MAMaS_lastCommand = nil;
		};
	};
};

_voteEndBriefing = {
	private ["_side", "_index"];
	_side = side (group player);
	_index = -1;
	switch (_side) do {
		case __sideBLUEFOR: { _index = 0; };
		case __sideREDFOR: { _index = 1; };
	};
	if (_index != -1) then {
		readyArray set [_index, true];
		publicVariable "readyArray";
		[format[localize "STR_side_ready", player call FNC(GetSideString), name player]] call MAMaS_msg
	}
};
_voteContinueBriefing = {
	private ["_side", "_index"];
	_side = side (group player);
	_index = -1;
	switch (_side) do {
		case __sideBLUEFOR: { _index = 0; };
		case __sideREDFOR: { _index = 1; };
	};
	if (_index != -1) then {
		readyArray set [_index, false];
		publicVariable "readyArray";
		[format[localize "STR_side_not_ready", player call FNC(GetSideString), name player]] call MAMaS_msg
	}
};
_checkReadyArray = {
	private ["_side", "_index"];
	_side = side (group player);
	_index = -1;
	switch (_side) do {
		case __sideBLUEFOR: { _index = 0 };
		case __sideREDFOR: { _index = 1 };
	};
	if (_index != -1) then {
		readyArray select _index
	} else {
		false
	}
};

_isBriefing = if (!isNil{warbegins}) then {warbegins==0}else{false};
_menu = [
	["main", "test", "popup"],
	[
		["* End mission",
			_endMission,
			"", "", "", -10, 1, _isAdmin
		],
		["* End briefing ",
			_endBriefing,
			"", "", "", -10, 1, (_isAdmin&&_isBriefing)
		],
		["* End Hard Freeze",
			{VAR(HardFreezeDisabled) = true; publicVariable QUOTE(VAR(HardFreezeDisabled));},
			"", "", "", -10, 1, _isAdmin && {!GVAR(HardFreezeDisabled,false)}
		],
		[localize "STR_MAMaS_end_briefing",
			_voteEndBriefing,
			"", "", "", -10, 1, _isBriefing && (!isNil "readyArray") && (leader (group player) == player) && {_index = -1; switch (side (group player)) do { case __sideBLUEFOR: { _index = 0 }; case __sideREDFOR: { _index = 1 }; }; if (_index != -1) then { !(readyArray select _index) } else { false }}
		],
		[localize "STR_MAMaS_continue_briefing",
			_voteContinueBriefing,
			"", "", "", -10, 1, _isBriefing && (!isNil "readyArray") && (leader (group player) == player) && {_index = -1; switch (side (group player)) do { case __sideBLUEFOR: { _index = 0 }; case __sideREDFOR: { _index = 1 }; }; if (_index != -1) then { readyArray select _index } else { false }}
		],
		["Lock",
			{(vehicle player) lock true},
			"", "", "", -10, 1, (local _veh) && {_veh != player && !_isCargo && !locked(_veh)}
		],
		["Unlock",
			{(vehicle player) lock false},
			"", "", "", -10, 1, (local _veh) && {_veh != player && locked(_veh)}
		]
	]
];
_menu