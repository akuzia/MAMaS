#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//разведотделение
	case "KO" : { //Командир отряда спецназа
		addMagazines("30Rnd_545x39_AKSD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("Laserbatteries",1);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD","ACE_Coyote_Pack_Flora","TU_PYA","Laserdesignator"];
		addItems ["R","N","M","MT","G","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Flashbang",2],["Laserbatteries",1],["ACE_RG60A",2],["SmokeShellGreen",1],["SmokeShellRed",1]]];
	};
	case "PM" : { //Сапер
		addMagazines("20Rnd_9x39_SP5_VSS",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_Val","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","N","B","M","GMR"];
		_unit setVariable ["ACE_weapononback","ACE_Minedetector_US"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MineMarkers",8],["HandGrenade",2]]];
	};
	case "ZKO" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AKSD",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD_TWS","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","B","N","M","MT","G","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",4],["HandGrenade",2]]];
	};
	case "P" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["Pecheneg","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","N","B","E","M","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2]]];
	};
	case "GP" : { //Боец ГП
		addMagazines("ACE_30Rnd_545x39_S_AK",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_1Rnd_HE_GP25P",4);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_GL_1P29","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","N","B","M","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_T_AK",1],["ACE_1Rnd_CS_GP25",4],["1Rnd_SmokeGreen_GP25",2],["1Rnd_SmokeRed_GP25",2],["ACE_1Rnd_HE_GP25P",12]]];
	};
	case "R" : { //Связист
		addMagazines("30Rnd_545x39_AKSD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD","ACE_P168_RD90","TU_PYA"];
		addItems ["R","N","M","GMR"];
	};
	case "S" : { //Снайпер СВ98
		addMagazines("VIL_10Rnd_762x54_SV",2);
		addMagazines("30Rnd_545x39_AKSD",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["VIL_SV_98_SD","ACE_Coyote_Pack_Flora"];
		addItems ["R","N","M","MT","B","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",2],["VIL_10Rnd_762x54_SV",4],["ACE_MON50_M",1],["ACE_POMZ_M",2],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","ACE_AKS74_UN"];
	};
	case "V" : { //Врач
		addMagazines("20Rnd_9x39_SP5_VSS",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Val","ACE_Rucksack_MOLLE_Green_Medic"];
		addItems ["R","N","M","GMR"];
	};
	case "G" : { //Боец РПГ27
		addMagazines("30Rnd_545x39_AKSD",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD","ACE_RPG27","TU_PYA"];
		addItems ["R","N","B","M","GMR"];
		_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack_Flora"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",4],["HandGrenade",2]]];
	};
	case "GO" : { //Боец РПO
		addMagazines("30Rnd_545x39_AKSD",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD","ACE_RPOM","TU_PYA"];
		addItems ["R","N","B","M","GMR"];
		_unit setVariable ["ACE_weapononback","ACE_Coyote_Pack_Flora"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",4],["HandGrenade",2]]];
	};
	case "SS" : { //Снайпер СВД
		addMagazines("10Rnd_762x54_SVD",4);
		addMagazines("30Rnd_545x39_AKSD",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_svd_p","ACE_Coyote_Pack_Flora"];
		addItems ["R","N","M","MT","B","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",2],["ACE_10Rnd_762x54_T_SVD",2],["ACE_MON50_M",1],["ACE_POMZ_M",2],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","ACE_AKS74_UN"];
	};
	case "B" : { //Боец
		addMagazines("30Rnd_545x39_AKSD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","N","M","GMR"];
		_unit setVariable ["ACE_weapononback","RPG18"];
	};
	case "B2" : { //Боец ПСО
		addMagazines("30Rnd_545x39_AKSD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["ACE_AK74M_SD_PSO","ACE_Coyote_Pack_Flora","TU_PYA"];
		addItems ["R","N","M","GMR"];
	};
	case "PP" : { // Подрывник
		addMagazines("64Rnd_9x19_SD_Bizon",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("TU_17Rnd_9x19_PYA",2);
		addWeapons ["bizon_silenced","TU_PYA","ACE_Coyote_Pack_Flora"];
		addItems ["R","N","M","B","GMR"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",1],["ACE_WireCutter",1],["MineE",1],["ACE_DM12B1_M",2],["PipeBomb",1]]];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
