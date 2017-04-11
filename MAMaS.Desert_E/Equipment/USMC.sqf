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
		addWeapons ["M16A4_ACG","M9"];
		addItems ["R","B","N","D","M","MT","G","L"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A4_ACG","M136","M9"];
		addItems ["R","B","N","M","MT","G","L"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A4","ACE_ANPRC77"];
		addItems ["R","N"];
	};
//Squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4_ACG","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G","L"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["M16A4_ACG_GL","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","B","N","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]],true];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["ACE_M16A4_CCO_GL","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]],true];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["R","L","N","E"];
	};

	case "AAR" : { // Assistant Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A4","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 4]],true];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","M136"];
		addItems ["R","L","N"];
	};

	case "DM" : { // Marksman
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["DMR"];
		addItems ["R","L","N"];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
//snipers
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",4);
		addMagazines("SmokeShell",2);
		addMagazines("30Rnd_556x45_Stanag",2);
		addWeapons ["M40A3","ACE_SSVZ","NVGoggles", "Binocular","ACE_Rucksack_MOLLE_Green"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS","ACE_SniperTripod"];
		_unit setVariable ["ACE_weapononback","m16a4",true];
		_unit setVariable ["ACE_RuckMagContents", [["5Rnd_762x51_M24", 10]],true];
	};

	case "ASN" : { // Assist. Sniper SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M16A4_CCO_GL","ACE_YardAge450","ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","B","N","K","SS"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]],true];
	};
//MG squad
	case "MG": { // Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M240","M9"];
		addItems ["R","L","N","E","M"];
	};

	case "AG": { //Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]],true];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]],true];
	};
//weapon squad
	case "ASG" : { // ASSAULT SECTION GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_SMAW_Spotting",2);
		addMagazines("SMAW_HEAA",1);
		addMagazines("ACE_SMAW_NE",1);
		addMagazines("ACE_ANM14",2);
		addWeapons ["m16a4","SMAW"];
		addItems ["R","L","N","E","M"];
	};
	case "ASAG" : { // ASSAULT SECTION assistant GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_C4_M",2);
		addMagazines("SMAW_HEDP",1);
		addMagazines("ACE_Battery_Rangefinder",1);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_Green","ACE_YardAge450"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["SMAW_HEDP",1],["SMAW_HEAA",1]],true];
	};
//mortar
	case "MOG" : { //Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["M16A4","ACE_M224Proxy","ace_arty_rangeTable_m252_legacy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "MOAG" : { //Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_M224TripodProxy"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green",true];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]],true];
	};
	case "MOAB" : { //Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",5]],true];
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
