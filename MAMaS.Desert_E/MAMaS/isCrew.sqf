/*
	Функция контроля экипажа техники.
	Автор: Dimon UA
	Адаптировал для воздушной техники: Kuzia
	
	Параметры:
		0. _this - по умолчанию
		1. - места что блокируются 
			"driver"
			"gunner"
			"commander" - блокировка места командира - разрешено только для arrRelCommander
			"crew" - блокировка всей техники (вкл. пассажиров) разрешено только для arrRelCrew
		2. - "balcaoff"/"balcaon" -выкл/ вкл BalCa (опционально)
		3. - "east"/"west"/"guer"/"civ"/"" - проверка игрока на сторону (опционально)
	
	Примеры запуска в ините
		_=[this,"driver","gunner"] execvm "MAMaS\isCrew.sqf";
		_=[this,"driver","gunner"] execvm "MAMaS\isCrew.sqf";
		_=[this,"driver","gunner","commander"] execvm "MAMaS\isCrew.sqf";
		_=[this,"driver","gunner","commander",BalCaon] execvm "MAMaS\isCrew.sqf";
		_=[this,"driver","gunner","commander","balcaoff",weST] execvm "MAMaS\isCrew.sqf";
		_=[this,"driver","gunner","commander","balcaon","east"] execvm "MAMaS\isCrew.sqf";
		
	Добавление дополнительных классов в init.sqf
		if (!isDedicated) then {
  			relCrew = [];
  			relCommander = [];
			relPilot = [];
  		};	
*/

#define CfgAir (configFile >> "CfgVehicles" >>(typeOf _unitToCheck) >> "ace_ispilot")
#define CfgVeh (configFile >> "CfgVehicles" >>(typeOf _unitToCheck) >> "ace_iscrew")
#define allCrew typeOf _unitToCheck in arrRelCrew
#define allCommanders typeOf _unitToCheck in arrRelCommander
#define allPilots typeOf _unitToCheck in arrRelPilot
#define isCrew (_vehicle isKindOf "landvehicle" && (getNumber CfgVeh == 1 || allCrew))
#define isPilot (_vehicle isKindOf "air" && (getNumber CfgAir == 1 || allPilots))
#define CommanderVeh ["Wheeled_APC","Tracked_APC","m113_Base","M2A2_Base","TU_BTRD","TU_MTLBVM","TU_MTLBV_ZU23","BAF_FV510_D"]

fnc_CrewControl = {
	private ["_typeIn", "_place", "_veh", "_move", "_warningMsgPlace"];

	if (crewIndex) exitwith {};
	crewIndex = true;
	_typeIn = _this select 0;
	_place = "";
	_veh = (vehicle player);
	_move = false;
	_warningMsgPlace = localize "STR_UnauthorisedPlace";

	while {alive player && {player in _veh}} do { 
		call {
			if (player == commander _veh) exitwith {_place = "commander"};
			if (player == gunner _veh) exitwith {_place = "gunner"};
			if (player == driver _veh) exitwith {_place = "driver"};
			_place="cargo";
		};
		sleep 1;
		_move = (player == driver _veh && {_typeIn in [0,2,3,5]})
		|| {(player == gunner _veh && {_typeIn in [1,2,4,5]})}
		|| {(player == commander _veh && {_typeIn in [3,4,5,6]})};

		if _move then { if (_place != "cargo") then {
			player action [format ["moveTo%1", _place], _veh]
		} else {
			player action ["moveTocargo", _veh, 0]};
			_move = false;
			hint format ["%1", _warningMsgPlace];
		};
	};
	crewIndex = false;
};

fnc_inCrewFilter = {
	private ["_fromEH", "_type", "_vehicle","_commanderVehicle", "_unitToCheck", "_balca", "_balcaPower", "_side", "_warningMsgCrew", "_warningMsgSide", "_state"];

	_fromEH = _this select 0;
	_type = _this select 1;
	_vehicle = _fromEH select 0;
	_unitToCheck = _fromEH select 2;
	_balca =_this select 2;
	_side = _this select 3;
	_balcaPower = false;
	_exit = false;
	_commanderVehicle = false;

	if (isNil {_vehicle getVariable "CREW_GETININDEX"}) then {_vehicle setVariable ["CREW_GETININDEX", _type, true];};

	if !(local _unitToCheck) exitWith {};
	_warningMsgCrew = localize "STR_UnauthorisedCrew";
	_warningMsgSide = localize "STR_UnauthorisedSide";

	if (count(_side)>0 && {!(toLower(str(side(group _unitToCheck))) in _side)}) exitwith {moveOut _unitToCheck; hint format ["%1",_warningMsgSide];};

	call {
		for "_i" from 0 to (count CommanderVeh - 1) do {
			if (_vehicle isKindOf (CommanderVeh select _i)) then {
				_i = (count CommanderVeh) - 1;
				_commanderVehicle = true;
			};
		};

		if ((isCrew) || {(isPilot)} || (_commanderVehicle && {allCommanders})) exitwith {_balcaPower = (_unitToCheck == gunner _vehicle)}; 
		_exit = (_unitToCheck == driver _vehicle && {_type in [0,2,3,5]})
		|| {_unitToCheck == gunner _vehicle && {_type in [1,2,4,5]}}
		|| {_unitToCheck == commander _vehicle && {_type in [3,4,5,6]}}
		|| {_unitToCheck in (crew _vehicle) && {_type == 7}};
		
		if _exit exitwith {
			moveOut _unitToCheck;
			hint format ["%1", _warningMsgCrew];
			_exit = false;
		};
		[_type] spawn fnc_CrewControl; 
		_balcaPower = (_unitToCheck == gunner _vehicle);
	};

	if (count(_balca)>0 && {_balcaPower}) then {
		_state = c_balca_balca_enabled;
		call {
			if (isNil "c_balca_balca_enabled") exitwith {
				if ("balcaon" in _balca) then {
					c_balca_balca_enabled = true;
					hint "BalCa on";
				} else {
					c_balca_balca_enabled = false;
					hint "BalCa off";
				};
			};
			if (!isNil "c_balca_balca_enabled" && {c_balca_balca_enabled} && {"balcaoff" in _balca}) exitwith {
				c_balca_balca_enabled = false;
				hint "BalCa off";
			};
			if (!isNil "c_balca_balca_enabled" && {!c_balca_balca_enabled} && {"balcaon" in _balca}) exitwith {
				c_balca_balca_enabled = true;
				hint "BalCa on";
			};
		};

		call {
			if (!isNil "_state") exitWith {
				[_state] spawn {
					private ["_stateOn"];
					_stateOn = _this select 0;
					waitUntil {sleep 1; !alive player || player == vehicle player};
					call {
						if _stateOn exitwith {c_balca_balca_enabled = true;};
						if !_stateOn exitwith {c_balca_balca_enabled = false;};
					};
					hint "BalCa by default";
				};
			};
			if (isNil "_state") exitWith {
				[] spawn {
					waitUntil {sleep 1; !alive player || player == vehicle player};
					c_balca_balca_enabled = nil;
					hint "BalCa by default";
				};
			};			
		};
	};
};

fnc_format = {
	private ["_array"];
	_array = [];
	{
		if (!([_x,_this select 0] call KK_fnc_isEqual)) then {
			if (typeName _x != "STRING") then { _x = str _x};
			_array set [count _array, toLower (_x)];
		};
	} foreach _this;
	_array
};

KK_fnc_isEqual = {
	switch (_this select 0) do {
		case (_this select 1) : {true};
		default {false};
	};
};

private ["_object", "_closePos", "_side", "_balca"];

_object = _this select 0;
_closePos = objnull;

_this = _this call fnc_format;
_pos = [_this, {_this in ["driver","gunner","commander","crew"]}] call CBA_fnc_select;
call {
	if (count(_pos) > 2) exitwith {_closePos = 5};
	if (count(_pos) == 2) exitwith {
		call {
			if ({if(!(_x in ["gunner","commander"])) exitwith {1};} count(_pos) == 0) exitwith {_closePos = 4};
			if ({if(!(_x in ["driver","commander"])) exitwith {1};} count(_pos) == 0) exitwith {_closePos = 3};
			if ({if(!(_x in ["driver","gunner"])) exitwith {1};} count(_pos) == 0) exitwith {_closePos = 2};
		};
	};
	if (count(_pos) == 1) exitwith 
	{ 
		call {
			if ((_pos select 0) == "commander") exitwith {_closePos = 6};
			if ((_pos select 0) == "gunner") exitwith {_closePos = 1};
			if ((_pos select 0) == "driver") exitwith {_closePos = 0};
			if ((_pos select 0) == "crew") exitwith {_closePos = 7};
		};
	};
	if (count(_pos) == 0) exitwith {_closePos = 8};
};

_side = [_this, {_this in ["west","east","guer","civ"]}] call CBA_fnc_select;
_balca = [_this, {_this in ["balcaon","balcaoff"]}] call CBA_fnc_select;

_object setVariable ["BLOCKPOS", _closePos, true];
_object setVariable ["TRUESIDE", _side, true];
_object setVariable ["BalCaReq", _balca, true];

_object addEventHandler ["GetIn",{[_this,(_this select 0) getVariable "BLOCKPOS",(_this select 0) getVariable "BalCaReq",(_this select 0) getVariable "TRUESIDE"] call fnc_inCrewFilter}];
_object addEventHandler ["killed",{(_this select 0) removeAllEventHandlers "Getin";(_this select 0) removeAllEventHandlers "killed"}];