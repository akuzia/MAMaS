#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL": {// Squad Lider
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_Eotech", "ACE_SSVZ"];
		addItems ["R","L","B","N","D","M","MT","G"];
	};
	case "TL": {// Team Lider
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x", "M9SD", "ACE_PRC119_ACU"];
		addItems ["R","L","B","N","D","M","MT","G"];
	};
	case "AR2": {// Automatic Rifleman
		addMagazines("100Rnd_556x45_M249",3);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_m145_EP1", "M9SD","ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249", 2]]];
	};
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48_DES_EP1", "M9SD","ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]]];
	};
	case "RC": {// Operator SD
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("ACE_HuntIR_M203",3);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("SmokeShell",2);
		addMagazines("SmokeShellRed",2);
		addMagazines("IR_Strobe_Target",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_GL_SD", "M9SD", "ACE_MX2A"];
		addItems ["R","L","N","H"];
	};
	case "INF": {// Infiltrator
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_Smoke_M203",4);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("15Rnd_9x19_M9SD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_SOC_M4A1_GL_13", "M136", "M9SD"];
		addItems ["R","L","N"];
	};
	// Infiltrator
	case "INFSD": {
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_SOC_M4A1_SD_9", "M136", "M9SD"];
		addItems ["R","L","N","GM"];
	};
	case "GL": {// Grenadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("FlareRed_M203",2);
		addMagazines("15Rnd_9x19_M9SD",2);
		addWeapons ["ACE_SOC_M4A1_GL_AIMPOINT","ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N"];
		addMagazines("6Rnd_HE_M203",3);
		_unit setVariable ["ACE_weapononback","ACE_M32"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["6Rnd_HE_M203", 1], ["1Rnd_Smoke_M203", 6]]];
	};
	case "SAP" : {// Sapper SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_Aim", "M9SD", "ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3]]];
	};
	case "SAB" : {// Saboteur SF
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_SD_9", "M9SD", "ACE_FAST_PackEDC_ACU"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];
	};
	case "DM": {//Marksman
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["DMR", "M9SD","ACE_YardAge450"];
		addItems ["R","L","N","M"];
	};
	case "DMSD": { // Marksman SD
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_SOC_M4A1_SHORTDOT_SD", "M9SD","ACE_YardAge450"];
		addItems ["R","L","N","M"];
	};
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M24_des_EP1", "M9SD"];
		addItems ["R","L","N","M","G"];
	};
	case "SNNV": { // Sniper
		addMagazines("20Rnd_762x51_B_SCAR",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M110_NVG_EP1", "M9SD"];
		addItems ["R","L","N","M","G"];
	};
	case "HSN" : {// Sniper SF
		addMagazines("10Rnd_127x99_m107",5);
		addMagazines("ACE_10Rnd_127x99_T_m107",1);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("15Rnd_9x19_M9SD", 4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["m107", "M9SD"];
		addItems ["R","L","N","M","G"];
	};
	case "ASN" : {// Assist. Sniper SF
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("1Rnd_Smoke_M203",3);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_SOC_M4A1_RCO_GL", "Binocular_Vector", "ACE_PRC119_ACU"];
		addItems ["R","L","N","M","G","D","K"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["ACE_SSWhite_M203",2], ["ACE_Claymore_M",3]]];
	};
	case "FAС": {// Forvard Aircraft Controller
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("Laserbatteries",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x", "M9SD", "ACE_PRC119_ACU", "Laserdesignator"];
		addItems ["R","L","N","D","M","MT","G"];
	};
	//Medic
	case "MED": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_SOC_M4A1_Aim","ACE_Rucksack_MOLLE_ACU_Medic"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
