_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "BOAT" : {//
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["ACE_20Rnd_762x51_T_DMR",5];
		_veh addMagazineCargo ["20Rnd_762x51_DMR",5];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",5];
		_veh addMagazineCargo ["1Rnd_HE_M203",20];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addMagazineCargo ["ACE_HuntIR_M203",4];
		_veh addMagazineCargo ["ACE_Claymore_M",5];
		_veh addMagazineCargo ["IRStrobe",5];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
		_veh addWeaponCargo ["ACE_CharliePack",4];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Medkit",5];
		_veh addWeaponCargo ["M136",1];
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addWeaponCargo ["ACE_WireCutter",1];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
