_spectatorLimits = ["spectator", 1] call MAMaS_blnd_fnc_GetParam;
if (_spectatorLimits == 1) then {
	//disable spectator's map
	ace_sys_spectator_ShownSides = [playerSide];
	ace_sys_spectator_fnc_startSpectator_old = ace_sys_spectator_fnc_startSpectator;
	ace_sys_spectator_fnc_startSpectator = {
		ace_sys_spectator_ShownSides = [playerSide];
		if (isNil{_this}||count(_this)==0) then {
			_this = [player];
		};
		_this call ace_sys_spectator_fnc_startSpectator_old;
	};
	ace_sys_spectator_fnc_spectate_events_old = ace_sys_spectator_fnc_spectate_events;
	ace_sys_spectator_fnc_spectate_events = {
		if (isNil "ace_sys_spectator_camSelLast" || {!(ace_sys_spectator_camSelLast in [0,2,4])}) then {
			ace_sys_spectator_NewCameraIdx = 2;
			ace_sys_spectator_camSelLast = 2;
		};
		ace_sys_spectator_szoom = 1;
		ace_sys_spectator_sdistance = 1;
		if (ctrlVisible 55014) then {ctrlShow [55014, false];};
		if (ctrlVisible 55013) then {ctrlShow [55013, false];};
		if (ctrlVisible 55015) then {ctrlShow [55015, false];};

		switch true do {
			case ((_this select 0) in ["ToggleTags","UnitFired","ToggleMapBird","ToggleMap","MapClick","MouseZChanged"]): {false};
			case ((_this select 0) == "KeyUp"): {
				_key = (_this select 1) select 1;
				switch(_key) do {
					case 49: {
						if (ace_sys_spectator_UseNVG == 0) then {
							ace_sys_spectator_UseNVG = 1;
							ace_sys_spectator_NVGMode = 2
						} else {
							ace_sys_spectator_UseNVG = 0;
							ace_sys_spectator_NVGMode = -1;
							ace_sys_spectator_OldNVGMode = -5;
						};
					};
					case 37: {};
					case 57: {if (ace_sys_spectator_cameras select ace_sys_spectator_cameraIdx == ace_sys_spectator_cam_1stperson) then {_this call ace_sys_spectator_fnc_spectate_events_old}};
					default {_this call ace_sys_spectator_fnc_spectate_events_old};
				}
			};
			default {_this call ace_sys_spectator_fnc_spectate_events_old};
		};
	};
	ace_sys_spectator_fnc_menucamslbchange_old = ace_sys_spectator_fnc_menucamslbchange;
	ace_sys_spectator_fnc_menucamslbchange = {
		switch (_this select 1) do {
			case 1: { // separator
			};
			case 3: { // separator
			};
			case 7: { // Special for toggling NVG
				if (ace_sys_spectator_UseNVG == 0) then {
					ace_sys_spectator_UseNVG = 1;
					ace_sys_spectator_NVGMode = 2
				} else {
					ace_sys_spectator_UseNVG = 0;
					ace_sys_spectator_NVGMode = -1;
					ace_sys_spectator_OldNVGMode = -5;
				};
			};
			case 8: { // Special for toggling tags
			};
			default {
				_this call ace_sys_spectator_fnc_menucamslbchange_old;
			};
		};
	};
};