_veh = _this select 0;
_loadout = toUpper(_this select 1);
switch _loadout do {

	case "SCOUTMAAWS" : {//
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["100Rnd_762x51_M240",3];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",12];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",12];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",12];
		_veh addMagazineCargo ["HandGrenade_west",12];
		_veh addMagazineCargo ["Smokeshell",12];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",3];
		_veh addMagazineCargo ["ACE_Morphine",12];
		_veh addMagazineCargo ["ACE_Epinephrine",12];
		_veh addMagazineCargo ["ACE_Bandage",12];
		_veh addMagazineCargo ["ACE_Medkit",12];
		_veh addWeaponCargo ["ACE_M4_F",2];
		_veh addWeaponCargo ["ACE_MX2A",1];
		_veh addWeaponCargo ["MAAWS",1];
		_veh addMagazineCargo ["ACE_MAAWS_HE",2];
		_veh addMagazineCargo ["MAAWS_HEAT",1];
		_veh addMagazineCargo ["MAAWS_HEDP",1];
	};

	case "SCOUTJAV" : {//
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["100Rnd_762x51_M240",3];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",12];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",12];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",12];
		_veh addMagazineCargo ["HandGrenade_west",12];
		_veh addMagazineCargo ["Smokeshell",12];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",3];
		_veh addMagazineCargo ["ACE_Morphine",12];
		_veh addMagazineCargo ["ACE_Epinephrine",12];
		_veh addMagazineCargo ["ACE_Bandage",12];
		_veh addMagazineCargo ["ACE_Medkit",12];
		_veh addWeaponCargo ["ACE_M4_F",2];
		_veh addWeaponCargo ["ACE_MX2A",1];
		_veh addWeaponCargo ["Javelin",3];
		_veh addMagazineCargo ["ACE_Javelin_CLU",1];

	};

	case "TOWSCOUT" : {//
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["100Rnd_762x51_M240",3];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",12];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",12];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",12];
		_veh addMagazineCargo ["HandGrenade_west",12];
		_veh addMagazineCargo ["Smokeshell",12];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",3];
		_veh addMagazineCargo ["ACE_Morphine",12];
		_veh addMagazineCargo ["ACE_Epinephrine",12];
		_veh addMagazineCargo ["ACE_Bandage",12];
		_veh addMagazineCargo ["ACE_Medkit",12];
		_veh addWeaponCargo ["ACE_M4_F",2];
		_veh addWeaponCargo ["ACE_MX2A",1];
	};

	case "SNSCOUT" : {//
		_veh addMagazineCargo ["PipeBomb",1];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["100Rnd_762x51_M240",3];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",12];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",12];
		_veh addMagazineCargo ["1Rnd_HE_M203",12];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",12];
		_veh addMagazineCargo ["HandGrenade_west",12];
		_veh addMagazineCargo ["Smokeshell",12];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",3];
		_veh addMagazineCargo ["ACE_Morphine",12];
		_veh addMagazineCargo ["ACE_Epinephrine",12];
		_veh addMagazineCargo ["ACE_Bandage",12];
		_veh addMagazineCargo ["ACE_Medkit",12];
		_veh addWeaponCargo ["ACE_M4_F",2];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
