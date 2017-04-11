// Remove unused bots after freeze/on mission start
#include "blnd_macros.h"

_unitsList = if (isMultiplayer) then { playableUnits } else { allUnits };
{
	if (!(isPlayer _x) && !OGVAR(_x,IsPlayer,false)) then {
		_x setPos [30000,0,100];
		deleteVehicle _x
	};
} forEach _unitsList