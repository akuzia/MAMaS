#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
switch _type do {
case "PSG": {// Platoon Sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("15Rnd_9x19_M9",4);
		addWeapons ["SCAR_L_STD_HOLO","M9"];
		addItems ["R","B","N","D","M","MT","G"];
	};

	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU_Medic"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		addItems ["R","N","D","M","MT","G"];
	};
	case "RATELO": {// Platoon RATELO
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_PRC119_ACU"];
		addItems ["R","N","D","M","G"];
	};
	case "FO": {// Forward observer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SCAR_L_ACOG","ACE_SSVZ","ACE_Rangefinder_OD"];
		addItems ["R","B","N","D","M","MT","G","K"];
	};
	case "SL": {// Squad Leader
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SCAR_L_ACOG","ACE_PRC119_ACU"];
		addItems ["R","B","N","D","M","MT","G"];
	};

	case "TL": {// Fireteam Leader
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["SCAR_L_STD_HOLO"];
		addItems ["R","B","N","M","G"];
	};

	case "AR": {// Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",2);
		addMagazines("ACE_200Rnd_556x45_T_M249",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1"];
		addItems ["R","N","M","G","E"];
	};
	case "GL": {//Grenadier
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SCAR_L_CQC_Eotech_EGLM","ACE_M136_CSRS"];
		addItems ["R","N","M","G"];
	};
	case "AT": {//AT Operator
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("MAAWS_HEDP",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_CarlGustav_M3"];
		addItems ["R","N","M","G","E"];
	};
	case "DM": {//Designated Marksman
		addMagazines("ACE_20Rnd_762x51_S_SCAR",7);
		addMagazines("ACE_20Rnd_762x51_T_SCAR",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_H_LNG_Sniper"];
		addItems ["R","N","M","G"];
	};
// SQD Att. MG Team
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48_DES_EP1","M9"];
		addItems ["R","N","M","G","E"];
	};
	case "MGAS": {//Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","B","M","G","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 3]],true];
	};
	case "AB": {//Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",4);
		addMagazines("HandGrenade_West",1);
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","M","G","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 3]],true];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};