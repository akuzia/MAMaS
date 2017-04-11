_units = playableUnits;

_text = "";

_getCompatibleMagazines = {
	_weapon = (configFile >> "cfgWeapons" >> _this);
	_compatibleMagazines = [];
	{
		_compatibleMagazines = _compatibleMagazines + getArray( (if ( _x == "this" ) then { _weapon } else { _weapon >> _x }) >> "magazines");
	} forEach getArray(_weapon >> "muzzles");
	_compatibleMagazines
};


{
	_unit = _x;
	_weapons = (weapons _unit) + [(_unit getVariable "ACE_weapononback")];
	_magazines = magazines _unit;
	{
		_compatibleMagazines = _x call _getCompatibleMagazines;
		_disposable = getNumber(configFile >> "cfgWeapons" >> _x >> "ace_disposable")==1;
		_haveMagazines = false;
		{
			if (_x in _magazines) exitWith {
				_haveMagazines = true;
			};
		} forEach _compatibleMagazines;
		if ((!_haveMagazines)&&count(_compatibleMagazines)>0&&!_disposable) then {
			_text = _text + format["Warning!! Unit %1 have no magazines for weapon '%2'",_unit getVariable "MAMaS_template",_x] + "<br/>";
		};
	} forEach _weapons;

	_weapons = _weapons + ["Put","Throw"];
	{
		_magazine = _x;
		_haveWeapon = false;
		_ammo = (configFile >> "cfgMagazines" >> _magazine >> "ammo");
		{
			if ({_x==_magazine} count (_x call _getCompatibleMagazines) > 0) then {
				_haveWeapon = true;
			};
		} forEach _weapons;

		if ((!_haveWeapon)) then {
			_text = _text + format["Warning!! Unit %1 have no weapon for magazine '%2'",_unit getVariable "MAMaS_template",_magazine] + "<br/>";
		};
	} forEach _magazines;


} forEach _units;

player createDiaryRecord ["diary", ["MAMaS debug",_text]];