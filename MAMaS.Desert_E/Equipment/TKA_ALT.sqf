#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": {// Platoon Leader
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["ACE_AKM","Colt1911"];
		addItems ["R","B","N","D","M","MT","G"];
	};

	case "PSG": {// Platoon Sergeant
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["ACE_AKM","Colt1911"];
		addItems ["R","B","N","D","M","MT","G"];
	};

	case "RATELO": {// Platoon RATELO
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKM","ACE_P159_RD54"];
		addItems ["R","B","N"];
	};

	case "FO": {// Forward observer
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["ACE_AKM","Colt1911"];
		addItems ["R","B","N","M"];
	};
//Rifle squad
	case "SSL": {// Squad Leader
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_AP_AK47",2);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["ACE_AKM","Colt1911","ACE_P159_RD54"];
		addItems["R","B","N","M","MT","G"];
	};

	case "TL": {// FT Leader
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("1Rnd_HE_GP25",4);
		addMagazines("1Rnd_SMOKE_GP25",4);
		addWeapons ["ACE_AKM_GL"];
		addItems["R","B","N","M"];
	};

	case "GL": {// Greanadier
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("1Rnd_HE_GP25",4);
		addMagazines("1Rnd_SMOKE_GP25",4);
		addWeapons ["ACE_AKM_GL"];
		addItems["R","N"];
	};

	case "AR": {// Automatic Rifleman
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_75Rnd_762x39_B_AK47",2);
		addMagazines("ACE_30Rnd_762x39_AP_AK47",2);
		addWeapons ["ACE_RPK"];
		addItems["R","N","E"];
	};

	case "AT": {//AT Operator
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_PG7V_PGO7",3);
		addWeapons ["ACE_AKMS","RPG7V"];
		addItems["R","N","E"];
	};

	case "RF": {// Rifleman
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("ACE_30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_AP_AK47",2);
		addWeapons ["ACE_AKM"];
		addItems["R","N"];
	};

	case "DM": {//Designated marksman
		addMagazines("10Rnd_762x54_SVD",4);
		addMagazines("ACE_10Rnd_762x54_T_SVD",2);
		addWeapons ["SVD"];
		addItems["R","N","E"];
	};
//weapons squad
	case "MG": {// Machinegunner
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("7Rnd_45ACP_1911",3);
		addMagazines("7Rnd_45ACP_1911",3);
		addWeapons ["PK","Colt1911"];
		addItems["R","N","E"];
	};

	case "MGAS": {//Asst. Machinegunner
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("100Rnd_762x54_PK",3);
		addWeapons ["ACE_AKM"];
		addItems["R","B","N","E"];
	};

	case "MED": {//Medic
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_30Rnd_762x39_T_AK47",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_AKMS","ACE_Rucksack_MOLLE_Green_Medic"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		addItems ["R","B","N","M"];
	};

	case "CRW": {// Crewman
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKMS"];
		addItems["R","N","M"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};