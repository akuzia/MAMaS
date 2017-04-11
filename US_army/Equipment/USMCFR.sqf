#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
switch _type do {
	case "SQL": {
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("1Rnd_HE_M203",5);
		addMagazines("ACE_HuntIR_M203",3);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_RCO2_GL","ACE_ANPRC77","ACE_HuntIR_monitor","ACE_YardAge450"];
		addItems ["R","N","D","M","MT","GM"];
	};
	case "FTL": {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4A1_ACOG"];
		addItems ["R","B","N","G","M","GM"];
	};
	case "AR": {
		addMagazines("ACE_200Rnd_556x45_T_M249",4);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M249_EP1"];
		addItems ["R","N","G","M","GM","E"];
	};
	case "RFLM": {
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Eotech"];
		addItems ["R","N","G","M","GM"];
	};
	case "RFLMAT": {
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_AIM_GL","M136"];
		addItems ["R","N","G","M","GM","E"];
	};
	case "DEMO": {
		addMagazines("Pipebomb",2);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Eotech"];
		addItems ["R","N","G","M","GM","E"];
	};
	case "GRN": {
		addMagazines("1Rnd_HE_M203",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Eotech"];
		_unit setVariable ["ACE_weapononback", "M79_EP1"];
		addItems ["R","N","G","M","GM"];
	};
	case "DM": {
		addMagazines("ACE_20Rnd_762x51_B_M14",6);
		addMagazines("ACE_20Rnd_762x51_T_DMR",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M14_ACOG"];
		addItems ["R","N","G","M","GM"];
	};
	case "CRP": {
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_Eotech","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N","G","M","GM"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};