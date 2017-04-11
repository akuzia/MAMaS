#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
// если планируете на миссии HALO прыжок - рекомендуется выдать всем карты с GPS'ами
	case "OFF": {
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["SCAR_L_STD_HOLO", "M9", "ACE_PRC119_ACU"];
		addItems ["R","L","B","N","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9", 2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "M9"];
		addItems ["R","L","B","N","M","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO", "ACE_PRC119_ACU"];
		addItems ["R","L","N","M"];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_Medkit",2);
		addWeapons ["SCAR_L_CQC_Holo", "ACE_Rucksack_MOLLE_ACU_Medic"];
		addItems ["R","L","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]];
	};
// Rifle squad
	case "SL" : { //Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell", 2);
		addMagazines("handgrenade_west", 2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "ACE_PRC119_ACU"];
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
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","B","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag", 3],["HandGrenade_West", 1]]];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1"];
		addItems ["R","L","N","E"];
	};
	case "AT" : { // Operator M2
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("smokeshell",1);
		addMagazines("MAAWS_HEAT",1);
		addMagazines("MAAWS_HEDP",1);
		addWeapons ["SCAR_L_STD_HOLO", "MAAWS"];
		addItems ["R","L","E","N","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["MAAWS_HEDP", 2]]];
	};
	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag", 6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("handgrenade_west",3);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["SCAR_L_CQC_EGLM_Holo","ACE_M136_CSRS"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["1Rnd_HE_M203", 8], ["1Rnd_Smoke_M203", 6], ["ace_c4_m", 2]]];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_STD_Mk4CQT", "ACE_M136_CSRS"];
		addItems ["R","L","N"];
	};

	case "DM" : { //Designated marksman 
		addMagazines("ACE_20Rnd_762x51_S_SCAR",7);
		addMagazines("ACE_20Rnd_762x51_T_SCAR",1);
		addMagazines("SmokeShell",2);
		addMagazines("handgrenade_west",2);
		addWeapons ["SCAR_H_LNG_Sniper","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_S_SCAR", 5]]];
	};

// Weapon sqaud
	case "MG" : {// Machinegunner
		addMagazines("100Rnd_762x51_M240", 2);
		addMagazines("SmokeShell", 2);
		addMagazines("HandGrenade_West", 2);
		addWeapons ["Mk_48_DES_EP1"];
		addItems ["R","L","N","E","M","G"];
	};
	case "AG" : { // Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]]];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["SCAR_L_STD_HOLO","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};
//sniper team
	case "SN": { // Sniper
		addMagazines("20Rnd_762x51_B_SCAR",7);
		addMagazines("ace_20Rnd_762x51_T_SCAR",1);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M110","ACE_SSVZ","ACE_SniperTripod"];
		addItems ["R","L","N","M","MT","G","B"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_ACU"];
		_unit setVariable ["ACE_RuckMagContents", [["20Rnd_762x51_B_SCAR", 5]]];
	};
	case "SN2": { // Sniper
		addMagazines("10Rnd_127x99_m107",6);
		addMagazines("ACE_10Rnd_127x99_T_m107",1);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m107","ACE_SSVZ","ACE_SniperTripod"];
		addItems ["R","L","N","E","M","MT","G","B"];
	};
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["SCAR_L_CQC_EGLM_Holo","ACE_Rangefinder_OD","ACE_PRC119_ACU"];
		addItems ["R","L","N","M","K","SS","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["1rnd_smoke_m203",4]]];
	};
// AT section
	case "HAT" : { // Heavy AntiTank operator
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_STD_HOLO", "ACE_Javelin_Direct", "ACE_Javelin_CLU"];
		addItems ["R","L","N","M","G"];
	};
	case "AHAT": { // Heavy AntiTank operator Assistent
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_STD_HOLO", "ACE_BackPack_ACR_TT"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckWepContents",[["ACE_Javelin_Direct",1]]];
	};

//mortar
	case "MOG" : {//Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["SCAR_L_CQC_Holo","ACE_M224Proxy","ace_arty_rangeTable_m224_legacy"];
		addItems ["R","L","N","M","D"];
	};
	case "FO": { //Forward Observer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addMagazines("handgrenade_west",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["SCAR_L_STD_Mk4CQT","ACE_SSVZ", "ACE_Rangefinder_OD"];
		addItems ["R","L","K","N","M","G"];
	};
	case "MOAG" : {//Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_CQC_Holo","ACE_M224TripodProxy"];
		addItems ["R","L","B","N"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",3]]];
	};
	case "MOAB" : {//Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addWeapons ["SCAR_L_CQC_Holo","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",10]]];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
