#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1","M9"];
		addItems ["R","B","N","D","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M136","M9"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1","ACE_ANPRC77"];
		addItems ["R","B","N"];
	};
	case "FO": { // Forward observer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1","ACE_SSVZ"];
		addItems ["R","B","N","M"];
	};
//Rifle squad
	case "SL": { // Squad Lider
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M4A1","ACE_ANPRC77","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G"];
	};

	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG"];
		addItems ["R","B","N","M"];
	};

	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["ACE_M16A4_CCO_GL","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1"];
		addItems ["R","N","E"];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","M136"];
		addItems ["R","N"];
	};

	case "AT": { //AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Dragon_EP1",1);
		addWeapons ["M4A1","M47Launcher_EP1"];
		addItems ["R","N"];
	};

	case "HAT" : { //Javelin Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addWeapons ["M4A1","Javelin","ACE_Javelin_CLU"];
		addItems ["R","N"];
	};
	case "AHAT" : { //Assistant Javelin Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addWeapons ["M4A1","ACE_Javelin_Direct"];
		addItems ["R","B","N"];
		_unit setVariable ["ACE_weapononback","ACE_Javelin_Direct"];
	};
	case "DM" : { //Designated marksman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_Mk12mod1"];
		addItems ["R","N"];
	};
//weapon squad
	case "MG": { // Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["m240_scoped_EP1","M9"];
		addItems ["R","N","E"];
	};

	case "AG": { //Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};

//sniper team
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",4);
		addMagazines("30Rnd_556x45_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M24_des_EP1","ACE_SSVZ","ACE_SniperTripod"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_weapononback","m16a4"];
		_unit setVariable ["ACE_RuckMagContents", [["5Rnd_762x51_M24", 10]]];
	};
	case "SN2": { // Sniper
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M110","M9"];
		addItems ["R","N","M","MT","G"];
	};

	// Assist. Sniper SF
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M4A1_AIM_GL","ACE_Rangefinder_OD","ACE_FAST_PackEDC_ACU"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]]];
	};

//mortar
	case "MOG" : { //Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["ACE_M4_AIM","ACE_M224Proxy","ace_arty_rangeTable_m224_legacy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "MOAG" : { //Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_AIM","ACE_M224TripodProxy"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
	};
	case "MOAB" : { //Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_AIM","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",10]]];
	};

//Medevac team
	case "MED_SL": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["M4A1","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};

	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["M4A1","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};

//crew
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["ACE_M4"];
		addItems ["R","N"];
	};
	case "LPL": { //Pilot
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M9"];
		addItems ["R","N","M","G"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["MP5A5","M9"];
		addItems ["R","N","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
