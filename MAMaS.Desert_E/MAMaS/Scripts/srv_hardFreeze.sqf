#include "blnd_macros.h"

_hardFreeze = ["HardFreeze", 0] call FNC(GetParam);

if (_hardFreeze > 0) then {
	_startTime = diag_tickTime;
	_finishTime = _startTime + (_hardFreeze * 60);

	while {diag_tickTime < _finishTime} do {
		sleep 1.0217;
	};
	
	VAR(HardFreezeDisabled) = true;
	publicVariable QUOTE(VAR(HardFreezeDisabled));
};