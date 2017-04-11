#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","ACE_P159_RD90","Makarov"];
		addItems ["R","B","N","M"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_pso","ACE_P159_RD90","Makarov"];
		addItems ["R","B","N","M"];
	};
	case "SL_GP" : { //Комод с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",5);
		addWeapons ["ACE_AKS74_GP25","ACE_P159_RD90"];
		addItems ["B","N","M"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74_pso","ACE_RPG22"];
		addItems ["R","B","M"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["N","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","tu_veshm_new"];
		addItems ["B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_545x39_S_RPK",4);
		addMagazines("ACE_75Rnd_545x39_T_RPK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_RPK74n"];
		addItems ["B","E"];
		//{_unit addMagazine "ACE_75Rnd_545x39_T_RPK"} forEach [0,0,0,0,0,0,0];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AKS_74","RPG7V"];
		addItems ["F","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","tu_veshm_new"];
		addItems ["B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",5);
		addWeapons ["ACE_AKS74_GP25"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",5);
		addWeapons ["ACE_AKS74_GP25","ACE_RPG22"];
	};
	case "LAT" : { // Стрелок РПГ-22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","ACE_RPG22"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74"];
	};
//Отделение АГС/миномета/ПТРК когда оружие погружено в технику
	case "ACOM" : { // Командир расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74"];
		addItems ["R","B","N","M"];
	};
	case "AASS" : { // Номер расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74"];
		addItems ["F","E"];
	};
//отделение АТ
	case "AT" : { //1й номер расчета РПГ7ПГО
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AKS_74","ACE_RPG7V_PGO7"];
		addItems ["F","E"];
	};
	case "AAT" : { //2й номер расчета РПГ7ПГО
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74","tu_veshm_new"];
		addItems ["B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
//расчет миномета
	case "MOG" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_2B14HE_CSWDM",2);
		addWeapons ["AKS_74","ACE_2b14Proxy","ace_arty_rangeTable_2b14_legacy"];
		addItems ["R","B","N","M"];
	};
	case "MOAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_2B14HE_CSWDM",2);
		addWeapons ["AKS_74","ACE_2b14TripodProxy"];
		addItems ["B","E"];
	};
	case "MOAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_2B14HE_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74","tu_veshm_new"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]]];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["AKS_74","ACE_AGS30Proxy"];
		addItems ["R","B","N","M"];
	};
	case "AGLAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["AKS_74","ACE_AGS30TripodProxy"];
		addItems ["B","E"];
	};
	case "AGLAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_AGS30_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74","tu_veshm_new"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]]];
	};
//стрелковое отделение
	case "MR" : { //Стрелок СВД
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD","ACE_APSB"];
		addItems ["N"];
	};
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_APSB"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_weapononback","tu_veshm_new"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_APSB"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_weapononback","tu_veshm_new"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]]];
	};
	case "ASN" : { //Снайпер-наблюдатель
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_APSB","Binocular_Vector"];
		addItems ["K","N"];
		_unit setVariable ["ACE_weapononback","tu_veshm_new"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10],["ACE_MON50_M",1]]];

	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AKS_74","tu_rd54_new"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]]]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["AKS_74","tu_rd54_new"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]]]
	};
//экипаж
	case "CRWVC" : { //Командир техники
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","N","M"];
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
		addItems ["R","N","M"];
	};
// специалисты
	case "AA": { //Оператор ПЗРК
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("HandGrenade_East",3);
		addMagazines("Strela",1);
		addWeapons ["AKS_74","Strela"];
		addItems ["R","M","E"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
