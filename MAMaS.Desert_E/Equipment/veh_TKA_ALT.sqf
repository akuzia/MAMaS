_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "IFV" : {//
		_veh addMagazineCargo ["HandGrenade_East",22];
		_veh addMagazineCargo ["ACE_RDG2",22];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47",7];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",21];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_AP_AK47",7];
		_veh addMagazineCargo ["100Rnd_762x54_PK",1];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addMagazineCargo ["1Rnd_SMOKE_GP25",8];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",3];
		_veh addMagazineCargo ["ACE_10Rnd_762x54_T_SVD",3];
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["ACE_Epinephrine",5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addWeaponCargo ["ACE_RPG22",2];
		_veh addWeaponCargo ["ACE_P159_RD54",1];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};