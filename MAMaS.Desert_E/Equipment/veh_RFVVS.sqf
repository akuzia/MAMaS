_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "MI8" : { //
		_veh addMagazineCargo ["HandGrenade",24];
		_veh addMagazineCargo ["ACE_RDGM",20];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",40];
		_veh addWeaponCargo ["ACE_P168_RD90",4];
		_veh addWeaponCargo ["ACE_BackPack",10];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 20];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_Rope_M_60",4];
		_veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
