#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// HQ
	case "OFF": {
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M9", "M16A4_ACG"];
		addItems ["R","L","B","N","D","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "M16A4_ACG"];
		addItems ["R","L","B","N","D","M","MT","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "m16a4", "ACE_ANPRC77"];
		addItems ["R","L","N"];
	};
// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addWeapons ["ACE_SSVZ", "M16A4_ACG"];
		addItems ["R","L","B","N","M","MT","G"];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("ACE_1Rnd_HE_M203",4);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A4_ACG_GL","ACE_SSVZ"];
		addItems ["R","L","B","N","M"];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1"];
		addItems ["R","L","N","E"];
	};
	case "AT" : { // Operator "Javelin"
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["Javelin", "M16A4", "M9"];
		addItems ["R","L","N"];

	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("FlareRed_M203",2);
		addWeapons ["ACE_M16A4_CCO_GL","ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["1Rnd_HE_M203", 6], ["1Rnd_Smoke_M203", 6]],true];
	};
	case "GL2": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("FlareRed_M203",2);
		addMagazines("6Rnd_HE_M203",3);
		addWeapons ["ACE_M16A4_CCO_GL", "ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_weapononback","ACE_M32",true];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["6Rnd_HE_M203", 1], ["1Rnd_Smoke_M203", 6]],true];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("HandGrenade_West",4);
		addMagazines("SmokeShell",2);
		addWeapons ["M136", "M16A4"];
		addItems ["R","L","N"];
	};
	case "DM" : {// Marksman
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["DMR", "M9"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_weapononback","M16A4_ACG",true];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_LargeBandage",2);
		addMagazines("ACE_Bandage",2);
		addMagazines("ACE_Morphine",2);
		addMagazines("ACE_Epinephrine",2);
		addMagazines("ACE_Medkit",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["m16a4", "M9", "ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
// Weapon sqaud
	case "MG" : {// Machinegunner
		addMagazines("100Rnd_762x51_M240", 2);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West", 2);
		addMagazines("SmokeShellGreen", 2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M9", "Mk_48_DES_EP1"];
		addItems ["R","L","N","E","M"];
	};
	case "AG" : { // Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]],true];
	};
//sniper team
	case "SN2": {// Sniper
		addMagazines("5Rnd_762x51_M24",4);
		addMagazines("SmokeShell",2);
		addMagazines("30Rnd_556x45_Stanag",2);
		addWeapons ["M24_des_EP1","ACE_SSVZ","NVGoggles", "Binocular","ACE_Rucksack_MOLLE_Green"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		_unit setVariable ["ACE_weapononback","m16a4",true];
		_unit setVariable ["ACE_RuckMagContents", [["5Rnd_762x51_M24", 10]],true];
	};
	case "SN": {// Sniper
		addMagazines("10Rnd_127x99_m107",5);
		addMagazines("ACE_10Rnd_127x99_T_m107",1);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["m107", "NVGoggles", "Binocular","ACE_SSVZ"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
	};

	// Assist. Sniper SF
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M4A1_AIM_GL","NVGoggles","ACE_Rangefinder_OD","ACE_Kestrel4500","ACE_FAST_PackEDC_ACU"];
		addWeapons ["ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]],true];
	};

// ASSAULT SECTION Squad
	case "ASG" : {// ASSAULT SECTION GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("MAAWS_HEAT",1);
		addMagazines("ACE_MAAWS_HE",1);
		addMagazines("ACE_ANM14",2);
		addWeapons ["m16a4","MAAWS","NVGoggles"];
		addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "ASAG" : {// ASSAULT SECTION assistant GUNNER
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_C4_M",1);
		addMagazines("ACE_MAAWS_HE",1);
		addMagazines("ACE_Battery_Rangefinder",1);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_Green","ACE_YardAge450","NVGoggles"];
		addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["MAAWS_HEDP",1],["MAAWS_HEAT",1]],true];
	};

//mortar
	case "MOG" : {//Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["M16A4","ACE_M224Proxy","Binocular","NVGoggles","ace_arty_rangeTable_m224_legacy"];
		addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "MOAG" : {//Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_M224TripodProxy","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green",true];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]],true];
	};
	case "MOAB" : {//Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",5]],true];
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
