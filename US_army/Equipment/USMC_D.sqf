#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//HQ
	case "OFF": { // Officer
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_M4_C","Colt1911"];
		addItems ["R","B","N","M","G"];
	};
	case "CSGT" : { // Company sergeant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["m16a4_acg","M136","ACE_SSVZ","ACE_MX2A"];
		addItems ["R","N","M","D","G","L"];
	};
	case "ACE" : { // ACE Specialist
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("Laserbatteries",2);
		addWeapons ["m16a4_acg","ACE_PRC119_MAR","Laserdesignator"];
		addItems ["R","N","M","G","L"];
	};
	case "DRV": { // Driver
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4"];
		addItems ["R","N","L"];
	};
	case "RATELO": { // Ratelo
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M16A4_Iron","ACE_PRC119_MAR"];
		addItems ["R","N","L"];
	};
//Rifle Platoon
	case "PLA": { // Platoon Leader
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M16A4_Iron","M9","ACE_PRC119_MAR"];
		addItems ["R","B","N","M","G","L"];
	};
	case "SGT" : { // Platoon sergeant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["m16a4_acg","M136","M9"];
		addItems ["R","B","N","M","G","L"];
	};
	case "SL" : { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["M16A4_ACG_GL","ACE_PRC119_MAR"];
		addItems ["R","B","N","M","G","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10],["1Rnd_SmokeRed_M203",2],["1Rnd_SmokeGreen_M203",2],["ACE_SSWhite_M203",4],["1Rnd_Smoke_M203",2]]];
	};
	case "TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["M16A4_ACG_GL","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","B","N","M","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10],["ACE_SSWhite_M203",2],["1Rnd_Smoke_M203",2]]];
	};
	case "RTL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4_acg"];
		addItems ["R","B","N","M","L"];
	};
	case "RGL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["ACE_M16A4_CCO_GL","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","N","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10],["ACE_SSWhite_M203",2],["1Rnd_Smoke_M203",2]]];
	};
	case "RLAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","M136"];
		addItems ["R","L","N"];
	};
	case "AR" : { // Automatic Rifleman
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249"];
		addItems ["R","L","N","E"];
	};
	case "AAR": { // Greanadier - Assistant Automatic Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","B","N","L"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249",4]]];
	};
	case "LAT": { // Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","M136"];
		addItems ["R","L","N"];
	};
	case "DM" : {// Marksman
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M16A4_ACG", "M9"];
		addItems ["R","L","M","N"];
		_unit setVariable ["ACE_weapononback","DMR"];
	};
	case "MED": { // Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Medkit",4]]];
	};
//Weapons
//224mm Mortar Squad
	case "MOG224" : { //224mm Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
		addWeapons ["ACE_M4","ACE_M224Proxy","ace_arty_rangeTable_m224_legacy"];
		addItems ["R","B","N","M","G","L"];
	};
	case "MOAG224" : { //224mm Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4","ACE_M224TripodProxy"];
		addItems ["R","N","B","E","L"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_DMARPAT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
	};
	case "MOAB224" : { //224mm Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",1);
		addWeapons ["ACE_M4","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","N","E","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",5]]];
	};
//252mm Mortar Squad
	case "MOG252" : { //252mm Mortar gunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M252HE_CSWDM",3);
		addMagazines("ACE_M252IL_CSWDM",2);
		addWeapons ["ACE_M4","ACE_M252Proxy","ace_arty_rangeTable_m252_legacy"];
		addItems ["R","B","N","M","G","L"];
	};
	case "MOAG252" : { //252mm Mortar Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4","ACE_M252TripodProxy"];
		addItems ["R","N","B","E","L"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_DMARPAT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M252WP_CSWDM",3],["ACE_M252HE_CSWDM",2]]];
	};
	case "MOAB252" : { //252mm Mortar Ammo Bearer
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",1);
		addWeapons ["ACE_M4","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","N","E","L"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M252HE_CSWDM",5]]];
	};
//Assault Section
	case "ASG" : { // SMAW Gunner
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",1);
		addMagazines("ACE_SMAW_Spotting",2);
		addMagazines("SMAW_HEAA",1);
		addMagazines("ACE_SMAW_NE",1);
		addMagazines("ACE_ANM14",2);
		addWeapons ["ACE_M4_Aim","SMAW"];
		addItems ["R","L","N","E","M"];
	};
	case "ASAG" : { // Assistant Gunner
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_C4_M",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_M4_Aim","ACE_Rucksack_MOLLE_DMARPAT","ACE_Rangefinder_OD"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["SMAW_HEDP",2],["SMAW_HEAA",1],["PipeBomb",1],["ACE_C4_M",2]]];
	};
//Machinegun squad
	case "MG": { // Machinegunner
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M240G_M145","M9"];
		addItems ["R","L","N","E","M"];
	};
	case "AG": { // Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","L","N","E","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]]];
	};
	case "AB": { // Ammo bearer
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["m16a4","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",4]]];
	};
//Anti-Tank Section
	case "ATG" : { // Javelin Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Aim","Javelin","ACE_Javelin_CLU"];
		addItems ["R","L","N","E","M"];
	};
	case "ATAG" : { // Javelin Operator Assistant
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Aim","Javelin"];
		addItems ["R","L","N","E"];
	};	
//Crew
	case "CRW": { // Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["ACE_M4_C"];
		addItems ["R","N"];
	};
	case "CCRW": { // Commander Crewman
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("17Rnd_9x19_glock17",4);
		addMagazines("SmokeShellGreen",1);
		addMagazines("SmokeShellRed",1);
		addWeapons ["ACE_M4_C","glock17_EP1"];
		addItems ["R","N","M","G"];
	};
	case "LPL": { // Jet Pilot
		addMagazines("17Rnd_9x19_glock17",6);
		addMagazines("SmokeShellGreen",1);
		addMagazines("SmokeShellRed",1);
		addWeapons ["glock17_EP1"];
		addItems ["R","N","M","G"];
	};
	case "PL": { // Pilot
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("SmokeShellGreen",1);
		addMagazines("SmokeShellRed",1);
		addMagazines("17Rnd_9x19_glock17",4);
		addWeapons ["MP5A5","glock17_EP1"];
		addItems ["R","N","M","G"];
	};
//Force Recon
	case "FR_PLA" : { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["ACE_SOC_M4A1_RCO_GL","ACE_SSVZ","ACE_PRC119_MAR","ACE_MX2A"];
		addItems ["R","N","M","G","L","H"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_HuntIR_M203",3],["1Rnd_HE_M203",10],["1Rnd_SmokeRed_M203",2],["ACE_SSWhite_M203",4],["1Rnd_Smoke_M203",4]]];
	};
	case "FR_SL" : { // Squad Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_SOC_M4A1_RCO_GL","M1911_SD","ACE_PRC119_MAR"];
		addItems ["R","N","M","G","L","H"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_HuntIR_M203",3],["1Rnd_HE_M203",12],["1Rnd_SmokeRed_M203",2],["ACE_SSWhite_M203",4],["1Rnd_Smoke_M203",4]]];
	};
	case "FR_TL" : { // FT Leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x","M1911_SD"];
		addItems ["R","B","N","M","G","L"];
	};
	case "FR_ACE" : { // ACE Specialist
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("Laserbatteries",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_SOC_M4A1_RCO_GL","M1911_SD","ACE_PRC119_MAR","Laserdesignator"];
		addItems ["R","N","M","G","L"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",12],["1Rnd_SmokeRed_M203",2],["ACE_SSWhite_M203",4],["1Rnd_Smoke_M203",4],["Laserbatteries",4]]];
	};
	case "FR_RM" : { // Rifleman
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_EOT_SD"];
		addItems ["R","N","M","L"];
	};
	case "FR_DM" : {// Marksman
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("30Rnd_556x45_Stanag",4);
		addWeapons ["TU_M40A5_SD","ACE_Rangefinder_OD","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","L","M","G","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_SOC_M4A1_SD_9"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",4],["20Rnd_762x51_DMR",5],["ACE_CLAYMORE_M",3]]];
	};
	case "FR_AR" : { // Automatic Rifleman
		addMagazines("100Rnd_556x45_M249",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("7Rnd_45ACP_1911",2);
		addWeapons ["ACE_M249_PIP_ACOG","M1911_SD"];
		addItems ["R","B","L","N","M","E"];
	};
	case "FR_LAT": { // Greanadier - AT Operator
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["M4A1_HWS_GL_SD_Camo","M136"];
		addItems ["R","N","L","M"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_DMARPAT"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10],["ACE_SSWhite_M203",2],["1Rnd_Smoke_M203",2]]];
	};
	case "FR_DEMO": { // Demoman
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_AIM_SD","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","L","N","M","G","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",3],["ACE_BBETTY_M",3],["ACE_CLAYMORE_M",3]]];
	};
	case "FR_GL": { // Greanadier
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("6Rnd_HE_M203",3);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["ACE_SOC_M4A1_EOT_SD","ACE_Rucksack_MOLLE_DMARPAT"];
		addItems ["R","N","L","M"];
		_unit setVariable ["ACE_weapononback","ACE_M32"];
		_unit setVariable ["ACE_RuckMagContents",[["6Rnd_HE_M203",2],["ACE_SSWhite_M203",3],["1Rnd_Smoke_M203",3],["30Rnd_556x45_Stanag",4]]];
	};
	case "FR_CM": { // Medic
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_SOC_M4A1_SD_9","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Medkit",4]]];
	};
//Snipers	
	case "SN": { // Sniper
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["TU_M40A5","ACE_SSVZ","ACE_PRC119_MAR","ACE_Rangefinder_OD"];
		_unit setVariable ["ACE_weapononback","ACE_SOC_M4A1_GL_13"];
		_unit setVariable ["ACE_RuckMagContents", [["1Rnd_HE_M203",10],["ACE_SSWhite_M203",3],["1Rnd_Smoke_M203",3],["30Rnd_556x45_Stanag",4],["20Rnd_762x51_DMR",5],["ACE_CLAYMORE_M",3]]];
		addItems ["R","N","M","G","L","K"];
	};
	case "HSN" : { // Heavy Sniper
		addMagazines("10Rnd_127x99_m107",6);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",2);
		addMagazines("ACE_10Rnd_127x99_T_m107",2);
		addMagazines("ACE_CLAYMORE_M",2);
		addMagazines("17Rnd_9x19_glock17SD",4);
		addWeapons ["m107","glock17_SD"];
		addItems ["R","L","M","N","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_DMARPAT"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_127x99_m107",4]]];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
