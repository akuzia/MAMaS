#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDG2",2);
		addWeapons ["AK_74","ACE_P159_RD90","Makarov"];
		addItems ["R","B","M"];
	};

	case "SL" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_P159_RD90","Makarov"];
		addItems ["R","B","M","MT"];
	};
	case "SL2" : { //Комод
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKs_74","ACE_P159_RD90","Makarov"];
		addItems ["R","B","M","MT"];
	};
	case "SL3" : { //Комод без ДВ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKs_74","Makarov"];
		addItems ["R","B","M","MT"];
	};	
	case "SL_GP" : { //Комод с ГП
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",4);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",6);
		addWeapons ["AK_74_GL","ACE_P159_RD90"];
		addItems ["B","M","MT","R"];
	};
	case "SL_SD" : { //Комод с ГП
		addMagazines("ACE_30Rnd_762x39_SD_AK47",8);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_AKMS_SD","ACE_P159_RD90"];
		addItems ["B","M","MT","R"];
	};
	case "SL_GP2" : { //Комод с ГП
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",4);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",6);
		addWeapons ["ACE_AKS74_GP25","ACE_P159_RD90"];
		addItems ["B","M","MT","F"];
	};
	case "SL_GP3" : { //Комод с ГП без ДВ
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",4);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",6);
		addWeapons ["ACE_AKS74_GP25"];
		addItems ["B","M","MT","F"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_AK_74n","rpg18","pzn_nspu"];
		addItems ["R","M","B"];
	};
	case "TL_GP" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1rnd_he_gp25",6);
		addWeapons ["pzn_ak_74n_gp","rpg18","pzn_nspu"];
		addItems ["R","M","B"];
	};
	case "TL2" : { //Старший стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["pzn_AKs_74n","rpg18","pzn_nspu"];
		addItems ["R","M","B"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["PK"];
		addItems ["R","E","M"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKs_74","ACE_ALICE_Backpack"];
		addItems ["B","E","R"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4,[100,100,100,100]]]];
	};
	case "AMG2" : { //Помошник пулеметчика
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["B","E","R"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4,[100,100,100,100]]]];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_45Rnd_545x39_b_ak",9);
		addWeapons ["RPK_74","ACE_ALICE_Backpack"];
		addItems ["R","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_45Rnd_545x39_b_ak",6,[45,45,45,45,45,45]]]];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AKs_74_u","ace_RPG7V_pgo7"];
		addItems ["R","E"];
	};
	case "AT2" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AK_74","ace_RPG7V_pgo7"];
		addItems ["R","E"];
	};
	case "AT84" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AK_74","ace_RPG7V_pgo7"];
		addItems ["R","E"];
		_unit setVariable ["ACE_weapononback","ACE_Backpack_RPG"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",8);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_Backpack_RPG"];
		addItems ["R","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4,[1,1,1,1]]]];
	};
	case "AT2" : { //1й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AKs_74_u","ace_RPG7V_pgo7"];
		addItems ["R","E"];
	};
	case "AAT2" : { //2й номер расчета РПГ
		addMagazines("30Rnd_545x39_AK",8);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKs_74","ACE_Backpack_RPG"];
		addItems ["R","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4,[1,1,1,1]]]];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["AK_74_GL"];
		addItems ["F"];
	};
	case "GLAT" : { //Стрелок с ГП РПГ22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["AK_74_GL","ACE_RPG22"];
		addItems ["F"];
	};
	case "LAT" : { // Стрелок РПГ-22
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_RPG27"];
		addItems ["F"];
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDG2",1);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AK_74"];
		addItems ["R"];
	};
	case "RF2" : { // Стрелок
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AKs_74"];
		addItems ["R"];
	};
//Отделение АГС/миномета/ПТРК когда оружие погружено в технику
	case "ACOM" : { // Командир расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AASS" : { // Номер расчета АГС/Миномета
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74"];
		addItems ["F","E"];
	};
//отделение АТ
	case "AT3" : { //1й номер расчета РПГ7ПГО
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["AK_74","ACE_RPG7V_PGO7"];
		addItems ["F","E"];
	};
	case "AAT3" : { //2й номер расчета РПГ7ПГО
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_Backpack_RPG"];
		addItems ["B","F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
//расчет миномета
	case "MOG" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_2B14HE_CSWDM",2);
		addWeapons ["AK_74","ACE_2b14Proxy","ace_arty_rangeTable_2b14_legacy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "MOAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_2B14HE_CSWDM",2);
		addWeapons ["AK_74","ACE_2b14TripodProxy"];
		addItems ["B","F","E"];
	};
	case "MOAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_2B14HE_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]]];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["AK_74","ACE_AGS30Proxy"];
		addItems ["R","B","N","M","MT","G"];
	};
	case "AGLAG" : { //Наводчик
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["AK_74","ACE_AGS30TripodProxy"];
		addItems ["B","F","E"];
	};
	case "AGLAB" : { //Номер расчета
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_AGS30_CSWDM",3);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AK_74","ACE_ALICE_Backpack"];
		addItems ["F","E"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_545x39_AK",4]]];
	};
//стрелковое отделение
	case "MR" : { //Стрелок СВД
		addMagazines("10Rnd_762x54_SVD",9);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_RDG2",2);
		addWeapons ["SVD"];
		addItems ["R"];
	};
	case "SN" : { //Снайпер
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["ACE_SVD_Bipod","ACE_APSB"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
	case "HSN" : { //Снайпер КСВК
		addMagazines("5Rnd_127x108_KSVK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		addWeapons ["KSVK","ACE_APSB"];
		addItems ["R","B","N","M"];
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
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
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10],["ACE_MON50_M",1]]];
		
	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_RDG2",4);
		addWeapons ["AK_74","ACE_Rucksack_EAST_Medic"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3]]];
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_RDG2",4);
		addWeapons ["AKs_74_u","ACE_Rucksack_MOLLE_Brown_Medic"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_Morphine",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_Epinephrine",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_LargeBandage",5,[1,1,1,1,1]],["ACE_Tourniquet",3,[1,1,1]]]];
	};
	case "MED2" : { //Санитар
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_RDG2",4);
		addWeapons ["AKs_74","ACE_Rucksack_MOLLE_Brown_Medic"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_Morphine",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_Epinephrine",10,[1,1,1,1,1,1,1,1,1,1]],["ACE_LargeBandage",5,[1,1,1,1,1]],["ACE_Tourniquet",3,[1,1,1]]]];
	};
//экипаж
	case "CRWVC" : { //Командир техники
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDG2",2);
		addWeapons ["AKS_74"];
		addItems ["R","M"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDG2",2);
		addWeapons ["AKS_74_U"];
		addItems ["R"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
		addWeapons ["AKS_74_U","Makarov"];
		addItems ["R","N","M"];
	};

        case "T_CCRW" : { //Командир танка
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDG2",1);
		addWeapons ["Makarov"];
		addItems ["R","M","B"];
	};
	case "T_CRW" : { //Экипаж
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDG2",1);
		addWeapons ["Makarov"];
		addItems ["R"];
	};

// специалисты
	case "AA": { //Оператор ПЗРК
		addMagazines("30Rnd_545x39_AK",3);
		addMagazines("HandGrenade_East",3);
		addMagazines("Strela",1);
		addWeapons ["AKS_74_U","Strela"];
		addItems ["R","F","M","E"];
	};

// ВЗВОД МАТЕРИАЛЬНОГО ОБЕСПЕЧЕНИЯ ТАНКОВОГО БАТАЛЬОНА 80-х гг.
	case "SPL_OFF" : { //Командир взвода
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDG2",2);
		addWeapons ["AK_74","ACE_P159_RD90","Makarov"];
		addItems ["R","B","M"];
	};
	case "SPL_SL" : { //Командир отделения
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AK_74","ACE_P159_RD90"];
		addItems ["R","B","N","M","MT"];
	};
	case "SPL_TL" : { //Старший водитель
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDG2",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["AKS_74"];
		addItems ["R","M","B"];
	};	
	case "SPL_СRW" : { //Водитель
		addMagazines("30Rnd_545x39_AK",4);
		addMagazines("ACE_RDG2",2);
		addWeapons ["AKS_74_U"];
		addItems ["R","M"];
	};

};