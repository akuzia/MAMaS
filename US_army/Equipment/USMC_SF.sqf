#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL" : { // 4th Squad Leader SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_SSVZ", "ACE_HK416_D10_AIM"];
		addItems ["R","B","N","D","M","MT","G","L","H"];
	};
	case "TL" : { // FT Leader SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("ACE_HuntIR_M203",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_HK416_D10_M320", "ACE_PRC119","ACE_YardAge450"];
		addItems ["R","L","B","N","D","M","H","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["ACE_SSWhite_M203",4]]];
	};
	case "AR" : { // Automatic Rifleman SF
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M249_EP1", "ACE_USPSD","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 2]]];
	};
	case "AR2" : { // Automatic Rifleman SF
		addMagazines("100Rnd_556x45_M249",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M249_m145_EP1", "ACE_USPSD","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","L","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249", 2]]];
	};
	case "SN" : { // Sniper SF M24
		addMagazines("5Rnd_762x51_M24",8);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["M40A3", "ACE_USPSD"];
		addItems ["R","L","B","N","M"];

	};
	case "HSN" : { // Sniper SF M107
		addMagazines("10Rnd_127x99_m107",4);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["m107", "ACE_USPSD"];
		addItems ["R","L","B","N","M"];
	};
	case "ASN" : { // Assist. Sniper SF
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["DMR", "ACE_Rangefinder_OD","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","L","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_HK416_D14"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3], ["HandGrenade_West", 2], ["SmokeShell", 2], ["30Rnd_556x45_Stanag", 4]]];
	};
	case "DM" : { // Designated Marksman SF
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",3);
		addMagazines("HandGrenade_West",4);
		addWeapons ["DMR", "ACE_USPSD"];
		addItems ["R","L","B","N","M"];
	};
	case "MED" : { // Medic SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_HK416_D14", "ACE_USPSD", "ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","L","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
	case "RC" : { // Recon SF
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["ACE_HK416_D14_SD", "ACE_USPSD"];
		addItems ["R","L","B","N","M"];
	};
	case "FAC": {// Forvard Aircraft Controller
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("Laserbatteries",2);
		addWeapons ["ACE_USPSD", "ACE_HK416_D10_AIM", "ACE_PRC119", "Laserdesignator"];
		addItems ["R","L","N","D","M","MT","G","H"];
	};
	case "SAB" : { // Saboteur SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["ACE_HK416_D10_AIM", "ACE_USPSD","ACE_Rucksack_MOLLE_Green"];
		addItems ["R","L","B","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
