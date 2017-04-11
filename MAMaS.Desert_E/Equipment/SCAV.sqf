#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
switch _type do {
//Scout Cav. Squad
	case "SL_GL": {//Scout SQL w. grenade launcher
		addMagazines("1Rnd_HE_M203",3);
		addMagazines("ACE_1Rnd_HE_M203",3);
		addMagazines("1Rnd_SmokeRed_M203",2);
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4_RCO_GL","M9","ACE_ANPRC77"];
		addItems ["R","B","N","D","M","MT","GM"];
	};

	case "LAT": {// Scout L-AT Rifleman
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("HandGrenade_West",3);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_AIM","M136"];
		addItems ["R","N","G","M","GM","E"];
	};

	case "MG": {// Scout Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M240G_M145","M9"];
		addItems ["R","N","G","M",E,"GM"];
	};

//Sniper team
	case "SN": {// Sniper
		addMagazines("ACE_5Rnd_762x51_T_M24",1);
		addMagazines("ACE_C4_M",1);
		addMagazines("5Rnd_762x51_M24",7);
		addMagazines("SmokeShell",3);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["M24_des_EP1","Colt1911","ACE_Rucksack_MOLLE_ACU","ACE_SniperTripod"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_762x51_M24",12]],true];
		addItems ["R","B","N","D","M","MT","GM","E","K"];
	};
	//Sniper Assistent
	case "ASN" : {
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_C4_M",1);
		addMagazines("10Rnd_127x99_m107",4);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",3);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["ACE_Rangefinder_OD"];
		addWeapons ["m107","Colt1911","ACE_FAST_PackEDC_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 2],["HandGrenade_West", 2],["SmokeShell", 2]],true];
		addItems ["R","N","D","M","MT","GM","E","K","SS"];
	};

	case "SRATELO": {// Sniper Team RATELO
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("HandGrenade_West",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M249","ACE_ANPRC77"];
		addItems ["R","N","G","M",E,"GM"];
	};

	case "SECUR": {// Sniper Team Security
		addMagazines("1Rnd_HE_M203",3);
		addMagazines("ACE_1Rnd_HE_M203",3);
		addMagazines("1Rnd_SmokeRed_M203",2);
		addMagazines("30Rnd_556x45_Stanag",5);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_M4_RCO_GL","ACE_ANPRC77"];
		addItems ["R","N","G","M",E,"GM"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};