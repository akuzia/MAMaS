#include "blnd_macros.h"

private ["_type", "_action", "_size", "_alpha"];
_type = _this select 0;
_action = _this select 1;
if (_type == 0) then {
	_type = VAR(MarkersList);
	_size = VAR(GROUPMARKER_SIZE);
	_alpha = VAR(GROUPMARKER_ALPHA);
} else {
	_type = VAR(MarkersVehList);
	_size = VAR(VEHICLEMARKER_SIZE);
	_alpha = VAR(VEHICLEMARKER_ALPHA);
};
switch (_action) do {
	case 0: {
		for "_i" from 0 to ((count _type) - 1) do {
			_markArray = _type select _i;
			_markerName = _markArray select 0;
			_markerText = _markArray select 1;
			_markerName setMarkerAlphaLocal _alpha;
			//_markerName setMarkerSizeLocal [_size,_size];
			_markerName setmarkerTextLocal _markerText;
		};
	};
	case 1: {
		for "_i" from 0 to ((count _type) - 1) do {
			_markArray = _type select _i;
			_markerName = _markArray select 0;
			_markerText = _markArray select 1;
			_markerName setMarkerAlphaLocal _alpha;
			//_markerName setMarkerSizeLocal [1,1];
			_markerName setmarkerTextLocal "";
		};
	};
	case 2: {
		for "_i" from 0 to ((count _type) - 1) do {
			_markArray = _type select _i;
			_markerName = _markArray select 0;
			_markerText = _markArray select 1;
			_markerName setMarkerAlphaLocal 0;
		};
	};
};