#include "blnd_macros.h"

_hardFreeze = ["HardFreeze", 0] call FNC(GetParam);

if (_hardFreeze > 0) then {
	titleText [format[localize "STR_MAMaS_HardFreeze_Wait", _hardFreeze], "PLAIN DOWN", 5];
	waitUntil { sleep 1.115; GVAR(HardFreezeDisabled,false) };
	hint (localize "STR_MAMaS_HardFreeze_Disabled");
	titleText ["", "PLAIN"];
} else {
	sleep 3;
};

sleep random(3);
player enableSimulation true;