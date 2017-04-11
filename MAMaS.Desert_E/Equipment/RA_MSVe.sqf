#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper(_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
	addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P168_RD90","Makarov"];
		addItems ["R","B","N","M","MT","G"];
	};
//МСВ
	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_P168_RD90","Makarov"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "SL_GP" : { //Комод с ГП
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AK74M_GL","ACE_P168_RD90"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M_1P29","ACE_RPG27"];
		addItems ["R","B","N","M","G"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["R","N","E"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_545x39_T_RPK",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_RPK74M_1P29"];
		addItems ["R","N","E"];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["ACE_AK74M","ACE_RPG7V_PGO7"];
		addItems ["R","N","E"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","B","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]],true];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL"];
		addItems ["R","N"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AK74M_GL","ACE_RPG27"];
		addItems ["R","N"];
	};
	case "LAT" : { // Стрелок РПГ-27
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_RPG27"];
		addItems ["R","N"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","N"];
	};
//разведотделение
	case "R_SL_GP" : { //Командир отделения разведки
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		addWeapons ["ACE_AKS74P_GL","ACE_P168_RD90"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_TL" : { //Старший разведчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P_1P29","ACE_RPG27","ACE_APSB"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "R_SN" : { //Разведчик - снайпер
		addMagazines("ACE_Battery_Rangefinder", 2);
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["SVD_des_EP1","ACE_APSB","ACE_YardAge450"];
		addItems ["R","N"];
	};
	case "R_MG" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Pecheneg"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]],true];
	};
	case "R_R" : { // Разведчик - радиотелефонист
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKS74P","ACE_P168_RD90"];
		addItems ["R","N"];
	};
	case "R_SAP" : { // Разведчик - сапер
		addMagazines("20Rnd_9x39_SP5_VSS" ,8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Val_Kobra","ACE_Rucksack_RD90"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]],true];
	};
	case "R_VSS" : { // Разведчик - ВСС
		addMagazines("20Rnd_9x39_SP5_VSS",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["VSS_vintorez","ACE_RPG27","NVGoggles"];
		addItems ["R","N","M"];
	};
	case "R_AN" : { // Авианаводчик
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("Laserbatteries",2);
		addWeapons ["ACE_AKS74P","ACE_P168_RD90","Laserdesignator"];
		addItems ["R","N","M","MT","D","G"];
	};
//Отделение АГС/миномета/ПТРК когда оружие погружено в технику
	case "ACOM" : { // Командир расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AASS" : { // Номер расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","N","E"];
	};
//отделение ПТУР
	case "ATGM" : { //Старший оператор
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("AT13",1);
		addWeapons ["ACE_AK74M","MetisLauncher"];
		addItems ["R","B","N","M","E"];
	};
	case "ATGMA" : { //Оператор
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("AT13",1);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["AT13",1],["30Rnd_545x39_AK",10]],true];
	};
	case "HAT" : { //1й номер расчета РПГ-29
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RPG29_PG29",3);
		addWeapons ["ACE_AK74M","ACE_RPG29"];
		addItems ["R","N","E","M"];
	};
	case "AHAT" : { //2й номер расчета РПГ-29
		addMagazines("ACE_Battery_Rangefinder", 2);
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90","ACE_YardAge450"];
		addItems ["R","N","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_RPG29_PG29",2],["ACE_RPG29_TBG29",2]],true];
	};
//расчет миномета
	case "MOG" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M"];
		addWeapons ["ace_arty_rangeTable_2b14_legacy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "MOAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M"];
		addItems ["R","N","B","E"];
	};
	case "MOAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_2B14HE_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]],true];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["ACE_AK74M","ACE_AGS30Proxy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AGLAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["ACE_AK74M","ACE_AGS30TripodProxy"];
		addItems ["R","N","B","E"];
	};
	case "AGLAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_AGS30_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["ACE_AK74M","ACE_Rucksack_RD90"];
		addItems ["R","N","B","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]],true];
	};
//стрелковое отделение
	case "MR" : { //Стрелок СВД
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Pomz_M",2);
		addWeapons ["SVD","ACE_APSB"];
		addItems ["R","N","B"];
	};
	case "SN" : { //Снайпер
		addMagazines("vil_10Rnd_762x54_SV",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["vil_SV_98","ACE_APSB"];
		addItems ["R","N","B","M","G"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]],true];
	};
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_APSB"];
		addItems ["R","N","B","M","G"];
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
		addWeapons ["vil_SVD_P21","ACE_APSB","Binocular_Vector"];
		addItems ["R","N","K"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_RD90",true];
		_unit setVariable ["ACE_RuckMagContents",[["vil_10Rnd_762x54_SV",10],["ACE_MON50_M",1]],true];

	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]],true]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",4);
		addWeapons ["ACE_AK74M","ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		addItems ["R","N"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]],true]
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
// специалисты
	case "AA": { //Оператор ПЗРК
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("HandGrenade_East",2);
		addMagazines("Igla",1);
		addWeapons ["AKS_74_U","Igla"];
		addItems ["R","N","M","E"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
