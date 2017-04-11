#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {

	case "SL": {// Squad Leader
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G"];
	};

	case "TL": {// Team Leader
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_20Rnd_762x51_B_M14",8);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["M14_EP1","ACE_Glock18","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G"];
	};

	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_M60"];
		addItems ["N","E"];
	};

	case "AG": {//Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M16A2","ACE_Rucksack_MOLLE_ACU"];
		addItems ["B","F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]],true];
	};

	case "HAT": {//AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Dragon_EP1",1);
		addWeapons ["M4A1","M47Launcher_EP1"];
		addItems ["R","F"];
	};

	case "AHAT": {// Asst. AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("HandGrenade_West",3);
		addMagazines("Dragon_EP1",1);
		addWeapons ["M16A2","ACE_Rucksack_MOLLE_ACU"];
		addItems ["B","F"];
		_unit setVariable ["ACE_RuckMagContents", [["Dragon_EP1",1]],true];
	};

	case "LAT": {// Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M16A2","ACE_M72"];
		addItems ["F"];
	};

	case "MR": {// Marksman
		addMagazines("ACE_20Rnd_762x51_B_M14",6);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_M14_ACOG"];
		addItems ["F"];
	};

	case "SN": {// Sniper
		addMagazines("5Rnd_762x51_M24",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M24_des_EP1","M9"];
		addItems ["R","N","M","K"];
	};

	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addWeapons ["M16A2", "ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","F"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};

	case "GL": {//Grenadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("1Rnd_HE_M203",8);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M16A2"];
		addItems ["F"];
		_unit setVariable ["ACE_weapononback","M79_EP1",true];
	};

	case "AA": {//Pzrk Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",3);
		addMagazines("Stinger",1);
		addWeapons ["M16A2","Stinger"];
		addItems ["R","N","B"];
	};
//M2
	case "HMG" : {//M2 Gunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_M2_CSWDM",2);
		addWeapons ["M16A2", "ACE_M2HBProxy"];
		addItems ["R","N","M","E"];
	};
	case "HMGAG" : {//M2 Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_M2_CSWDM",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2", "ACE_M3TripodProxy"];
		addItems ["F","E","B"];
	};
	case "HMGAB" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_BackPack_ACR"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents", [["ACE_M2_CSWDM",4]],true];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
