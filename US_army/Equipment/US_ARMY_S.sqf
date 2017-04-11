#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1_AIM","M9","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "PSG" : { //Platoon sergant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M9"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "RATELO": { //RATELO
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM","ACE_ANPRC77"];
		addItems ["R","M","N"];
	};
	case "FO": { // Forward observer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM","ACE_SSVZ"];
		addItems ["R","B","N","M"];
	};
//Rifle squad
	case "SL": { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119_ACU","M9"];
		addItems ["R","N","M","MT","G"];
	};

	case "TL": { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG"];
		addItems ["R","N","M"];
	};

	case "GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["ACE_M4A1_AIM_GL","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("100Rnd_556x45_M249",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_EP1"];
		addItems ["R","N","E"];
	};

	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM","M136"];
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
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_ACOG","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N"];
	};
	case "RF": { // Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",3);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM"];
		addItems ["R","N"];
	};
//weapon squad
	case "MG": { // Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M240L_M145","M9"];
		addItems ["R","N","E"];
	};

	case "AG": { //Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
	};
	case "AB": { //Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M4A1_AIM","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};

//sniper team
	case "SN": { // Sniper m107
		addMagazines("10Rnd_127x99_m107",6);
		addMagazines("SmokeShell",2);
		addWeapons ["M107","ACE_FAST_PackEDC_ACU"];
		addItems ["R","N","M","MT","G"];
	};
	case "SN2": { // Sniper m110 (можно дать SD)
		addMagazines("20Rnd_762x51_B_SCAR",7);
		addMagazines("ace_20Rnd_762x51_T_SCAR",1);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M110","ACE_FAST_PackEDC_ACU","ACE_SniperTripod"];
		addItems ["R","N","B"];
	};
	case "ASN" : {
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M4A1_AIM_GL","ACE_Rangefinder_OD","ACE_PRC119_ACU"];
		addItems ["R","N","K","M","G"];
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
	case "MOG12" : { //Mortar gunner 120mm
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M4A1_AIM","ace_arty_rangeTable_tampella"];
		addItems ["R","N","M","MT"];
	};
	case "MOSL12": { // 120mm mortar Squad Leader
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M4A1_aim","ACE_PRC119_ACU","M9"];
		addItems ["R","B","N","M","MT","D"];
	};

//Medevac team
	case "MED_SL": { //Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_Medkit",2);
		addWeapons ["M4A1","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",14],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",8]]]
	};

	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_Medkit",2);
		addWeapons ["M4A1_AIM","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",14],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",8]]]
	};

//Reconnaissance (Scout) Section 
	case "S_LAT": { // Scout AT
		addMagazines("30Rnd_556x45_Stanag",7);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M4A1_Aim","M136"];
		addItems ["R"];
		_unit setVariable ["ACE_weapononback","ACE_VTAC_RUSH72_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",2],["HandGrenade_West",2],["ACE_Morphine",1],["ACE_Epinephrine",1],["ACE_Bandage",2]]];
	};
	case "S_MG": { // machinegunner-scout
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("SmokeShell",2);
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addWeapons ["ACE_M240L_M145"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_weapononback","M4A1_Aim"];
	};
	case "S_GL" : { // grenadier-scout
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M4A1_RCO2_GL","ACE_YardAge450","ACE_CharliePack_ACU"];
		addItems ["R","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["1rnd_smoke_m203",6],["1rnd_smokered_m203",3],["1rnd_smokegreen_m203",3],["ACE_1Rnd_CS_M203",4],["ACE_Morphine",1],["ACE_Epinephrine",1],["ACE_Bandage",2]]];
	};
//crew
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["M4A1_aim"];
		addItems ["R","N"];
	};
	case "CRW_L": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["M4A1_aim"];
		addItems ["R","N","M","B"];
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
