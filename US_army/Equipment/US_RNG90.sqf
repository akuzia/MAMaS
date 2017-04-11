#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// HQ
	case "OFF": {
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M16A2", "M9", "ACE_ANPRC77"];
		addItems ["R","L","B","N","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["M16A2", "M9"];
		addItems ["R","L","B","N","M"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2", "ACE_ANPRC77"];
		addItems ["R","L","N","M"];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_Medkit",2);
		addWeapons ["M16A2", "ACE_Rucksack_MOLLE_Brown_Medic"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]];
	};
// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell", 2);
		addWeapons ["M16A2", "ACE_ANPRC77"];
		addItems ["R","L","B","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",4],["ACE_Morphine",2],["ACE_Epinephrine",2]]];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("pipebomb",1);
		addMagazines("ACE_Claymore_M",1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_ALICE_Backpack"];
		addItems ["R","L","B","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag", 3],["HandGrenade_West", 1]]];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["R","L","N","E"];
	};
	case "AT" : { // Operator M2
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("smokeshell",1);
		addMagazines("MAAWS_HEAT",1);
		addMagazines("MAAWS_HEDP",1);
		addWeapons ["M16A2", "MAAWS"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["MAAWS_HEDP", 1],["MAAWS_HEAT", 1]]];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("handgrenade_west",3);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("ace_1Rnd_HE_M203",4);
		addWeapons ["M16A2GL","M136"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["ace_1Rnd_HE_M203", 8], ["1Rnd_Smoke_M203", 6]]];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2", "M136"];
		addItems ["R","L","N"];
	};
	case "RF": { // Rifleman 
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",4);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2","ACE_ALICE_Backpack"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag", 5], ["HandGrenade_West", 2], ["SmokeShell", 1], ["ace_c4_m", 2]]];
	};

// Weapon sqaud
	case "MG" : {// Machinegunner
		addMagazines("100Rnd_762x51_M240", 2);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West", 2);
		addWeapons ["M240"];
		addItems ["R","L","N","E","M"];
	};
	case "AG" : { // Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_ALICE_Backpack"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]]];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_ALICE_Backpack"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};
//sniper team
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",6);
		addMagazines("ace_5Rnd_762x51_t_M24",1);
		addMagazines("SmokeShell",2);
		addWeapons ["M24_des_EP1","ACE_SSVZ"];
		addItems ["R","L","N","M","MT","G","B"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents", [["5Rnd_762x51_M24", 10]]];
	};
	case "SN2": { // Sniper
		addMagazines("10Rnd_127x99_m107",6);
		addMagazines("ACE_10Rnd_127x99_T_m107",1);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m107","ACE_SSVZ"];
		addItems ["R","L","N","E","M","MT","G","B"];
	};
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ace_1Rnd_HE_M203",4);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["M16A2GL","ACE_Rangefinder_OD","ACE_ANPRC77"];
		addItems ["R","L","N","M","K","SS"];
		_unit setVariable ["ACE_RuckMagContents",[["ace_1Rnd_HE_M203",2],["FlareRed_M203",4],["1rnd_smoke_m203",4]]];
	};
// AT section
	case "HAT" : { // Heavy AntiTank operator
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2", "M47Launcher_EP1", "ACE_M47_Daysight"];
		addItems ["R","L","N","M"];
	};
	case "AHAT": { // Аssist Heavy AntiTank operator
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("handgrenade_west",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2","M47Launcher_EP1"];
		addItems ["R","L","N","B"];
	};
	case "HATAB": { // Heavy AntiTank operator Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2", "M47Launcher_EP1"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_weapononback","M47Launcher_EP1"];
	};

//mortar
	case "MOG" : {//Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["M16A2","ACE_M224Proxy","ace_arty_rangeTable_m224_legacy"];
		addItems ["R","L","N","M"];
	};
	case "FO": { //Forward Observer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",3);
		addWeapons ["M16A2", "ACE_ANPRC77"];
		addItems ["R","L","B","N","M"];
	};
	case "MOAG" : {//Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2","ACE_M224TripodProxy"];
		addItems ["R","L","B","N"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",3]]];
	};
	case "MOAB" : {//Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A2","ACE_ALICE_Backpack"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",10]]];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
