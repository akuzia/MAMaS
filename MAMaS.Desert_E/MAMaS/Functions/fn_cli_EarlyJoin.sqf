#include "blnd_macros.h"

private ["_return", "_MAMaS_loading"];

_return = false;

if (time < 60) then {
	_MAMaS_loading = ["loading", 1] call MAMaS_blnd_fnc_GetParam;
	switch (_MAMaS_loading) do {
		case 0: {
			if ((player != (leader (group player))) && !(serverCommandAvailable "#kick") && (120 > ({isPlayer _x} count playableUnits))) then {
				_return = true;
			};
		};
		case 2: {
			if !((player == (leader (group player))) || (serverCommandAvailable "#kick")) then {
				_return = true;
			};
		};
	};
};

_return