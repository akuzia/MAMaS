private ["_handler", "_execOn", "_parentCfg"];

_handler = _this select 0;
_execOn = _this select 1;
_parentCfg = missionConfigFile >> "MAMaS" >> "EventHandlers" >> _handler;

if (_execOn == "server") then {
	_cfg = _parentCfg >> "Server";
	for "_i" from 0 to ((count _cfg) - 1) do {
		_x = _cfg select _i;
		if (isText _x) then {
			call compile (getText _x);
		}
	}
} else {
	if (_execOn == "client") then {
		_cfg = _parentCfg >> "Client";
		for "_i" from 0 to ((count _cfg) - 1) do {
			_x = _cfg select _i;
			if (isText _x) then {
				call compile (getText _x);
			}
		}
	} else {
		for "_i" from 0 to ((count _parentCfg) - 1) do {
			_x = _parentCfg select _i;
			if (isText _x) then {
				call compile (getText _x)
			}
		}
	}
}