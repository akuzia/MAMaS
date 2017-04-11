#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
switch _type do {
//Platoon HQ
	case "PLCO" : {//Platoon Commander
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_ACOG","ACE_PRC119_ACU"];
		addItems ["R","N","D","M","MT","G","B"];
	};
	case "PLSG" : {//Platoon Sergeant
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_ACOG"];
		addItems ["R","N","D","M","MT","G","B"];
	};
	case "PLSIG" : {//Platoon Signaller
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_ACOG","ACE_PRC119_ACU"];
		addItems ["R","N","M","G","L"];
	};
//Platoon section
	case "LEAD" : {//Section commander Corporal
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_ACOG","ACE_PRC119_ACU"];
		addItems ["R","N","D","M","MT","G","B"];
	};
	case "GREN" : {//Section Grenadier
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_1Rnd_HE_M203",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_UGL_Holo","ACE_AssaultPack_BAF"];
		addItems ["R","N","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",6]],true];
	};
	case "LMG" : {//Section Light Machinegunner
		addMagazines("200Rnd_556x45_L110A1",2);
		addMagazines("ACE_200Rnd_556x45_T_M249",1);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L110A1_Aim","ACE_AssaultPack_BAF"];
		addItems ["R","N","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_L110A1",2]],true];
	};
	case "GPMG" : {//Section MG
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L7A2_GPMG","ACE_AssaultPack_BAF"];
		addItems ["R","N","L","M","E"];
	};
	case "TMLEAD" : {//Section leader Lance Corporal
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_ACOG","ACE_AssaultPack_BAF"];
		addItems ["R","N","D","M","L","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
	};
	case "GRENB" : {//Section Grenadier Breach
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_1Rnd_HE_M203",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_8Rnd_12Ga_Slug",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_UGL_Holo","ACE_AssaultPack_BAF"];
		addItems ["R","N","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_1Rnd_HE_M203",4],["ACE_8Rnd_12Ga_Slug",4]],true];
		_unit setVariable ["ACE_weapononback","M1014",true];
	};
	case "SS" : {//Section Sharpshooter
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("ACE_20Rnd_762x51_S_M110",4);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","ACE_M110","ACE_AssaultPack_BAF"];
		addItems ["R","N","L","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_762x51_S_M110",6]],true];
	};
	case "AT" : {//Section AT operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addWeapons ["BAF_L85A2_RIS_Holo","Javelin","ACE_Javelin_CLU"];
		addItems ["R","N","M"];
	};
//Platoon Mortar Section
	case "PLATMRT" : {//Platoon Mortarman
		addMagazines("200Rnd_556x45_L110A1",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",1);
		addMagazines("ACE_M224HE_CSWDM",4);
		addWeapons ["ACE_P226","BAF_L110A1_Aim","ACE_M224Proxy","ace_arty_rangeTable_m252_legacy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "MRTASS" : {//Mortar Asst.Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_Holo","ACE_M224TripodProxy"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_weapononback","ACE_AssaultPack_BAF",true];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]],true];
	};
	case "MOAB" : {//Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_Holo","ACE_AssaultPack_BAF"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",5]],true];
	};
//crew
	case "LPL": { //Pilot
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["ACE_P226"];
		addItems ["R","N","M","G"];
	};
	case "PL": { //Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["MP5A5","ACE_P226"];
		addItems ["R","N","M","G"];
	};
//Medevac team
	case "MED_SL": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["BAF_L85A2_RIS_Holo","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
	};
	case "MED": { //Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["BAF_L85A2_RIS_Holo","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
	};
	case "DRIV": { //Driver
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["ACE_P226","BAF_L85A2_RIS_Holo"];
		addItems ["R","N","G","M"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};