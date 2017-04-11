_target = _this select 0;
_menu = [
	["main", "test", "popup"],
	[
		["Fix position",
			{_pos = getPos CBA_ui_target;CBA_ui_target setPos [_pos select 0,_pos select 1,-0.2]},
			"", "", "", -1, ((count(crew _target) == 0)&&((vectorUp _target) select 0 == 0)), (_target isKindOf "StaticWeapon")
		],
		["Try unlock",
			{
				_target = CBA_ui_target;
				_max = switch true do {
					case (_target isKindOf "Wheeled_APC"): {1000};
					case (_target isKindOf "Tank"): {2000};
					case (_target isKindOf "Helicopter"): {500};
					case (_target isKindOf "Plane"): {500};
					case (_target isKindOf "Ship"): {500};
					case (_target isKindOf "StaticWeapon"): {100};
					case (_target isKindOf "LandVehicle"): {500};
					default {1000};
				};
				_r = random(_max);
				if (_r<2) then {
					_target lock false;
					hint "Success";
				}else{
					hintSilent "Fail";
				};
			},
			"", "", "", 22, true, (_target isKindOf "LandVehicle" || _target isKindOf "Helicopter" || _target isKindOf "Plane" || _target isKindOf "Ship" || _target isKindOf "StaticWeapon")&&(locked(_target)&&{local _target}&&{_target getVariable ["MAMaS_canUnlock",true]})
		]
	]
];

_menu