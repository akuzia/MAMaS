#include "optics_list.sqf"
#include "blnd_macros.h"
_weapons = weapons player;
_currPair = [];
for "_i" from 0 to ((count _pairs) - 1) do {
	_pair_array = _pairs select _i;
	if ((_pair_array select 0) in _weapons || {(_pair_array select 1) in _weapons}) exitWith {
		_currPair = _pair_array
	};
};

if ((count _currPair) == 2) then {
	if (player getVariable ["ACE_PB_Result", -1] == 0) exitWith {
		hint (localize "STR_MAMaS_OpticsBusy");
	};
	[5,[localize "STR_MAMaS_OpticsChanging"],true,true] spawn ace_progressbar;
	waitUntil { player getVariable ["ACE_PB_Result", -1] == 0 };
	_result = 0;
	waitUntil { _result = player getVariable ["ACE_PB_Result", 0]; _result != 0 };
	if (_result == 1) then {
		_weapons = weapons player;
		switch true do {
			case ((_currPair select 0) in _weapons): {
				_weap_1 = _currPair select 0;
				_weap_2 = _currPair select 1;
				player removeWeapon _weap_1;
				player addWeapon _weap_2;
				hint format[localize "STR_MAMaS_OpticsChangedTo", [_weap_1, "CfgWeapons"] call FNC(GetName), [_weap_2, "CfgWeapons"] call FNC(GetName)];
			};
			case ((_currPair select 1) in _weapons): {
				_weap_1 = _currPair select 1;
				_weap_2 = _currPair select 0;
				player removeWeapon _weap_1;
				player addWeapon _weap_2;
				hint format[localize "STR_MAMaS_OpticsChangedTo", [_weap_1, "CfgWeapons"] call FNC(GetName), [_weap_2, "CfgWeapons"] call FNC(GetName)];
			};
			default {hint (localize "STR_MAMaS_OpticsNotFound")};
		};
	} else {
		switch _result do {
			case 2: { hint (localize "STR_MAMaS_OpticsMoved") };
			default { hint "Optics change Failed!" };
		};
	};
} else {
	hint (localize "STR_MAMaS_OpticsNotFound");
};