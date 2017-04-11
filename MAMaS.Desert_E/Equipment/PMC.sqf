#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "VIP": {// V.I.P.
		addMagazines("ACE_40Rnd_B_46x30_MP7",5);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["ACE_MP7","ACE_Glock18"];
		addItems ["R","N","M","G"];
	};
	case "SL": {// Squad Lider
		addMagazines("30Rnd_556x45_G36",6);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["ACE_G36K_EOTech","ACE_Glock18","ACE_PRC119_ACU"];
		addItems ["R","B","N","M","MT","G","D"];
	};
	case "TL": {// Team Leader
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("1Rnd_HE_GP25",6);
		addMagazines("1Rnd_SMOKE_GP25",2);
		addWeapons ["ACE_AK103_GL_PSO","Binocular","ACE_RPG22"];
		addItems ["R","M","G","F","N"];
	};
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["PK"];
		addItems ["R","N","M","G","E"];
	};
	case "MGM60": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["M60A4_EP1"];
		addItems ["R","N","M","G","E"];
	};
	case "AGM60": {//Asst. Machinegunner
		addMagazines("30Rnd_556x45_G36",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["ACE_G36K_iron","ACE_BackPack"];
		addItems ["R","B","F","N"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",3]],true];
	};
	case "AR": {// Automatic Rifleman
		addMagazines("100Rnd_556x45_BetaCMag",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["ACE_G36A2_Bipod"];
		addItems ["R","B","F","N","M","G"];
	};
	case "AT": {//AT Operator
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_PG7VM_PGO7",2);
		addWeapons ["ACE_AK103", "ACE_RPG7V_PGO7"];
		addItems ["R","N","M","G","E"];
	};
	case "AAT": {// Asst. AT Operator
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["ACE_AK103", "ACE_BackPack"];
		addItems ["R","F","N","E","M","G"];
		_unit setVariable ["ACE_RuckMagContents", [["ACE_PG7VM_PGO7",2],["ACE_OG7_PGO7",2]],true];
	};
	case "LAT": {// Rifleman AT
		addMagazines("30Rnd_556x45_G36",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["G36K","ACE_M72"];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
		addItems ["R","F","N","M","G"];
	};
	case "SAB": {// Saboteur
		addMagazines("30Rnd_9x19_MP5SD",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["MP5SD","ACE_BackPack"];
		addItems ["R","F","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents", [["PipeBomb",2]],true];
	};
	case "BG": {// Bobyguard
		addMagazines("30Rnd_9x19_MP5",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["MP5A5", "ACE_Glock18"];
		addItems ["R","F","N","M","G"];
	};
	case "MR": {// M14 ACOG
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["ACE_M14_ACOG","RPG18"];
		addItems ["R","F","N","M","G"];
	};
	case "SN": {// Sniper
		addMagazines("ACE_5Rnd_127x99_B_TAC50",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["ACE_TAC50", "ACE_Glock18", "ACE_Rangefinder_OD"];
		addItems ["R","F","N","M","G","B"];
	};
	case "MED": {//Medic
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK103","ACE_BackPack"];
		addItems ["R","F","N","M","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true]
	};
	case "AA": {//Pzrk Operator
		addMagazines("30Rnd_556x45_G36",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("Stinger",1);
		addWeapons ["ACE_G36K_iron","Stinger"];
		addItems ["R","F","N","M","G","E"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
