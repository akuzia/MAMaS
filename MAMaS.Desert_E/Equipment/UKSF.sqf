#include "macros.hpp"
_unit = _this select 0;
_type = toUpper(_this select 1);
	switch _type do {
//Разведывательный патруль Пустыня
	case "PL" : {//Patrol Leader FAC
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("5Rnd_86x70_L115A1",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","ACE_M4A1_RCO2_GL","ACE_BackPack_ACR_DDPM","ACE_MX2A"];
		addItems ["R","N","D","M","MT","G","L","K","H"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["5Rnd_86x70_L115A1",4],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","BAF_LRR_scoped",true];
	};
	case "PR" : { //Patrol Signal
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_PRC119","ACE_YardAge450"];
		addItems ["R","L","SS","N","D","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "PS" : {//Patrol Demolition
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_CLAYMORE_M",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_BackPack_ACR_DDPM"];
		addItems ["R","L","N","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
	};
	case "PM" : {//Patrol Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("Laserbatteries",1);
		addWeapons ["ACE_M4A1_ACOG_SD_F","ACE_P226","ACE_BackPack_ACR_DDPM","Laserdesignator"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",5],["ACE_Medkit",5]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
//Разведывательный патруль Лес
	case "WPL" : {//Patrol Leader FAC
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("5Rnd_86x70_L115A1",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_P226","ACE_M4A1_RCO2_GL","ACE_BackPack_ACR_DPM","ACE_MX2A"];
		addItems ["R","N","D","M","MT","G","L","K","H"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["5Rnd_86x70_L115A1",4],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","BAF_LRR_scoped",true];
	};
	case "WPR" : {//Patrol Signal
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_PRC119","ACE_YardAge450"];
		addItems ["R","L","SS","N","D","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "WPS" : {//Patrol Demolition
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_CLAYMORE_M",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_BackPack_ACR_DPM"];
		addItems ["R","L","N","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
	};
	case "WPM" : {//Patrol Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("Laserbatteries",1);
		addWeapons ["ACE_M4A1_ACOG_SD_F","ACE_P226","ACE_BackPack_ACR_DPM","Laserdesignator"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",5],["ACE_Medkit",5]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
//Городской штурмовой патруль
	case "UPL" : {//Patrol Leader
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","ACE_SOC_M4A1_GL_EOTECH","ACE_VTAC_RUSH72","ACE_MX2A"];
		addItems ["R","N","D","M","MT","G","L","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["PipeBomb",1]],true];
	};
	case "UPR" : {//Patrol Signal
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_PRC119","ACE_YardAge450"];
		addItems ["R","L","N","D","M","GM","E"];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "UPS" : {//Patrol Demolition
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_M4A1_ACOG_SD_F","ACE_P226","ACE_VTAC_RUSH72"];
		addItems ["R","L","N","M","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
	};
	case "UPM" : {//Patrol Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addWeapons ["ACE_SOC_M4A1_Eotech_F","ACE_P226","ACE_VTAC_RUSH72","Binocular_Vector"];
		addItems ["R","L","N","M","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",5],["ACE_Medkit",5]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
//Реконструкция Омана
	case "BPL" : {//Patrol Leader FAC
		addMagazines("20Rnd_556x45_Stanag",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","M16A2GL"];
		addItems ["R","M","MT","B"];
	};
	case "BPR" : {//Patrol Signal
		addMagazines("20Rnd_762x51_FNFAL",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addWeapons ["FN_FAL","ACE_L9A1","ACE_ANPRC77"];
		addItems ["R","M","SS"];
	};
	case "BPS" : {//Patrol Demolition
		addMagazines("ACE_20Rnd_762x51_B_G3",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_G3A3","ACE_L9A1","ACE_M72"];
		addItems ["R","M"];
	};
	case "BPM" : {//Patrol Medic
		addMagazines("20Rnd_762x51_FNFAL",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["FN_FAL","ACE_L9A1","ACE_Coyote_Pack_Wood"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		_unit setVariable ["ACE_weapononback","M79_EP1",true];
	};
	case "BPLNG" : {//Patrol Linquist
		addMagazines("20Rnd_556x45_Stanag",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_L9A1","ACE_Coyote_Pack_Wood"];
		addItems ["R","M"];
	};
	case "BMG" : {//Patrol MG
		addMagazines("100Rnd_762x51_M240",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["BAF_L7A2_GPMG","ACE_L9A1","ACE_BackPack_ACR_DPM"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]],true];
	};
	case "BOP" : {//Patrol Operator
		addMagazines("20Rnd_556x45_Stanag",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_L9A1","ACE_BackPack_ACR_DPM"];
		addItems ["R","M"];
		_unit setVariable ["ACE_RuckMagContents",[["20Rnd_556x45_Stanag",6]],true];
	};
	case "BOPM" : {//Patrol Operator m79
		addMagazines("20Rnd_556x45_Stanag",6);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		addWeapons ["M16A2","ACE_L9A1","ACE_BackPack_ACR_DPM"];
		addItems ["R","M"];
		_unit setVariable ["ACE_weapononback","M79_EP1",true];
	};
//Дофарские жандармы Оман 1972
	case "DL" : {//Gendarmerie leader
		addMagazines("ACE_10Rnd_762x39_B_SKS",4);
		addMagazines("ACE_10Rnd_762x39_T_SKS",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","ACE_SKS","ACE_ANPRC77"];
		addItems ["R","M","MT","B"];
	};
	case "DS" : {//Dhofar Soldier
		addMagazines("ACE_10Rnd_77x56_T_SMLE",6);
		addMagazines("HandGrenade_West",4);
		addWeapons ["LeeEnfield"];
		addItems ["R"];
	};
	case "DSAK" : {//Dhofar Soldier AK
		addMagazines("ACE_30Rnd_762x39_T_AK47",6);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_AKM"];
		addItems ["R"];
	};
	case "DSMG" : {//Dhofar Soldier MG
		addMagazines("ACE_40Rnd_762x39_T_AK47",6);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_RPK"];
		addItems ["R"];
	};
	case "DSGP" : {//Dhofar Soldier m79
		addMagazines("ACE_10Rnd_77x56_T_SMLE",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",6);
		addWeapons ["LeeEnfield","ACE_ALICE_Backpack"];
		addItems ["R"];
		_unit setVariable ["ACE_weapononback","M79_EP1",true];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",10]],true];
	};
	case "DSR" : {//Dhofar Soldier Rifle
		addMagazines("ACE_10Rnd_77x56_T_SMLE",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["LeeEnfield"];
		addItems ["R"];
	};
//Разведывательный боевой патруль 1991 год
	case "BRAVOPL" : {//Patrol Leader FAC
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("Laserbatteries",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","ACE_M16A2GL_UP","ACE_BackPack_ACR_DPM","Laserdesignator"];
		addItems ["R","N","D","M","MT","SS","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["200Rnd_556x45_M249",1],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPR" : {//Patrol Signal
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_ANM14",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","ACE_M16A2GL_UP","ACE_ANPRC77"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["200Rnd_556x45_M249",1],["ACE_CLAYMORE_M",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPS" : {//Patrol Demolition
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","ACE_M16A2GL_UP","ACE_BackPack_ACR_DPM","Binocular_Vector"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["PipeBomb",1],["ACE_CLAYMORE_M",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPM" : {//Patrol Medic
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","ACE_BackPack_ACR_DPM"];
		addItems ["R","N","M","SS"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOTL" : {//Team Leader FAC
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("Laserbatteries",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","ACE_M16A2GL_UP","ACE_BackPack_ACR_DPM","Laserdesignator"];
		addItems ["R","N","D","M","MT","SS","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["200Rnd_556x45_M249",1],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPSMG" : {//Patrol Demolition MG
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_ANM14",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","ACE_BackPack_ACR_DPM"];
		addItems ["R","N","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2],["ACE_CLAYMORE_M",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPRMG" : {//Patrol Signal MG
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_ANM14",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","ACE_BackPack_ACR_DPM"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["30Rnd_556x45_Stanag",6],["ACE_CLAYMORE_M",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "BRAVOPMMG" : {//Patrol Medic MG
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249","ACE_BackPack_ACR_DPM"];
		addItems ["R","N","M","B"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
//SAS Охрана VIP в горячей точке
	case "BGL" : {//Bodyguard leader
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","ACE_SOC_M4A1_Eotech","ACE_PRC119","ACE_MX2A"];
		addItems ["R","N","M","MT","SS","G","L","GM"];
	};
	case "BGO" : {//Bodyguard operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","M4A3_CCO_EP1","Binocular_Vector"];
		addItems ["R","N","M","G","L","GM"];
	};
	case "BGO2" : {//Bodyguard operator 2
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","ACE_SOC_M4A1_SHORTDOT_F"];
		addItems ["R","N","M","G","L","GM"];
	};
	case "BGO3" : {//Bodyguard operator 3
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("ACE_1Rnd_CS_M203",2);
		addMagazines("1Rnd_SmokeRed_M203",2);
		addWeapons ["ACE_P226","ACE_SOC_M4A1_RCO_GL_UP"];
		addItems ["R","N","M","G","L","GM"];
	};
//Крыло противодействия революции и экстремизму Антитеррор
	case "CTL" : {//Counter-terrorist team leader
		addMagazines("30Rnd_9x19_MP5",8);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","ACE_MP5A4","ACE_PRC119","ACE_KeyCuffs"];
		addItems ["R","N","M","MT","G","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_C4_M",4],["ACE_Flashbang",4]],true];
	};
	case "CTEN" : {//Counter-terrorist breacher
		addMagazines("30Rnd_9x19_MP5",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addMagazines("8Rnd_B_Beneli_74Slug",4);
		addWeapons ["ACE_P226","ACE_MP5A4","ACE_KeyCuffs","ACE_AssaultPack_BAF"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_C4_M",4],["8Rnd_B_Beneli_74Slug",6]],true];
		_unit setVariable ["ACE_weapononback","ACE_SPAS12",true];
		addItems ["R","N","M","G","GM"];
	};
	case "CTASG" : {//Counter-terrorist assault operator GL
		addMagazines("30Rnd_9x19_MP5",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_Flashbang",2);
		addMagazines("ACE_1Rnd_CS_M203",4);
		addWeapons ["ACE_P226","ACE_MP5A4","ACE_KeyCuffs","ACE_AssaultPack_BAF"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_C4_M",4],["ACE_1Rnd_CS_M203",4]],true];
		_unit setVariable ["ACE_weapononback","Mk13_EP1",true];
		addItems ["R","N","M","G","GM"];
	};
	case "CTASM" : {//Counter-terrorist team medic
		addMagazines("30Rnd_9x19_MP5",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_Flashbang",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_P226","ACE_MP5A4","ACE_KeyCuffs","ACE_AssaultPack_BAF"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]],true];
		_unit setVariable ["ACE_weapononback","ACE_WireCutter",true];
		addItems ["R","N","M","G","GM"];
	};
//контр-террористическая снайперская пара Город
	case "CTSN" : {//UKSF Sniper
		addMagazines("5Rnd_86x70_L115A1",8);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_P226","BAF_LRR_scoped_W","ACE_Rangefinder_OD"];
		addItems ["R","N","M","MT","G","K","E"];
	};
	case "CTSP" : {//UKSF Spotter
		addMagazines("ACE_20Rnd_762x51_B_G3",4);
		addMagazines("ACE_20Rnd_762x51_T_G3",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",4);
		addWeapons ["ACE_P226","ACE_G3SG1","Binocular_Vector"];
		addItems ["R","N","M","MT","G","K","SS","D","E"];
	};
//Снайперская пара в составе патруля
	case "PSN" : {//UKSF Sniper
		addMagazines("5Rnd_127x99_as50",6);
		addMagazines("ACE_5Rnd_127x99_T_TAC50",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_P226","ACE_AS50","ACE_MX2A","ACE_PRC119"];
		addItems ["R","N","M","MT","G","K","E"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x99_as50",6],["ACE_CLAYMORE_M",2]],true];
	};
	case "PSP" : {//UKSF Spotter
		addMagazines("5Rnd_86x70_L115A1",8);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("SmokeShell",2);
		addItems ["R","N","M","MT","G","K","SS","D","E"];
		addWeapons ["ACE_P226","BAF_LRR_scoped_W","ACE_Rangefinder_OD","ACE_AssaultPack_BAF"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_86x70_L115A1",6],["ACE_CLAYMORE_M",4]],true];
	};
//Undercover patrol
	case "UNCPL" : {//Patrol Leader FAC
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("ACE_40Rnd_762x39_AP_AK47",4);
		addMagazines("ACE_13Rnd_9x19_L9A1",2);
		addMagazines("SmokeShell",1);
		addMagazines("Laserbatteries",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_L9A1","Sa58V_RCO_EP1","ACE_ALICE_Backpack","Laserdesignator"];
		addItems ["R","N","D","M","MT","SS","G"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_GP25",4],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "UNCPR" : { //Patrol Signal
		addMagazines("ACE_40Rnd_762x39_AP_AK47",4);
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("1Rnd_HE_GP25",4);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["ACE_AKM_GL","ACE_P226","ACE_ANPRC77","ACE_YardAge450"];
		addItems ["R","L","N","D","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
	case "UNCPS" : {//Patrol Demolition
		addMagazines("ACE_40Rnd_762x39_AP_AK47",4);
		addMagazines("ACE_40Rnd_762x39_T_AK47",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_CLAYMORE_M",2);
		addWeapons ["ACE_RPK","ACE_P226","ACE_ALICE_Backpack"];
		addItems ["R","L","N","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
	};
	case "UNCPM" : {//Patrol Medic
		addMagazines("ACE_75Rnd_762x39_SD_AK47",6);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_AKMS_SD","ACE_P226","ACE_ALICE_Backpack"];
		addItems ["R","L","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",5],["ACE_Medkit",5]],true];
		_unit setVariable ["ACE_weapononback","ACE_M72",true];
	};
//Air Troop
	case "AIRPL" : {//Patrol Leader
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("SmokeShell",1);
		addMagazines("ACE_ANM14",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_P226","ACE_SOC_M4A1_GL_EOTECH","ACE_VTAC_RUSH72","ACE_MX2A"];
		addItems ["R","N","D","M","MT","G","L","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["PipeBomb",1]],true];
		_unit setVariable ["ACE_weapononback","ACE_ParachuteRoundPack",true];
	};
	case "AIRPR" : {//Patrol Signal
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addWeapons ["BAF_L110A1_Aim","ACE_P226","ACE_PRC119","ACE_YardAge450"];
		addItems ["R","L","N","D","M","GM","E"];
		_unit setVariable ["ACE_weapononback","ACE_ParachuteRoundPack",true];
	};
	case "AIRPS" : {//Patrol Demolition
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",1);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Flashbang",2);
		addWeapons ["ACE_M4A1_ACOG_SD_F","ACE_P226","ACE_VTAC_RUSH72"];
		addItems ["R","L","N","M","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb",2]],true];
		_unit setVariable ["ACE_weapononback","ACE_ParachuteRoundPack",true];
	};
	case "AIRPM" : {//Patrol Medic
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("ACE_15Rnd_9x19_P226",2);
		addMagazines("ACE_ANM14",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addWeapons ["ACE_SOC_M4A1_Eotech_F","ACE_P226","ACE_VTAC_RUSH72","Binocular_Vector"];
		addItems ["R","L","N","M","GM"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",5],["ACE_Medkit",5]],true];
		_unit setVariable ["ACE_weapononback","ACE_ParachuteRoundPack",true];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};