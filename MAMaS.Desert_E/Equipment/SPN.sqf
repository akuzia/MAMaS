#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : {//Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL_1P29","ACE_P168_RD90","Makarov"];
		addItems ["R","B","N","M","MT","G"];
	};
//Штурм
	case "SL_R" : {//Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_P168_RD90","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G"];
		_unit setVariable ["ACE_weapononback","ACE_RPG22",true];
	};
	case "SL_GP" : {//Комод с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_P168_RD90","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "TL" : {//Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_1P29","ACE_RPG22"];
		addItems ["R","B","N","M","G"];
	};
	case "MG" : {//Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["R","N","E"];
	};
	case "AMG" : {//Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_CharliePack"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : {//1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["ACE_AK74M_Kobra","ACE_RPG7V_PGO7"];
		addItems ["R","N","E"];
	};
	case "AAT" : {//2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_CharliePack"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]],true];
	};
	case "GL" : {//Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL_Kobra"];
		addItems ["R","N"];
	};
	case "GLAT" : {//Стрелок с ГП РПГ22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL","ACE_RPG22"];
		addItems ["R","N"];
	};
	case "LAT" : {// Стрелок РПГ-22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_Kobra","ACE_RPG22"];
		addItems ["R","N"];
		_unit setVariable ["ACE_weapononback","ACE_RPG22",true];
	};
//Разведотделение
	case "R_SL_GP" : {//Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKS74P_GL_Kobra","ACE_P168_RD90","ACE_SSVZ"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_TL" : {//Старший разведчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_1P29","ACE_RPG27","ACE_APSB"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_SN" : {//Разведчик - снайпер
		addMagazines("ACE_Battery_Rangefinder", 2);
		addMagazines("ACE_30Rnd_762x39_SD_AK47",7);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_gr1sdsp","ACE_APSB","ACE_YardAge450"];
		addItems ["R","N"];
	};
	case "R_MG" : {//Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["R","B","N"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack",true];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "R_R" : {// Разведчик - радиотелефонист
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKS74P_GL_Kobra","ACE_P168_RD90"];
		addItems ["R","N"];
	};
	case "R_SAP" : {// Разведчик - сапер
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_Kobra","ACE_CharliePack"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]],true];
	};
	case "R_SAB" : {// Разведчик - диверсант
		addMagazines("20Rnd_9x39_SP5_VSS",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Val_Kobra","ACE_CharliePack"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",2],["PipeBomb",3]],true];
	};
	case "R_ASD" : {// Разведчик - AKMSD
		addMagazines("20Rnd_9x39_SP5_VSS",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Val_Kobra","ACE_RPG22"];
		addItems ["R","N","M"];
	};

// Снайперские пары
	case "MR" : {//Стрелок СВД
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD","ACE_SSVZ"];
		addItems ["R","N","B"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
	};
	case "MRN" : {//Стрелок СВД-NSPU
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD_NSPU_EP1","ACE_SSVZ"];
		addItems ["R","N","B"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
	};
	case "SN" : {//Снайпер
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_SSVZ","ACE_CharliePack","ACE_SniperTripod"];
		addItems ["R","N","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]],true];
	};
	case "HSN" : {//Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",6);
		addMagazines("30Rnd_545x39_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_SSVZ","ACE_CharliePack"];
		addItems ["R","N","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_AK74M",true];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]],true];
	};
	case "ASN" : {//наблюдатель-наводчик СВД
		addMagazines("20Rnd_9x39_SP5_VSS",5);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["VSS_vintorez","ACE_SSVZ","Binocular_Vector"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",5],["20Rnd_9x39_SP5_VSS",5],["ACE_MON50_M",3]],true];

	};
	case "ASNH" : {//наблюдатель-наводчик КВСК
		addMagazines("20Rnd_9x39_SP5_VSS",5);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["VSS_vintorez","ACE_APSB","Binocular_Vector"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack",true];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",5],["20Rnd_9x39_SP5_VSS",5],["ACE_MON50_M",3]],true];

	};
	case "ASNAK" : {//наблюдатель-наводчик СВД АК74
		addMagazines("ACE_30Rnd_545x39_S_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_AKS74P_GL_1P29","ACE_APSB","Binocular_Vector"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",5],["ACE_30Rnd_545x39_S_AK",5],["ACE_MON50_M",3]],true];
	};
	case "ASNAKH" : {//наблюдатель-наводчик КВСК АК74
		addMagazines("ACE_30Rnd_545x39_S_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_AKS74P_GL_1P29","ACE_APSB","Binocular_Vector"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_CharliePack",true];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",5],["ACE_30Rnd_545x39_S_AK",5],["ACE_MON50_M",3]],true];

	};

//экипаж
	case "CRWVC" : { //Командир техники
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","N","M","G"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","N"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","N","M","G"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};