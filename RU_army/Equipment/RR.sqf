#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//управление разведроты
	case "RKR" : { //Командир разведывательной роты
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA","ACE_APSB"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_T_AK",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RST" : { //Старший техник
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_T_AK",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RSR" : { //Старшина
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_T_AK",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RSI" : { //Санитараный инструктор
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
	};
	case "CCRW" : { //Старший механик-водитель
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","G","E"];
	};
	case "CRW" : { //Наводчик (пулемета на БТР, МТ-ЛБВ)
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","E"];
	};
	case "RO" : { //Разведчик - оператор СБР
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_CharliePack_FLORA","ACE_MX2A"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",4],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","RPG18"];
	};
	case "RRT1" : { //Радиотелеграфист - разведчик
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P168_RD90"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",2],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RVE" : { //Водитель - электрик
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",2],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
//управление разведвзвода
	case "RKV" : { //Командир разведывательного взвода
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_20Rnd_9x18_APSB",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA","ACE_APSB"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_T_AK",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RSI2" : { //Разведчик - санитар
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
	};
//разведотделение 1
	case "RKO1" : { //Заместитель командира взвода - командир отделения разведки
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_1Rnd_HE_GP25P",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("Laserbatteries",1);
		addWeapons ["ACE_AK74M_GL_1P29","ACE_CharliePack_FLORA","Laserdesignator"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["Laserbatteries",1],["ACE_1Rnd_HE_GP25P",10],["ACE_Morphine",1]]];
	};
	case "CCRW" : { //Старший механик-водитель
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","G","E"];
	};
	case "CRW" : { //Наводчик (пулемета на БТР, МТ-ЛБВ)
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","E"];
	};
	case "RRT2" : { //Радиотелеграфист
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P168_RD90"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",2],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "ROG" : { //Оператор – гранатометчик
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","MetisLauncher"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack_FLORA"];
		_unit setVariable ["ACE_RuckMagContents",[["AT13",1],["HandGrenade",2],["ACE_Morphine",1]]];
	};
//разведотделение 2
	case "RKO2" : { //Командир отделения разведки
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("Laserbatteries",1);
		addWeapons ["ACE_AK74M","ACE_CharliePack_FLORA","Laserdesignator"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["Laserbatteries",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","RPG18"];
	};
	case "RZKO2" : { //Старший разведчик
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_1Rnd_HE_GP25P",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_GL_1P29","ACE_CharliePack_FLORA","ACE_SSVZ"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",2],["ACE_1Rnd_HE_GP25P",10],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","RPG18"];
	};
	case "RG2" : { //Разведчик - гранатометчик
		addMagazines("ACE_30Rnd_545x39_EP_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_RPOM"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack_FLORA"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_545x39_EP_AK",4],["HandGrenade",2],["ACE_Morphine",1]]];
	};
	case "RSP2" : { // Разведчик - сапер
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_val","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2],["MineE",1],["ACE_Morphine",1]]];
	};
	case "RP2" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2],["ACE_Morphine",1]]];
	};
	case "RS2" : { //Разведчик - снайпер
		addMagazines("10Rnd_762x54_SVD",2);
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_svd_p","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_20Rnd_9x39_SP6_VSS",2],["10Rnd_762x54_SVD",2],["ACE_MON50_M",1],["ACE_POMZ_M",2],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","vil_9a91_csd"];
	};
	case "CCRW" : { //Наводчик - разведчик (пулемета на БТР, МТ-ЛБВ)
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","G","E"];
	};
	case "CRW" : { //Механик-водитель
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","E"];
	};
//разведотделение 3
	case "RKO3" : { //Командир отделения разведки
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("Laserbatteries",1);
		addWeapons ["pzn_val","ACE_CharliePack_FLORA","Laserdesignator"];
		addItems ["R","N","M","MT","G"];
		_unit setVariable ["ACE_RuckMagContents",[["Laserbatteries",1],["HandGrenade_East",2],["ACE_Morphine",1]]];
	};
	case "RZKO3" : { //Старший разведчик
		addMagazines("30Rnd_545x39_AKSD",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_SD_1P78","ACE_CharliePack_FLORA","ACE_SSVZ"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",2],["30Rnd_545x39_AKSD",2],["ACE_Morphine",1]]];
		_unit setVariable ["ACE_weapononback","RPG18"];
	};
	case "RG3" : { //Разведчик - гранатометчик
		addMagazines("30Rnd_545x39_AKSD",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_SD","ACE_RPG27"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack_FLORA"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_545x39_AKSD",4],["HandGrenade",2],["ACE_Morphine",1]]];
	};
	case "RSP3" : { // Разведчик - сапер
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_val","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2],["MineE",1],["ACE_Morphine",1]]];
	};
	case "RP3" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_pkp","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2],["ACE_Morphine",1]]];
	};
	case "RS3" : { //Разведчик - снайпер
		addMagazines("20Rnd_9x39_SP5_VSS",2);
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["vil_vsk94","ACE_CharliePack_FLORA"];
		addItems ["R","N","M","MT","B"];
		_unit setVariable ["ACE_RuckMagContents",[["20Rnd_9x39_SP5_VSS",2],["ACE_20Rnd_9x39_SP6_VSS",1],["ACE_MON50_M",1],["ACE_POMZ_M",2],["ACE_Morphine",1]]];
	};
	case "CCRW" : { //Наводчик - разведчик (пулемета на БТР, МТ-ЛБВ)
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","G","E"];
	};
	case "CRW" : { //Механик-водитель
		addMagazines("ACE_20Rnd_9x39_SP6_VSS",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["vil_9a91"];
		addItems ["R","N","M","E"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
