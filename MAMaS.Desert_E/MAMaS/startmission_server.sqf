#include "Functions\blnd_macros.h"
#include "Scripts\const.h"

[] execVM "MAMaS\Scripts\srv_hardFreeze.sqf";

_fnc_srv_counter = compile preprocessFileLineNumbers "MAMaS\Functions\fn_Srv_Counter.sqf";
_briefing_mode = ["briefing_mode", 1] call FNC(GetParam);
switch (_briefing_mode) do	{
	case 0:	{
		[0] spawn _fnc_srv_counter;
	};
	case 1:	{
		[3] spawn _fnc_srv_counter;
	};
	case 2:	{
		[5] spawn _fnc_srv_counter;
	};
	case 3:	{
		[7] spawn _fnc_srv_counter;
	};
	case 4:	{
		[10] spawn _fnc_srv_counter;
	};
	case 5:	{
		[15] spawn _fnc_srv_counter;
	};
};
// Vote menu
_sideBLUEFOR = __sideBLUEFOR;
_sideREDFOR = __sideREDFOR;

if (isMultiplayer) then {
	_oneSide = ({isPlayer(_x)&&(side(_x)==_sideBLUEFOR)} count playableUnits == 0) || ({isPlayer(_x)&&(side(_x)==_sideREDFOR)} count playableUnits == 0);
	diag_log format["%1 >> %2", readyArray select 0, readyArray select 1];
	waitUntil { sleep 1; _t0 = readyArray select 0; _t1 = readyArray select 1; (_t0 && _t1) || ((_t0 || _t1) && _oneSide) || (warbegins == 1) };
} else {
	waituntil { sleep 0.918; warbegins == 1 || {(readyArray select 0) || (readyArray select 1)}};
};
//// WAR BEGINS
warbegins = 1;
publicVariable "warbegins";

["WarBegins", "server"] call FNC(EventHandlers);

