#include "blnd_macros.h"

waitUntil { sleep 0.231; !isNil QVAR(MARKERS_STARTED) };

_fnc_updateSelfMarker = {
	if (VAR(SELFMARKER)) then {
		"SelfMarker" setMarkerPosLocal (getPos player);
	};
};
waitUntil {sleep 0.391; [] call _fnc_updateSelfMarker; !isNil "warbegins" && {warbegins == 1}};

deleteMarkerLocal "StartPosition";
if (VAR(SELFMARKER)) then {
	deleteMarkerLocal "SelfMarker";
};

[] spawn {
	_markersList = VAR(MarkersVehList);
	for "_i" from 1 to 60 do {	for "_m" from 0 to ((count _markersList) - 1) do { ((_markersList select _m) select 0) setMarkerAlphaLocal ((60 - _i) / 60) }; sleep .5; };
	for "_i" from 0 to ((count _markersList) - 1) do {
		deleteMarkerLocal ((_markersList select _i) select 0);
	};
	VAR(MarkersVehList) = nil;
};

_markersList = VAR(MarkersList);
for "_i" from 1 to 120 do {	for "_m" from 0 to ((count _markersList) - 1) do { ((_markersList select _m) select 0) setMarkerAlphaLocal ((120 - _i) / 120) }; sleep .5; };

for "_i" from 0 to ((count _markersList) - 1) do {
	deleteMarkerLocal ((_markersList select _i) select 0);
};
VAR(MarkersList) = nil;