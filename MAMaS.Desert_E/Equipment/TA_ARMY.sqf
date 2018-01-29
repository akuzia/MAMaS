#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",4);
		addMagazines("HandGrenade_East",2);
		addMagazines("8Rnd_9x18_Makarov",5);
		addWeapons ["Makarov","ACE_AKMS","ACE_ANPRC77"];
		addItems ["R","B","N","M","MT","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("8Rnd_9x18_Makarov",5);
		addWeapons ["Makarov","ACE_AKM","ACE_ANPRC77"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("1Rnd_HE_GP25",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",4);
		addWeapons ["ACE_AKM_GL"];
		addItems ["R","B","N","M"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["N","E"];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_762x39_B_AK47",7);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_RPK"];
		addItems ["F","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addItems ["B","F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",8);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["ACE_AKM","ACE_RPG7V_PGO7"];
		addItems ["N","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]],true];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_762x39_AK47", 6);
		addMagazines("1Rnd_HE_GP25", 8);
		addMagazines("ACE_RDGM", 3);
		addMagazines("HandGrenade_East", 3);
		addWeapons ["ACE_AKM_GL"];
		addItems ["F"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		addMagazines("30Rnd_762x39_AK47", 6);
		addMagazines("1Rnd_HE_GP25", 8);
		addMagazines("ACE_RDGM", 3);
		addMagazines("HandGrenade_East", 3);
		addWeapons ["ACE_AKM_GL","ACE_RPG22"];
		addItems ["F"];
	};
	case "LAT" : { // Стрелок РПГ-27
		addMagazines("30Rnd_762x39_AK47", 8);
		addMagazines("ACE_RDGM", 2);
		addMagazines("HandGrenade_East", 2);
		addWeapons ["ACE_AKM","ACE_RPG22"];
		addItems ["F"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_762x39_AK47", 8);
		addMagazines("ACE_RDGM", 2);
		addMagazines("HandGrenade_East", 2);
		addWeapons ["ACE_AKM"];
		addItems ["F"];
	};
//разведотделение
	case "R_SL" : { //Командир отделения разведки
		addMagazines("ACE_20Rnd_762x51_B_G3",4);
		addMagazines("ACE_20Rnd_762x51_T_G3",4);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_G3A3_RSAS","ACE_RPG22","M9SD"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_TL" : { //Старший разведчик
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_G3A3_RSAS","M79_EP1","M9SD"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_MG" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK","ACE_Rucksack_EAST"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "R_R" : { // Разведчик - радиотелефонист
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_G3A3","M9SD","ACE_ANPRC77"];
		addItems ["R","N"];
	};
	case "R_SN" : { // Разведчик - снайпер
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_G3SG1","M9SD"];
		addItems ["R","N","M"];
	};
	case "R_SAP" : { // Разведчик - сапер
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_G3A3","M9SD","ACE_Rucksack_EAST","NVGoggles"];
		addItems ["N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]],true];
	};
	case "R_SD" : { // Разведчик - ВСС
		addMagazines("ACE_30Rnd_762x39_SD_AK47",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKMS_SD","ACE_RPG22"];
		addItems ["N","M"];
	};
//отделение ПТУР
	case "ATGM" : { //Старший оператор
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_Konkurs_CSWDM",1);
		addWeapons ["ACE_AKM","ACE_KonkursTripodProxy"];
		addItems ["R","N","M"];
	};
	case "ATGMA" : { //Оператор
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Konkurs_CSWDM",1);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST","Binocular","NVGoggles"];
		addItems ["N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Konkurs_CSWDM",1],["30Rnd_762x39_AK47",10]],true];
	};
	case "HAT" : { //1й номер расчета РПГ-29
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RPG29_PG29",3);
		addWeapons ["ACE_AKM","ACE_RPG29"];
		addItems ["N","M","E"];
	};
	case "AHAT" : { //2й номер расчета РПГ-29
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addItems ["N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_RPG29_PG29",2],["ACE_RPG29_TBG29",2]],true];
	};
//Отделение АГС/миномета/ПТРК когда оружие погружено в технику
	case "ACOM" : { // Командир расчета АГС/Миномета
		addMagazines("30Rnd_762x39_AK47",7);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AASS" : { // Номер расчета АГС/Миномета
		addMagazines("30Rnd_762x39_AK47",7);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKM"];
		addItems ["N","E"];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["ACE_AKM","ACE_AGS30Proxy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AGLAG" : { //Наводчик
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["ACE_AKM","ACE_AGS30TripodProxy"];
		addItems ["B","N","E"];
	};
	case "AGLAB" : { //Номер расчета
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_AGS30_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AKM","ACE_Rucksack_RD90"];
		addItems ["N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_762x39_AK47",4]],true];
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
		addItems ["R","B","N","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]],true];
	};
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_APSB"];
		addItems ["R","B","N","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]],true];
	};
	case "ASN" : { //Снайпер-наблюдатель
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_APSB","Binocular_Vector"];
		addItems ["K","N","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10],["ACE_MON50_M",1]],true];

	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AKM","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]],true]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_762x39_AK47",6);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AKM","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","F"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]],true]
	};
//экипаж
	case "CRWVC" : { //Командир техники
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","B","N","M","G"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","N"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","B","N","M","G"];
	};
//специалисты
	case "AA" : { //ПЗРК
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("Strela",1);
		addWeapons ["ACE_AKMS","Strela"];
		addItems ["R","B","N","M"];
	};
	default { hintC format["Equipment %1 not found for %2", _loadout, _unit] };
};
