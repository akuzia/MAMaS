_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDG2",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
	};
	case "SHL" : { //
		_veh addMagazineCargo ["HandGrenade_East",4];
		_veh addMagazineCargo ["ACE_RDG2",2];
		_veh addMagazineCargo ["30Rnd_545x39_AK",4];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",1];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 2];
		_veh addMagazineCargo ["HandGrenade", 2];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];
	};
	case "UAZ_E" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",3];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addWeaponCargo ["ACE_RPG27",1];
	};
	case "TRUCK_R" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",4];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;

	};
	case "TRUCK" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;

	};
	case "BMP" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		_veh addmagazineCargo ["ACE_AT3P_CSWDM",2];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;

	};
	case "TRUCK2" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",20];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",2];
		_veh addmagazineCargo ["ACE_AT3P_CSWDM",3];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",4];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;

	};

	case "TRUCK3" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",15];
		_veh addMagazineCargo ["1Rnd_HE_GP25",8];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",7];
		_veh addmagazineCargo ["pipebomb",3];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG2"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST2"] call SerP_cargoCrateProcessor;

	};
	case "TRUCK84" : { //
		_veh addMagazineCargo ["HandGrenade_east",12];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",18];
		_veh addMagazineCargo ["1Rnd_HE_GP25",16];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["rpg18",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",5];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 8];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO84"] call SerP_cargoCrateProcessor;

	};
	case "TRUCKM" : { //
		_veh addMagazineCargo ["HandGrenade_east",10];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",8];
		_veh addMagazineCargo ["100rnd_762x54_pk",12];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",1];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",5];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
	};
	case "TRUCK_E" : { //
		_veh addMagazineCargo ["HandGrenade_east",10];
		_veh addMagazineCargo ["ACE_RDG2",8];
		_veh addMagazineCargo ["30Rnd_545x39_AK",8];
		_veh addMagazineCargo ["100rnd_762x54_pk",12];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_ALICE_Backpack",1];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK",10];
		_veh addMagazineCargo ["ACE_Bandage",11];
		_veh addMagazineCargo ["ACE_Morphine",11];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
	};
	case "TRUCK_MORTAR" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",36];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 15];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addWeaponCargo ["ACE_RPG27",1];
		_veh addWeaponCargo ["ACE_2b14Proxy",1];
		_veh addWeaponCargo ["ACE_2b14TripodProxy",1];
		_veh addWeaponCargo ["ace_arty_rangeTable_2b14_legacy",2];
		[_veh,"82MMHE",10] call SerP_cargoCrateProcessor;
		[_veh,"82MMWP",2] call SerP_cargoCrateProcessor;
	};
	case "MED" : { //
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",20];
		_veh addMagazineCargo ["ACE_Splint",20];
		_veh addMagazineCargo ["ACE_IV",20];
		_veh addMagazineCargo ["ACE_Plasma",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
	};
	case "TANK" : { //
		_veh addMagazineCargo ["30Rnd_545x39_AK",6];
		_veh addMagazineCargo ["8Rnd_9x18_Makarov",5];
		_veh addMagazineCargo ["ACE_RDG2",5];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];
		_veh addWeaponCargo ["AKS_74_U",1];
	};
};
